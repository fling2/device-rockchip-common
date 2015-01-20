#define LOG_TAG "kernel_log"
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/klog.h>
#include <cutils/log.h>

int main(int argc, char *argv[])
{
	char *buffer;
	char *p;
	ssize_t ret;
	int pipefd[2];
	pid_t pid;
	int klog_buf_len;
	int n;
	FILE *fp;
	char *line;
	size_t len;

	/* via the pipe, convert log block to line by line */
	if (pipe(pipefd) == -1) {
		perror("pipe");
		return EXIT_FAILURE;
	}

	pid = fork();
	if (pid == -1) {
		perror("fork");
		return EXIT_FAILURE;
	}

	if (pid > 0) {
		close(pipefd[0]);
		klog_buf_len = klogctl(KLOG_SIZE_BUFFER, 0, 0);
		if (klog_buf_len <= 0)
			klog_buf_len = (1 << 17);
		buffer = (char *)malloc(klog_buf_len + 1);
		if (!buffer) {
			perror("malloc");
			return EXIT_FAILURE;
		}
		while(1) {
			/* read the log block */
			n = klogctl(KLOG_READ, buffer, klog_buf_len);
			if (n < 0) {
				perror("klogctl");
				return EXIT_FAILURE;
			}
			buffer[n] = '\0';
			p = buffer;
			/* write to pipe */
			while ((ret = write(pipefd[1], p, n))) {
				if (ret == -1) {
					if (errno == EINTR)
						continue;
					perror("write");
					return EXIT_FAILURE;
				}
				p += ret;
				n -= ret;
			}
		}
	} else if (pid == 0) {
		close(pipefd[1]);
		fp = fdopen(pipefd[0], "r");
		line = NULL;
		/* read from the pipe, line by line */
		while ((ret = getline(&line, &len, fp)) != -1) {
			line[ret] = '\0';
			ALOGI("%s", line);
			free(line);
			line = NULL;
		}
	}
	return EXIT_SUCCESS;
}

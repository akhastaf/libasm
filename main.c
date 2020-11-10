#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <errno.h>


size_t ft_strlen(char const *str);
int		ft_strcmp(char const *s1, char const *s2);
char		*ft_strcpy(char *dst, char const *src);
ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
size_t		ft_read(int fd, void *buf, size_t nbyte);
char		*ft_strdup(char const *s1);

//define STRLEN(x)			printf("`%s` = %d (%d)\n", x, ft_strlen(x), (int)strlen(x));
# define STRCMP(a, b)		printf("`%s`:`%s` = %d (%d)\n", a, b, ft_strcmp(a, b), strcmp(a, b));
# define WRITE(s, x)		printf("^%ld (`%s`:%ld)\n", ft_write(STDOUT_FILENO, s, x), s, x);
# define READ(b, x)			r = ft_read(STDIN_FILENO, buffer, x); printf("`%s`:%ld\n", buffer, r);
//# define DUP(s)				tmp = ft_strdup(s); printf("`%s` (`%s`)\n", tmp, s); free(tmp); tmp = NULL;

int     main()
{
    int		i;
	long	r;
	char	buffer[100];
	char	*tmp;
	char	*tmp2;

	r = 0;
	i = 0;
	while (i < 100)
        buffer[i++] = 0;
	// printf("%d\n", ft_strlen("test"));
	tmp = ft_strdup("test");
	tmp2 = strdup("test");
	printf("ft_strdup %s\nor_strdup %s\n", tmp, tmp2);
	// int fd = open("test.c", O_RDWR);
	// printf("%d , erron %d\n", (int)ft_write(fd, "\nhello", 6), errno);
	// printf("%d , erron %d\n", (int)write(fd, "\nhello", 6), errno);
	// printf("%d , erron %d\n", (int)ft_write(fd, "\nhi", 3), errno);
    // printf("%d\n", ft_strlen("hi"));
    // printf("\n--read (Makefile)\n");
	// READ(buffer, 50)
	// READ(buffer, 25)
	// READ(buffer, 4)
	// READ(buffer, 26)
	// READ(buffer, 14)
	// READ(buffer, 0)
	// printf("-done\n");
	// printf("%d\n", ft_strcmp("NULL", "NULL"));
	// printf("\n--strcmp\n");
	// STRCMP("", "")
	// STRCMP("toto", "toto")
	// STRCMP("", "toto")
	// STRCMP("toto", "")
	// STRCMP("toto", "totobar")
	// char *s1;
	// char *s2;
	// s1 = "\xfe\xff";
	// s2 = "\xfe";
	char dst[10] = "te";
	char *s1 = "test";
	char *src = "hi";
	// printf("my %lu   or %lu\n", ft_strlen(s1), strlen(s1));
	//printf("my %d   or %d\n", ft_strncmp("test", "hi"), strcmp("test", "hi"));
	//printf("my %d   or %d\n", ft_strcmp("", ""), strcmp("", ""));
	// printf("-done\n");
	// printf("dst before %s\n", dst);
	// strcpy("", src);
	// printf("dst %s\n", dst);

    return 0;
}
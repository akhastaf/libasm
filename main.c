#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>


int ft_strlen(char const *str);
int		ft_strcmp(char const *s1, char const *s2);
//char		*ft_strcpy(char *dst, char const *src);
ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
size_t		ft_read(int fd, void *buf, size_t nbyte);
//char		*ft_strdup(char const *s1);

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
    //printf("%d\n", ft_strlen("hi"));
    //printf("\n--read (Makefile)\n");
	//READ(buffer, 50)
	//READ(buffer, 25)
	//READ(buffer, 4)
	//READ(buffer, 26)
	//READ(buffer, 14)
	//READ(buffer, 0)
	//printf("-done\n");
	//printf("%d\n", ft_strcmp("NULL", "NULL"));
	printf("\n--strcmp\n");
	//STRCMP("", "")
	//STRCMP("toto", "toto")
	//STRCMP("", "toto")
	//STRCMP("toto", "")
	//STRCMP("toto", "totobar")
	printf("my %d   or %d\n", ft_strcmp("TOTO", ""), strcmp("TOTO", ""));
	printf("my %d   or %d\n", ft_strcmp("", "TOTO"), strcmp("", "TOTO"));
	printf("my %d   or %d\n", ft_strcmp("", ""), strcmp("", ""));
	printf("-done\n");
    return 0;
}
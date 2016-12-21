/*************************************************************************
	> File Name: main.c
	> Author: 
	> Mail: 
	> Created Time: 2016年12月20日 星期二 10时03分29秒
 ************************************************************************/

#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main(int argc, char *argv[])
{
	if (getuid() != 0)
	{
		printf("not root start!\n");
		return 0;
	}
	return 0;
}

CC = gcc
CPPFLAGS = -Iinc
CFLAGS = -g -Wall
LDFLAGS = -lpthread

src = $(wildcard src/*.c)
obj = $(patsubst %.c,%.o,$(src))
target = app

$(target):$(obj)
	$(CC) $^ $(LDFLAGS) -o $@

%.o:%.c
	$(CC) -c $< $(CFLAGS) $(CPPFLAGS) -o $@

clean:
	rm -f $(obj)
	rm -f $(target)

# Makefile
OUTDIR=build
CC = gcc
CFLAGS = $(shell pkg-config --cflags glib-2.0 gio-2.0)
LIBS = $(shell pkg-config --libs glib-2.0 gio-2.0) -lpthread

main: main.c mongoose.c
	$(CC) -o $(OUTDIR)/main main.c mongoose.c $(CFLAGS) $(LIBS)

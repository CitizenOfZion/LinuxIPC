SRCPATH	= ./src
OBJPATH = ./obj

SRCS	= $(wildcard $(SRCPATH)/*.c)
OBJS	= ${SRCS:.c=.o}


.c.o:
	@echo "Compiling" $< "..."
	cc -c $<

all: app crobjdir putobj 

app:  $(OBJS)


putobj:
	(mv *.o $(OBJPATH);cd $(OBJPATH);pwd;sudo chmod 777 *.o)

cleanall:
	-rm -rf $(OBJPATH)/*.o

OBJDIR := obj

crobjdir:| $(OBJDIR)

$(OBJDIR):
	mkdir $(OBJDIR)


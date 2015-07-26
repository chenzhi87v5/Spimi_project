Target  = smipi
CC      = g++
CFlags  = -g #-Wall
objs    = $(patsubst %.cpp,%.o,$(wildcard *.cpp))
Include = -I./ 

$(Target) : $(objs)
	$(CC) $(CFlags) $(objs) -o $@
%.o : %.cc
	$(CC) $(CFlags) $(Include) -c $< -o $@ 

.PHONY : clean
clean:
	rm -rf $(objs)


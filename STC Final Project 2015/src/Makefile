EXEC := ligand
SRC  := $(wildcard *.c)
OBJ  := $(patsubst %.c, %.o, $(SRC))

# Options
CC      := icc
CFLAGS  := -O0
LDFLAGS := -L${MKLROOT}/lib/intel64 -lmkl_intel_lp64 -lmkl_core -lmkl_sequential -lpthread
LDLIBS  := -lm

# Rules
$(EXEC) : $(OBJ)
	$(CC) $(LDFLAGS) $(LDLIBS) -o $@ $^
%.o : %.c
	$(CC) $(CFLAGS) -c $<
$(OBJ) : lrheader.h

# Phony targets
.Phony : clobber clean neat echo
clobber: clean
	$(RM) $(EXEC)
clean: neat
	$(RM) $(OBJ)
neat:
	$(RM) *~ .*~
echo:
	@echo $(OBJ)


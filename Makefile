SRCS := bpd.c
TARGET := bpd

all: $(TARGET)

CC := gcc
CFLAGS :=
INC_FLAGS := -I/usr/include/libusb-1.0  
LD_FLAGS = -lusb-1.0 -lpthread

# Only for Raspberry Pi Host.
# CFLAGS += -DBPD_VC4_ENABLE
# INC_FLAGS += -I/opt/vc/include 
# LD_FLAGS += -lbcm_host -L/opt/vc/lib

$(TARGET): $(SRCS)
	$(CC) $< $(CFLAGS) $(INC_FLAGS) $(LD_FLAGS) -o $@

clean:
	$(RM) -f $(TARGET)

.PHONY: all clean

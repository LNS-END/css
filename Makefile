# Compilers for different architectures
AARCH64_CC=aarch64-linux-gnu-gcc
X86_64_CC=x86_64-linux-gnu-gcc  # x86-64 크로스 컴파일러 지정

# Executables
EXECUTABLES=hello-world-aarch64 hello-world-x86

.PHONY: all clean

all: $(EXECUTABLES)

# aarch64 build
hello-world-aarch64: hello-world.c
	$(AARCH64_CC) -o hello-world-aarch64 hello-world.c

# x86-64 build
hello-world-x86: hello-world.c
	$(X86_64_CC) -o hello-world-x86 hello-world.c

clean:
	rm -f $(EXECUTABLES)

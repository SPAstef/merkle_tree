import sys
import random

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: random_bigint.py <number of bits> <number of ints>", file=sys.stderr)
        exit(1)
    bits = int(sys.argv[1])
    ints = int(sys.argv[2])

    for i in range(ints):
        x = random.getrandbits(bits)
        print(f"0x{x:0{bits >> 2}X}")

#!/bin/bash

# script for Ubuntu or WSL2 on Windows
set -e 
set -o pipefail

PROJECT_LOCATION='/mnt/c/Users/ldade/Documents/ProjetsRecherche/Embedded/ATmega328p-assembler-c'
AVRDUD_CONF_LOCATION='/mnt/c/Users/ldade/.platformio/packages/tool-avrdude/avrdude.conf'

cd "$PROJECT_LOCATION"

# build c
echo "Building main.cpp"

# CPU frequency and optimisation needed
# optional / to investigate : -DARDUINO_AVR_PRO -DPLATFORMIO=50101 
avr-gcc -mmcu=atmega328p -O2 -Wall -DF_CPU=16000000L -Iinclude -Isrc -c src/main.cpp -o .pio/build/pro16MHzatmega328/src/main.cpp.o # -v

# build assembly
echo "Building main.asm"
# optional : -DPLATFORMIO=50101 -DARDUINO_AVR_PRO 
# to investigate : -ffunction-sections -fdata-sections -flto 
avr-gcc -x assembler -mmcu=atmega328p -O2 -Wall -DF_CPU=16000000L -Iinclude -Isrc -c src/main.asm -o .pio/build/pro16MHzatmega328/src/main.asm.o # -v

# link
echo "Linking firmware.elf"

avr-gcc -mmcu=atmega328p -o .pio/build/pro16MHzatmega328/firmware.elf .pio/build/pro16MHzatmega328/src/main.cpp.o .pio/build/pro16MHzatmega328/src/main.asm.o # -v

###### DEBUG ######

# nm 
avr-gcc-nm .pio/build/pro16MHzatmega328/src/main.asm.o > res/main.asm.nm.txt
avr-gcc-nm .pio/build/pro16MHzatmega328/src/main.cpp.o > res/main.cpp.nm.txt

# S
# avr-gcc -Os -Wall -ffunction-sections -fdata-sections -flto -mmcu=atmega328p -DF_CPU=16000000L -DPLATFORMIO=50101 -DARDUINO_AVR_PRO -Iinclude -Isrc -O2 -c src/main.cpp -o res/main.cpp.s -S
# avr-gcc -x assembler-with-cpp -Os -Wall -ffunction-sections -fdata-sections -flto -mmcu=atmega328p -DF_CPU=16000000L -DPLATFORMIO=50101 -DARDUINO_AVR_PRO -Iinclude -Isrc -c src/main.asm -o res/main.asm.s -S

# Preprocessor only
avr-gcc -Os -Wall -ffunction-sections -fdata-sections -flto -mmcu=atmega328p -DF_CPU=16000000L -DPLATFORMIO=50101 -DARDUINO_AVR_PRO -Iinclude -Isrc -O2 -c src/main.cpp -o res/main.cpp.i -E
avr-gcc -x assembler-with-cpp -Os -Wall -ffunction-sections -fdata-sections -flto -mmcu=atmega328p -DF_CPU=16000000L -DPLATFORMIO=50101 -DARDUINO_AVR_PRO -Iinclude -Isrc -c src/main.asm -o res/main.asm.i -E

# read elf
avr-readelf -a .pio/build/pro16MHzatmega328/firmware.elf > res/firmware.elf.txt

# disassembly
avr-objdump -d .pio/build/pro16MHzatmega328/firmware.elf > res/disassembly.s
avr-objdump -h -S .pio/build/pro16MHzatmega328/firmware.elf > res/disassembly.lst

# flash to COM3
# careful (flash elf)
avrdude -v -p atmega328p -C "$AVRDUD_CONF_LOCATION" -c arduino -b 57600 -D -P "/dev/ttyS3" -U flash:w:.pio/build/pro16MHzatmega328/firmware.elf
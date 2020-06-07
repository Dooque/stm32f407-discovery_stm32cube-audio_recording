# STM32 F407 Discovery - Audio Recording

Interfacing the PDM digital embedded microphone in the STM32 F407 Discovery board.

## Project

### PlatformIO

#### Initialization Information

This project was initilized and built using *PlatformIO, version 4.1.0* with the following commnd:

```
pio init --project-dir . -b genericSTM32F407VGT6 -O "framework=stm32cube" -O "platform=ststm32"
```

### CubeMX

> [TODO]

## Build

### PlatformIO

To build this project with *PlatformIO* first install it, then open a terminal an execure:

```
pio run
```

### GCC & Makefile

To build this project with GNU GCC and Makefile do the following steps.

> [TODO]

## Debug

### PlatformIO

```
platformio debug --interface=gdb -x .pioinit
```

## Program

### PlatformIO

```
pio run -j 8 -t upload
```

## Serial Monitor

### PlatformIO

```
pio device monitor -b 115200 -p /dev/ttyUSB0
```

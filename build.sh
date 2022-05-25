#!/bin/bash
if [ ! -d "build" ]; then
	mkdir build
	cd build
	cmake ..
	cd ..
fi
cd build
make -j16&&[[ -d "$PICO_DRIVE_PATH" ]]&&cp led.uf2 "$PICO_DRIVE_PATH/led.uf2"
cd ..

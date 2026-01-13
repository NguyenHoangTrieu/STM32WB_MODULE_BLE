rmdir /S /Q build
mkdir build
cd build
cmake -G Ninja -DCMAKE_TOOLCHAIN_FILE=cmake/gcc-arm-none-eabi.cmake ..
ninja
STM32_Programmer_CLI -c port=USB1 -w STM32WB_Module_BLE.elf -v
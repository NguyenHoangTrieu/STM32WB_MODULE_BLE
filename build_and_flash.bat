rmdir /S /Q build
mkdir build
cd build
cmake -G Ninja -DCMAKE_TOOLCHAIN_FILE=cmake/gcc-arm-none-eabi.cmake ..
ninja
STM32_Programmer_CLI -c port=SWD -w STM32WB_Module_BLE.elf -v -rst
@REM STM32_Programmer_CLI -c port=JLINK reset=HWrst -d STM32WB_Module_BLE.elf -v
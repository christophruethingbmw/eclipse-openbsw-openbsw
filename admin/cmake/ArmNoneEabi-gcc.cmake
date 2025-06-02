include("${CMAKE_CURRENT_LIST_DIR}/ArmNoneEabi.cmake")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -funsigned-bitfields")
set(CMAKE_CXX_FLAGS
    "${CMAKE_CXX_FLAGS} -funsigned-bitfields -femit-class-debug-always")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} \
--specs=nano.specs -specs=nosys.specs")

set(CMAKE_C_COMPILER "${TOOLCHAIN_BIN_DIR}/arm-none-eabi-gcc")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_BIN_DIR}/arm-none-eabi-g++")
set(CMAKE_ASM_COMPILER "${TOOLCHAIN_BIN_DIR}/arm-none-eabi-as")
set(CMAKE_LINKER "${TOOLCHAIN_BIN_DIR}/arm-none-eabi-g++")
set(CMAKE_AR "${TOOLCHAIN_BIN_DIR}/arm-none-eabi-ar")

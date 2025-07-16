cmake_minimum_required(VERSION 3.10)
project(mario01)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 14)

# 添加源文件
file(GLOB_RECURSE SOURCES "*.cpp")
file(GLOB_RECURSE HEADERS "*.h")

# 添加可执行文件
add_executable(mario01 WIN32 ${SOURCES} ${HEADERS})

# 设置 MFC 选项（如果项目使用 MFC）
set_property(TARGET mario01 PROPERTY VS_USE_MFC ON)
set_property(TARGET mario01 PROPERTY MFC_FLAG 2)  # 使用共享 MFC DLL

# 设置预编译头
set_source_files_properties(StdAfx.cpp PROPERTIES COMPILE_FLAGS "/YcStdAfx.h")
foreach(source_file ${SOURCES})
    if(NOT ${source_file} MATCHES "StdAfx.cpp")
        set_source_files_properties(${source_file} PROPERTIES COMPILE_FLAGS "/YuStdAfx.h")
    endif()
endforeach()

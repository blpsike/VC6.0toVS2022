@echo off
setlocal enabledelayedexpansion

REM 设置VS2022开发人员命令提示符环境
call "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\Tools\VsDevCmd.bat"

REM 设置GitHub仓库路径
set repoPath=C:\path\to\your\VC6toVS2022

REM 遍历仓库内的所有文件夹并尝试升级其中的VC6项目文件
for /r "%repoPath%" %%i in (*.dsp *.dsw) do (
    echo 正在升级 %%~fi ...
    devenv.com /upgrade "%%~fi"
)

echo 升级完成。
pause


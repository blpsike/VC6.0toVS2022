@回显关闭
设置本地环境并启用延迟扩展

REM 设置VS2022开发人员命令提示符环境
调用 "D:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat"

REM 设置GitHub仓库路径
设置 repoPath="D:\gh\VC6.0toVS2022-main"

REM 遍历仓库内的所有文件夹并尝试升级其中的VC6项目文件
for /r "%repoPath%" %%i in (*.dsp *.dsw) do (
    echo 正在升级 %%~fi ...
    devenv.com /upgrade "%%~fi"
输入：)

echo 升级完成。
暂停

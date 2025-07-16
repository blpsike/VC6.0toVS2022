@回显关闭
设置本地环境并启用延迟扩展

REM 设置VS2022开发人员命令提示符环境
调用 "D:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat"

REM 设置GitHub仓库路径
设置 repoPath=C:\Users\13772\Desktop\日风\VC6.0马里奥

REM 初始化日志文件
设置日志文件=%代码库路径%\升级日志.txt
echo 开始升级过程... > %logFile%

REM 遍历仓库内的所有文件夹并尝试升级其中的VC6项目文件
for /r "%repoPath%" %%i in (*.dsp *.dsw) do (
    echo 正在升级 %%~fi ...
    echo 正在升级 %%~fi ... >> %logFile%
    devenv.com /upgrade "%%~fi" >> %logFile% 2>&1
    如果错误级别为1
        echo 升级 %%~fi 失败，错误码: %errorlevel%
        echo 升级 %%~fi 失败，错误码: %errorlevel% >> %logFile%
    ) 否则 (
        echo 升级 %%~fi 成功
        echo 升级 %%~fi 成功 >> %logFile%
    输入：    )
输入：)

echo 所有升级操作完成。
echo 所有升级操作完成。 >> %logFile%
暂停


@回显关闭
设置本地环境并启用延迟扩展

REM 设置VS2022开发人员命令提示符环境
调用 "D:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat"

REM 设置具体文件路径
设置 dspFile="D:\gh\VC6.0toVS2022-main\VC6.0马里奥\新建文件夹\mario01.dsp"
设置 dswFile="D:\gh\VC6.0toVS2022-main\VC6.0马里奥\新建文件夹\mario01.dsw"

REM 初始化日志文件
设置日志文件=D:\gh\VC6.0toVS2022-main\upgrade_log.txt
echo 开始升级过程... > "%logFile%"

REM 升级 mario01.dsp
如果存在 %dspFile% (
    echo 正在升级 %dspFile% ...
    echo 正在升级 %dspFile% ... >> "%logFile%"
    devenv.com /upgrade %dspFile% >> "%logFile%" 2>&1
    如果错误级别为1
        echo 升级 %dspFile% 失败，错误码: !errorlevel!
        echo 升级 %dspFile% 失败，错误码: !errorlevel! >> "%logFile%"
    ) 否则 (
        echo 升级 %dspFile% 成功
        echo 升级 %dspFile% 成功 >> "%logFile%"
    输入：    )
) 否则 (
    echo 文件 %dspFile% 不存在。
    echo 文件 %dspFile% 不存在。 >> "%logFile%"
输入：)

REM 升级 mario01.dsw
如果存在 %dswFile% (
    echo 正在升级 %dswFile% ...
    echo 正在升级 %dswFile% ... >> "%logFile%"
    devenv.com /upgrade %dswFile% >> "%logFile%" 2>&1
    如果错误级别为1
        echo 升级 %dswFile% 失败，错误码: !errorlevel!
        echo 升级 %dswFile% 失败，错误码: !errorlevel! >> "%logFile%"
    ) 否则 (
        echo 升级 %dswFile% 成功
        echo 升级 %dswFile% 成功 >> "%logFile%"
    输入：    )
) 否则 (
    echo 文件 %dswFile% 不存在。
    echo 文件 %dswFile% 不存在。 >> "%logFile%"
输入：)

所有升级操作完成。
echo 所有升级操作完成。 >> "%logFile%"
暂停

@回显关闭
正在将VC6项目升级到VS2022...

rem 设置VS2022开发人员命令提示符环境
调用 "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\Tools\VsDevCmd.bat"

rem 转换项目文件
devenv.com /upgrade "VC6.0马里奥/新建文件夹/mario01.dsp"
devenv.com /upgrade "VC6.0马里奥/新建文件夹/mario01.dsw"

升级完成。

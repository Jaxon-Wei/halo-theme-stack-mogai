@echo off
setlocal

powershell -Command $PSVersionTable.PSVersion

:: 获取当前文件夹路径
set "currentDir=%CD%"

:: 设置输出文件名
set "output=release/archive.zip"

:: 指定要打包的文件或目录
set files="%currentDir%\templates","%currentDir%\i18n","%currentDir%\settings.yaml","%currentDir%\theme.yaml","%currentDir%\LICENSE"

:: 使用PowerShell创建ZIP文件
powershell -NoProfile -ExecutionPolicy Bypass -Command  Compress-Archive -Path %files% -DestinationPath '%output%' -Force

echo package success: %output%
pause
endlocal
@echo off
chcp 65001 >nul
setlocal

set "FFMPEG=%~dp0ffmpeg.exe"

if not exist "%FFMPEG%" (
    echo 未找到 ffmpeg.exe
    echo 请将 ffmpeg.exe 放在脚本同目录下
    pause
    exit /b
)

if "%~1"=="" (
    echo 请将视频文件拖到本脚本上
    pause
    exit /b
)

for %%F in (%*) do (

    if not exist "%%~dpFoutput\" (
        mkdir "%%~dpFoutput"
    )

    echo.
    echo 正在处理: %%~nxF

    "%FFMPEG%" ^
    -i "%%~fF" ^
    -c:v libx265 ^
    -preset fast ^
    -crf 24 ^
    -c:a copy ^
    -tag:v hvc1 ^
    -movflags +faststart ^
    "%%~dpFoutput\%%~nF.mp4"

)

echo.
echo 全部处理完成
pause
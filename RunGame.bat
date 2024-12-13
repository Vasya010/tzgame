@echo off
REM Укажите путь к Unreal Editor
set UE_PATH="C:\Program Files\Epic Games\UE_5.5\Engine\Binaries\Win64\UnrealEditor.exe"

REM Укажите путь к вашему проекту
set PROJECT_PATH="%~dp0CrimsonBoulevard.uproject"

REM Запуск игры
%UE_PATH% %PROJECT_PATH% -game
pause

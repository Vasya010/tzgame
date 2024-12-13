@echo off

:: Указываем путь к Unreal Editor
set UnrealEditorPath="C:\Program Files\Epic Games\UE_5.5\Engine\Binaries\Win64\UnrealEditor.exe"

:: Указываем имя и путь к проекту
set ProjectName=contr.uproject
set ProjectPath=%CD%\%ProjectName%

:: Проверяем наличие Unreal Editor
if not exist %UnrealEditorPath% (
    echo Unreal Editor не найден по пути: %UnrealEditorPath%
    pause
    exit /b
)

:: Проверяем наличие файла проекта
if not exist "%ProjectPath%" (
    echo Файл проекта %ProjectName% не найден в текущей директории: %CD%
    pause
    exit /b
)

:: Запускаем Unreal Engine с проектом
echo Запускаем Unreal Engine с проектом: %ProjectPath%
%UnrealEditorPath% "%ProjectPath%"

echo Проект успешно запущен.
pause

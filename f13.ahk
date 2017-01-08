/*
 * * * Compile_AHK SETTINGS BEGIN * * *

[AHK2EXE]
Exe_File=%In_Dir%\F13.exe
Execution_Level=4
[VERSION]
Set_Version_Info=1
File_Description=toggles F12 to F13 for push to talk configuration
File_Version=0.0.0.1
Inc_File_Version=1
Internal_Name=TexMex
Original_Filename=F13.exe
Product_Name=F13
Product_Version=0.0.0.1
Set_AHK_Version=1
Language_ID=63
[ICONS]
Icon_1=%In_Dir%\f13.ico
Icon_2=%In_Dir%\f13.ico
Icon_3=%In_Dir%\f12.ico

* * * Compile_AHK SETTINGS END * * *
*/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
DEV:=0

Menu, Tray, NoStandard
Menu, Tray, Add , F12/F13, SuS
if (DEV)
  Menu, Tray, Add , Reload, Rel
Menu, Tray, Add , Exit, Exi
Menu, Tray, Default, F12/F13

GoTo,Sus

Sus:
  Suspend, Toggle
Return

Rel:
  Reload
Return

Exi:
  ExitApp
Return

F12::F13

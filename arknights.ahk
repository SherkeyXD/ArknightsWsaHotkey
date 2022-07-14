#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
#Persistent

#Include <defaults>
#Include <gui>

GroupAdd, Arknights, com.hypergryph.arknights
GroupAdd, Arknights, com.hypergryph.arknights.bilibili

#IfWinActive, ahk_group Arknights  ;仅对明日方舟窗口生效
#Include <keys>
#IfWinActive
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
CoordMode, Mouse, Client
#Persistent

#Include <defaults>
#Include %A_ScriptDir%/lib/positions/2k.ahk

; 获取 WSA 位置
EnvGet, LocalAppData, LocalAppData
WsaClient := LocalAppData . "\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe"

; 运行程序 lzh
GoSub, CreateTray
GoSub, CreateGui
Return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 创建 GUI
CreateGui:
Gui, font, s12, Microsoft YaHei
Gui, New, , 明日方舟 WSA 快捷键
Gui, font, s10, Microsoft YaHei
Gui, Add, Text,, 这是一个可以在 WSA 运行明日方舟时使用快捷键的程序
Gui, Add, Text,, 点击对应按钮来快速启动明日方舟:
Gui, font, s10, Microsoft YaHei
Gui, Add, Text,, `n`n`n默认键位设置: 在 2k 分辨率下将窗口全屏
Gui, Add, Button, x20 y64 w95 h25 gButton_1, 官服
Gui, Add, Button, x230 y64 w95 h25 gButton_2, B服
Gui, Add, Button, x230 y154 w95 h25 gButton_3, 初始化
Gui, Margin, 10, 10
Gui, Show, AutoSize
Return

Button_1:
Run, %WsaClient% /launch wsa://com.hypergryph.arknights  ;官服
Return

Button_2:
Run, %WsaClient% /launch wsa://com.hypergryph.arknights.bilibili  ;B服
Return

Button_3:
GroupAdd, Arknights, com.hypergryph.arknights
GroupAdd, Arknights, com.hypergryph.arknights.bilibili
Hotkey, IfWinActive, ahk_group Arknights
Hotkey, %RetreatKey%, Retreat
Hotkey, %SpeedToggleKey%, ToggleSpeed
Hotkey, %SkipGachaAnimationKey%, SkipGacha
Hotkey, %SkipInGameStoryKey%, SkipInGameStory
Hotkey, %RecruitHourUpKey%, RecruitHourUp
Hotkey, %RecruitHourDownKey%, RecruitHourDown
Hotkey, %SkillTriggerKey%, TriggerSkill
Hotkey, IfWinActive
Return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 托盘
CreateTray:
Menu, Tray, Icon , icon.ico, 1, 1
Menu, Tray, Add
Menu, Tray, Add, 主程序界面, CreateGui
Menu, Tray, Add, 
Menu, Tray, Add, 修改键位, TraySetHotkey
Menu, Tray, Add, 查看目前键位, TrayShowHotkey
Menu, Tray, Add  
Menu, Submenu1, Add, % "1080p", TraySet1080p
Menu, Submenu1, Add, % "2k", TraySet2k
Menu, Submenu1, Add, % "自动设置", TraySetAuto
Menu, Submenu1, Add, % "手动设置", TraySetManual
Menu, Tray, Add, 键位设置, :Submenu1
Return

TrayShowGui:
Gui, Show, AutoSize
Return

TraySetHotkey:
MsgBox Giao
Return

TrayShowHotkey:
MsgBox Giao
Return

TraySetAuto:
MsgBox auto
Return

TraySetManual:
MsgBox manual
Return

TraySet1080p:
MsgBox 1080p selected
Return

TraySet2k:
#IncludeAgain, %A_ScriptDir%/lib/positions/2k.ahk
MsgBox 2k selected
Return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include <keys>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

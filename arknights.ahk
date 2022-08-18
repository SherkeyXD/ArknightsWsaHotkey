#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetDefaultMouseSpeed, 0
CoordMode, Mouse, Client
#Persistent
;@Ahk2Exe-SetMainIcon icon.ico


#Include <defaults>
#Include %A_ScriptDir%/lib/positions/2k.ahk

;添加方舟窗口组
GroupAdd, Arknights, ahk_class com.hypergryph.arknights
GroupAdd, Arknights, ahk_class com.hypergryph.arknights.bilibili

; 获取 WSA 位置
EnvGet, LocalAppData, LocalAppData
WsaClient := LocalAppData . "\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe"

; 运行程序
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
Gui, Add, Text,, 请点击右侧按钮进行初始化
Gui, Add, Button, x20 y64 w95 h25 gButton_1, 官服
Gui, Add, Button, x230 y64 w95 h25 gButton_2, B服
Gui, Add, Button, x200 y158 w95 h25 gButton_3, 初始化
Gui, Margin, 10, 10
Gui, Show, AutoSize
Return

Button_1:
Run, %WsaClient% /launch wsa://com.hypergryph.arknights  ;官服
;Sleep 500
;WinActivate, ahk_class AutoHotkeyGUI
Return

Button_2:
Run, %WsaClient% /launch wsa://com.hypergryph.arknights.bilibili  ;B服
;Sleep 500
;WinActivate, ahk_class AutoHotkeyGUI
Return

Button_3:
GroupActivate, Arknights
Hotkey, IfWinActive, ahk_group Arknights
Hotkey, %RetreatKey%, Retreat
Hotkey, %SpeedToggleKey%, ToggleSpeed
Hotkey, %SkipGachaAnimationKey%, SkipGacha
Hotkey, %SkipInGameStoryKey%, SkipInGameStory
Hotkey, %RecruitHourUpKey%, RecruitHourUp
Hotkey, %RecruitHourDownKey%, RecruitHourDown
Hotkey, %SkillTriggerKey%, TriggerSkill
Hotkey, IfWinActive
#IncludeAgain, %A_ScriptDir%/lib/positions/2k.ahk
MsgBox 初始化完毕，现在可以关闭程序窗口，程序会最小化到托盘。`n若需要退出请右击任务栏图标选择退出
Return   ;不加这个会触发第一个热键
#Include <keys>
Return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 托盘
CreateTray:

Menu, Tray, DeleteAll
if (A_IsCompiled == "") {
Menu, Tray, Icon, icon.ico, 1, 1
}
Menu, Tray, Tip, 明日方舟 WSA 快捷键
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
Menu, Tray, Add
Menu, Tray, Add, 退出, AppExit
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
#IncludeAgain, %A_ScriptDir%/lib/positions/auto.ahk
Return

TraySetManual:
MsgBox manual
Return

TraySet1080p:
#IncludeAgain, %A_ScriptDir%/lib/positions/1080p.ahk
MsgBox 1080p selected
Return

TraySet2k:
#IncludeAgain, %A_ScriptDir%/lib/positions/2k.ahk
MsgBox 2k selected
Return

AppExit:
ExitApp, 0
Return
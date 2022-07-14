; 获取 LocalAppData 值
EnvGet, LocalAppData, LocalAppData

; 托盘
Menu, Tray, Icon , icon.ico, 1, 1
;Menu, Tray, Add, Text

; 创建 GUI
Gui, font, s12, Microsoft YaHei
Gui, New, , 明日方舟 WSA 快捷键
Gui, font, s10, Microsoft YaHei
Gui, Add, Text,, 这是一个可以在 WSA 运行明日方舟时使用快捷键的程序
Gui, Add, Text,, 点击对应按钮来快速启动明日方舟:
Gui, font, s10, Microsoft YaHei
Gui, Add, Text,, `n`n`n默认键位设置: 在 Windows 2k 150`% 缩放下将窗口全屏
Gui, Add, Button, x20 y64 w95 h25 gButton_1, 官服
Gui, Add, Button, x230 y64 w95 h25 gButton_2, B服
Gui, Add, Button, x230 y154 w95 h25 gButton_3, 初始化
Gui, Margin, 10, 10
Gui, Show, AutoSize
Return

Button_1:
Run, %LocalAppData%\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.hypergryph.arknights  ;官服
Return

Button_2:
Run, %LocalAppData%\Microsoft\WindowsApps\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\WsaClient.exe /launch wsa://com.hypergryph.arknights.bilibili  ;B服
Return

Button_3:
Hotkey, %RetreatKey%, Retreat
Hotkey, %SpeedToggleKey%, ToggleSpeed
Hotkey, %SkipGachaAnimationKey%, SkipGacha
Hotkey, %SkipInGameStoryKey%, SkipInGameStory
Hotkey, %RecruitHourUpKey%, RecruitHourUp
Hotkey, %RecruitHourDownKey%, RecruitHourDown
Hotkey, %SkillTriggerKey%, TriggerSkill
Return
Retreat: ; 撤退干员
MouseGetPos, PositionX, PositionY
Click, 1216, 448
MouseMove, PositionX, PositionY  ;返回之前鼠标位置
MsgBox You pressed %RetreatKey%
Return

ToggleSpeed: ; 撤退干员
MouseGetPos, PositionX, PositionY
Click, 2249, 137
MouseMove, PositionX, PositionY
Return

SkipGacha: ; 跳过抽卡动画
MouseGetPos, PositionX, PositionY
Click, 2463, 113
MouseMove, PositionX, PositionY
Return

SkipInGameStory: ; 跳过剧情并自动换回二倍速
MouseGetPos, PositionX, PositionY
Click, 2393, 143
Sleep, 100
Click, 1580, 712
Sleep, 100
Click, 2249, 137
MouseMove, PositionX, PositionY
Return

RecruitHourUp: ; 公招加小时
MouseGetPos, PositionX, PositionY
Click, 933, 590
MouseMove, PositionX, PositionY
Return

RecruitHourDown: ; 公招减小时
MouseGetPos, PositionX, PositionY
Click, 936, 600
MouseMove, PositionX, PositionY
Return

TriggerSkill: ; 释放技能
MouseGetPos, PositionX, PositionY
Click, 1677 789
MouseMove, PositionX, PositionY
Return
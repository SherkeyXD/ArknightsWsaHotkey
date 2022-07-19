Retreat: ; 撤退干员
MouseGetPos, PosX, PosY
Click, RetreatPos[0], RetreatPos[1]
MouseMove, PosX, PosY  ;返回之前鼠标位置
MsgBox You pressed %RetreatKey%
Return

ToggleSpeed: ; 切换游戏倍速
MouseGetPos, PosX, PosY
Click, ToggleSpeedPos[0], ToggleSpeedPos[1]
MouseMove, PosX, PosY
Return

SkipGacha: ; 跳过抽卡动画
MouseGetPos, PosX, PosY
Click, SkipGachaPos[0], SkipGachaPos[1]
MouseMove, PosX, PosY
Return

SkipInGameStory: ; 跳过剧情并自动换回二倍速
MouseGetPos, PosX, PosY
Click, SkipStoryPos[0], SkipStoryPos[1]
Sleep, 100
Click, YesPos[0], YesPos[1]
Sleep, 100
Click, ToggleSpeedPos[0], ToggleSpeed[1]
MouseMove, PosX, PosY
Return

RecruitHourUp: ; 公招加小时
MouseGetPos, PosX, PosY
Click, RecruitHourUpPos[0], RecruitHourUpPos[1]
MouseMove, PosX, PosY
Return

RecruitHourDown: ; 公招减小时
MouseGetPos, PosX, PosY
Click, RecruitHourDownPos[0], RecruitHourDownPos[1]
MouseMove, PosX, PosY
Return

TriggerSkill: ; 释放技能
MouseGetPos, PosX, PosY
Click, TriggerSkillPos[0], TriggerSkillPos[1]
MouseMove, PosX, PosY
Return
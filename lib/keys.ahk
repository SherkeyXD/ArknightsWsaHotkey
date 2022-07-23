Retreat: ; 撤退干员
MouseGetPos, PosX, PosY
MouseClick, Left, RetreatPos[1], RetreatPos[2]
MouseMove, PosX, PosY  ;返回之前鼠标位置
Return

ToggleSpeed: ; 切换游戏倍速
MouseGetPos, PosX, PosY
MouseClick, Left, ToggleSpeedPos[1], ToggleSpeedPos[2]
MouseMove, PosX, PosY
Return

SkipGacha: ; 跳过抽卡动画
MouseGetPos, PosX, PosY
MouseClick, Left, SkipGachaPos[1], SkipGachaPos[2]
MouseMove, PosX, PosY
Return

SkipInGameStory: ; 跳过剧情并自动换回二倍速
MouseGetPos, PosX, PosY
MouseClick, Left, SkipStoryPos[1], SkipStoryPos[2]
Sleep, 100
MouseClick, Left, YesPos[1], YesPos[2]
Sleep, 100
MouseClick, Left, ToggleSpeedPos[1], ToggleSpeed[2]
MouseMove, PosX, PosY
Return

RecruitHourUp: ; 公招加小时
MouseGetPos, PosX, PosY
MouseClick, Left, RecruitHourUpPos[1], RecruitHourUpPos[2]
MouseMove, PosX, PosY
Return

RecruitHourDown: ; 公招减小时
MouseGetPos, PosX, PosY
MouseClick, Left, RecruitHourDownPos[1], RecruitHourDownPos[2]
MouseMove, PosX, PosY
Return

TriggerSkill: ; 释放技能
MouseGetPos, PosX, PosY
MouseClick, Left, TriggerSkillPos[1], TriggerSkillPos[2]
MouseMove, PosX, PosY
Return
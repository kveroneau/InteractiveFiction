COMMAND ANY
AtLocationLT 130
MakeVarRoomNum 2
END_COMMAND

COMMAND EXIT
AtLocationGT 129
AtLocationLT 134
GoToVariableRoom 2
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD MAN
Present 300
VariableEquals 2 65
IsNowhere 201
PrintMessage 1
PutInCurrentRoom 201
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD MAN
Present 300
VariableEquals 2 114
IsNowhere 202
PrintMessage 12
GetIt 202
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD MAN
Present 300
VariableEquals 2 82
IsNowhere 206
PrintMessage 16
IsCarrying 201
PrintMessage 17
GetIt 206
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD MAN
Present 300
VariableEquals 2 12
IsNowhere 207
PrintMessage 16
IsCarrying 206
PrintMessage 17
GetIt 207
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD MAN
Present 300
PrintMessage 5
DoneWithTurn
END_COMMAND

COMMAND TALK WITH MERCHANT
Present 301
VariableEquals 2 37
IsNowhere 215
PrintMessage 25
GetIt 215
DoneWithTurn
END_COMMAND

COMMAND TALK WITH MERCHANT
Present 301
VariableEquals 2 86
IsNowhere 217
PrintMessage 27
GetIt 217
DoneWithTurn
END_COMMAND

COMMAND TALK WITH MERCHANT
Present 301
PrintMessage 6
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD WOMAN
Present 302
VariableEquals 2 40
Present 202
IsNowhere 203
PrintMessage 13
GetIt 203
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD WOMAN
Present 302
VariableEquals 2 40
PrintMessage 10
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD WOMAN
Present 302
VariableEquals 2 49
PrintMessage 11
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD WOMAN
Present 302
VariableEquals 2 9
PrintMessage 15
DoneWithTurn
END_COMMAND

COMMAND TALK WITH OLD WOMAN
Present 302
VariableEquals 2 83
PrintMessage 26
DoneWithTurn
END_COMMAND

{ Begin code for Lost Woods }
COMMAND NORTH
AtLocation 16
PrintMessage 2
SetVariableTo 1 1
DoneWithTurn
END_COMMAND

COMMAND SOUTH
AtLocation 16
PrintMessage 2
VariableEquals 1 2
AddToVariable 1 1
DoneWithTurn
END_COMMAND

COMMAND SOUTH
AtLocation 16
SetVariableTo 1 0
DoneWithTurn
END_COMMAND

COMMAND WEST
AtLocation 16
VariableEquals 1 3
SetVariableTo 1 0
PrintMessage 3
GoToRoom 8
DoneWithTurn
END_COMMAND

COMMAND WEST
AtLocation 16
PrintMessage 2
VariableEquals 1 1
AddToVariable 1 1
DoneWithTurn
END_COMMAND

COMMAND WEST
AtLocation 16
SetVariableTo 1 0
DoneWithTurn
END_COMMAND
{ End code for Lost Woods concept }

{ Begin code for climb to Level 5 }
COMMAND NORTH
AtLocation 91
VariableEquals 1 3
SetVariableTo 1 0
GoToRoom 90
DoneWithTurn
END_COMMAND

COMMAND NORTH
AtLocation 91
VariableLT 1 3
AddToVariable 1 1
PrintMessage 4
DoneWithTurn
END_COMMAND
{ End code for climb to Level 5 }

{ Code to handle river area }
COMMAND WEST
AtLocation 57
PrintMessage 7
TurnFlagON 9
END_COMMAND

COMMAND SOUTH
AtLocation 48
PrintMessage 8
TurnFlagOFF 9
END_COMMAND

COMMAND EAST
AtLocation 49
FlagOFF 9
PrintMessage 9
DoneWithTurn
END_COMMAND

COMMAND NORTH
AtLocation 49
FlagON 9
PrintMessage 9
DoneWithTurn
END_COMMAND

COMMAND ENTER
AtLocation 49
FlagON 9
PrintMessage 9
DoneWithTurn
END_COMMAND

COMMAND WEST
AtLocation 68
 OR
AtLocation 67
TurnFlagON 9
END_COMMAND

COMMAND EAST
AtLocation 51
 OR
AtLocation 52
 OR
TurnFlagOFF 9
END_COMMAND

COMMAND SOUTH
AtLocation 58
TurnFlagOFF 9
END_COMMAND

COMMAND WEST
AtLocation 59
FlagON 9
NOT Present 216
PrintMessage 28
DoneWithTurn
END_COMMAND

COMMAND WEST
AtLocation 60
FlagON 9
NOT Present 216
PrintMessage 28
DoneWithTurn
END_COMMAND

COMMAND NORTH
AtLocation 59
FlagON 9
NOT Present 216
PrintMessage 28
DoneWithTurn
END_COMMAND

COMMAND EAST
AtLocation 59
FlagOFF 9
NOT Present 216
PrintMessage 28
DoneWithTurn
END_COMMAND

COMMAND EAST
AtLocation 60
FlagOFF 9
NOT Present 216
PrintMessage 28
DoneWithTurn
END_COMMAND

COMMAND NORTH
AtLocation 59
FlagON 9
PrintMessage 29
END_COMMAND

COMMAND EAST
AtLocation 59
 OR
AtLocation 60
FlagON 9
PrintMessage 29
END_COMMAND

COMMAND WEST
AtLocation 59
 OR
AtLocation 60
FlagOFF 9
PrintMessage 29
END_COMMAND
{ End code to handle river area }

{ Code to handle raft usage }
COMMAND RIDE RAFT
AtLocation 47
InRoom 204
PrintMessage 14
GoToRoom 46
DoneWithTurn
END_COMMAND

COMMAND RIDE RAFT
AtLocation 125
InRoom 204
PrintMessage 14
GoToRoom 124
DoneWithTurn
END_COMMAND
{ End code to handle raft usage }

{ Code to handle narrow forest paths }
COMMAND SOUTH
AtLocation 24
PrintMessage 19
END_COMMAND
{ End code to handle narrow forest paths }

{ Code to move armos }
COMMAND PUSH SECRET ARMOS
AtLocation 36
PrintMessage 23
DestroyNOUN
GetIt 213
DoneWithTurn
END_COMMAND

COMMAND PUSH SECRET ARMOS
AtLocation 37
PrintMessage 24
GoToRoom 131
END_COMMAND
{ End Armos code }

{ Code to handle the infamous "Warp Zone" }
COMMAND ANY
AtLocation 28
SetVariableTo 3 81
SetVariableTo 4 78
SetVariableTo 5 107
END_COMMAND

COMMAND ANY
AtLocation 81
SetVariableTo 3 28
SetVariableTo 4 78
SetVariableTo 5 107
END_COMMAND

COMMAND ANY
AtLocation 78
SetVariableTo 3 81
SetVariableTo 4 28
SetVariableTo 5 107
END_COMMAND

COMMAND ANY
AtLocation 107
SetVariableTo 3 81
SetVariableTo 4 78
SetVariableTo 5 28
END_COMMAND

COMMAND PUSH SECRET BOULDER
NOUNInRoom
IsWearing 213
PrintMessage 20
GoToRoom 133
DoneWithTurn
END_COMMAND

COMMAND PUSH SECRET BOULDER
NOUNInRoom
PrintMessage 21
IsCarrying 213
PrintMessage 22
DoneWithTurn
END_COMMAND

COMMAND NORTH
AtLocation 133
GoToVariableRoom 3
DoneWithTurn
END_COMMAND

COMMAND WEST
AtLocation 133
GoToVariableRoom 4
DoneWithTurn
END_COMMAND

COMMAND EAST
AtLocation 133
GoToVariableRoom 5
DoneWithTurn
END_COMMAND
{ End of Warp Zone Code }

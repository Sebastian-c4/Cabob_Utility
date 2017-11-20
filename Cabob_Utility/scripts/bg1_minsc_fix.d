
ADD_TRANS_ACTION MINSCP BEGIN 13 END BEGIN 0 END
	~ActionOverride("Dynaheir",ChangeAIScript("",DEFAULT))
	ActionOverride("Dynaheir",SetGlobal("IWasKickedOut","LOCALS",1))
	ActionOverride("Dynaheir",LeaveParty())
	ActionOverride("Dynaheir",SetDialogue("DynaP"))
	SetGlobal("IWasKickedOut","LOCALS",1)~
	
REPLACE_STATE_TRIGGER MINSCP 15 
	~GlobalLT("ENDOFBG1","GLOBAL",2)
	Global("IWasKickedOut","LOCALS",1)
	OR(4)
	Dead("dynaheir")
	InParty("dynaheir")
	!InMyArea("dynaheir")
	!Global("HelpMinsc","GLOBAL",2)~
			
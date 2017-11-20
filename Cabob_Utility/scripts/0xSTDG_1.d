

IF ~~ THEN BEGIN %type%
	SAY @%string%
	++ @40525 GOTO %type%1
	+ ~NumInPartyGT(1)~ + @40526 GOTO %type%2
	+ ~NumInPartyGT(2)~ + @40527 GOTO %type%3
	+ ~NumInPartyGT(3)~ + @40528 GOTO %type%4
	+ ~NumInPartyGT(4)~ + @40529 GOTO %type%5
	+ ~NumInPartyGT(5)~ + @40530 GOTO %type%6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN %type%1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DG%type%",Player1)~ EXIT
END

IF ~~ THEN BEGIN %type%2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DG%type%",Player2)~ EXIT
END

IF ~~ THEN BEGIN %type%3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DG%type%",Player3)~ EXIT
END

IF ~~ THEN BEGIN %type%4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DG%type%",Player4)~ EXIT
END

IF ~~ THEN BEGIN %type%5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DG%type%",Player5)~ EXIT
END

IF ~~ THEN BEGIN %type%6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DG%type%",Player6)~ EXIT
END

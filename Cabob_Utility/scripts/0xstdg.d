
APPEND 0xSTDG

IF ~~ THEN BEGIN choose_color
	SAY @40502
	+ ~PartyGoldGT(15999)~ + @40505 GOTO gray
	+ ~PartyGoldGT(15999)~ + @40506 GOTO gree
	+ ~PartyGoldGT(15999)~ + @40507 GOTO blac
	+ ~PartyGoldGT(15999)~ + @40508 GOTO ambe
	+ ~PartyGoldGT(15999)~ + @40509 GOTO silv
	+ ~PartyGoldGT(15999)~ + @40510 GOTO yell
	+ ~PartyGoldGT(15999)~ + @40511 GOTO viol
	+ ~PartyGoldGT(15999)~ + @40512 GOTO red
	+ ~PartyGoldGT(15999)~ + @40513 GOTO blue
	+ ~PartyGoldGT(15999)~ + @40514 GOTO gold
	++ @40503 EXIT
END


IF ~~ THEN BEGIN gray
	SAY @40515
	++ @40525 GOTO gray1
	+ ~NumInPartyGT(1)~ + @40526 GOTO gray2
	+ ~NumInPartyGT(2)~ + @40527 GOTO gray3
	+ ~NumInPartyGT(3)~ + @40528 GOTO gray4
	+ ~NumInPartyGT(4)~ + @40529 GOTO gray5
	+ ~NumInPartyGT(5)~ + @40530 GOTO gray6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN gray1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgray",Player1)~ EXIT
END

IF ~~ THEN BEGIN gray2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgray",Player2)~ EXIT
END

IF ~~ THEN BEGIN gray3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgray",Player3)~ EXIT
END

IF ~~ THEN BEGIN gray4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgray",Player4)~ EXIT
END

IF ~~ THEN BEGIN gray5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgray",Player5)~ EXIT
END

IF ~~ THEN BEGIN gray6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgray",Player6)~ EXIT
END


IF ~~ THEN BEGIN gree
	SAY @40516
	++ @40525 GOTO gree1
	+ ~NumInPartyGT(1)~ + @40526 GOTO gree2
	+ ~NumInPartyGT(2)~ + @40527 GOTO gree3
	+ ~NumInPartyGT(3)~ + @40528 GOTO gree4
	+ ~NumInPartyGT(4)~ + @40529 GOTO gree5
	+ ~NumInPartyGT(5)~ + @40530 GOTO gree6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN gree1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgree",Player1)~ EXIT
END

IF ~~ THEN BEGIN gree2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgree",Player2)~ EXIT
END

IF ~~ THEN BEGIN gree3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgree",Player3)~ EXIT
END

IF ~~ THEN BEGIN gree4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgree",Player4)~ EXIT
END

IF ~~ THEN BEGIN gree5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgree",Player5)~ EXIT
END

IF ~~ THEN BEGIN gree6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgree",Player6)~ EXIT
END


IF ~~ THEN BEGIN blac
	SAY @40517
	++ @40525 GOTO blac1
	+ ~NumInPartyGT(1)~ + @40526 GOTO blac2
	+ ~NumInPartyGT(2)~ + @40527 GOTO blac3
	+ ~NumInPartyGT(3)~ + @40528 GOTO blac4
	+ ~NumInPartyGT(4)~ + @40529 GOTO blac5
	+ ~NumInPartyGT(5)~ + @40530 GOTO blac6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN blac1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblac",Player1)~ EXIT
END

IF ~~ THEN BEGIN blac2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblac",Player2)~ EXIT
END

IF ~~ THEN BEGIN blac3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblac",Player3)~ EXIT
END

IF ~~ THEN BEGIN blac4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblac",Player4)~ EXIT
END

IF ~~ THEN BEGIN blac5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblac",Player5)~ EXIT
END

IF ~~ THEN BEGIN blac6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblac",Player6)~ EXIT
END


IF ~~ THEN BEGIN ambe
	SAY @40518
	++ @40525 GOTO ambe1
	+ ~NumInPartyGT(1)~ + @40526 GOTO ambe2
	+ ~NumInPartyGT(2)~ + @40527 GOTO ambe3
	+ ~NumInPartyGT(3)~ + @40528 GOTO ambe4
	+ ~NumInPartyGT(4)~ + @40529 GOTO ambe5
	+ ~NumInPartyGT(5)~ + @40530 GOTO ambe6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN ambe1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGambe",Player1)~ EXIT
END

IF ~~ THEN BEGIN ambe2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGambe",Player2)~ EXIT
END

IF ~~ THEN BEGIN ambe3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGambe",Player3)~ EXIT
END

IF ~~ THEN BEGIN ambe4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGambe",Player4)~ EXIT
END

IF ~~ THEN BEGIN ambe5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGambe",Player5)~ EXIT
END

IF ~~ THEN BEGIN ambe6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGambe",Player6)~ EXIT
END


IF ~~ THEN BEGIN silv
	SAY @40519
	++ @40525 GOTO silv1
	+ ~NumInPartyGT(1)~ + @40526 GOTO silv2
	+ ~NumInPartyGT(2)~ + @40527 GOTO silv3
	+ ~NumInPartyGT(3)~ + @40528 GOTO silv4
	+ ~NumInPartyGT(4)~ + @40529 GOTO silv5
	+ ~NumInPartyGT(5)~ + @40530 GOTO silv6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN silv1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGsilv",Player1)~ EXIT
END

IF ~~ THEN BEGIN silv2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGsilv",Player2)~ EXIT
END

IF ~~ THEN BEGIN silv3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGsilv",Player3)~ EXIT
END

IF ~~ THEN BEGIN silv4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGsilv",Player4)~ EXIT
END

IF ~~ THEN BEGIN silv5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGsilv",Player5)~ EXIT
END

IF ~~ THEN BEGIN silv6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGsilv",Player6)~ EXIT
END


IF ~~ THEN BEGIN yell
	SAY @40520
	++ @40525 GOTO yell1
	+ ~NumInPartyGT(1)~ + @40526 GOTO yell2
	+ ~NumInPartyGT(2)~ + @40527 GOTO yell3
	+ ~NumInPartyGT(3)~ + @40528 GOTO yell4
	+ ~NumInPartyGT(4)~ + @40529 GOTO yell5
	+ ~NumInPartyGT(5)~ + @40530 GOTO yell6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN yell1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGyell",Player1)~ EXIT
END

IF ~~ THEN BEGIN yell2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGyell",Player2)~ EXIT
END

IF ~~ THEN BEGIN yell3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGyell",Player3)~ EXIT
END

IF ~~ THEN BEGIN yell4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGyell",Player4)~ EXIT
END

IF ~~ THEN BEGIN yell5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGyell",Player5)~ EXIT
END

IF ~~ THEN BEGIN yell6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGyell",Player6)~ EXIT
END


IF ~~ THEN BEGIN viol
	SAY @40521
	++ @40525 GOTO viol1
	+ ~NumInPartyGT(1)~ + @40526 GOTO viol2
	+ ~NumInPartyGT(2)~ + @40527 GOTO viol3
	+ ~NumInPartyGT(3)~ + @40528 GOTO viol4
	+ ~NumInPartyGT(4)~ + @40529 GOTO viol5
	+ ~NumInPartyGT(5)~ + @40530 GOTO viol6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN viol1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGviol",Player1)~ EXIT
END

IF ~~ THEN BEGIN viol2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGviol",Player2)~ EXIT
END

IF ~~ THEN BEGIN viol3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGviol",Player3)~ EXIT
END

IF ~~ THEN BEGIN viol4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGviol",Player4)~ EXIT
END

IF ~~ THEN BEGIN viol5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGviol",Player5)~ EXIT
END

IF ~~ THEN BEGIN viol6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGviol",Player6)~ EXIT
END


IF ~~ THEN BEGIN red
	SAY @40522
	++ @40525 GOTO red1
	+ ~NumInPartyGT(1)~ + @40526 GOTO red2
	+ ~NumInPartyGT(2)~ + @40527 GOTO red3
	+ ~NumInPartyGT(3)~ + @40528 GOTO red4
	+ ~NumInPartyGT(4)~ + @40529 GOTO red5
	+ ~NumInPartyGT(5)~ + @40530 GOTO red6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN red1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGred",Player1)~ EXIT
END

IF ~~ THEN BEGIN red2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGred",Player2)~ EXIT
END

IF ~~ THEN BEGIN red3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGred",Player3)~ EXIT
END

IF ~~ THEN BEGIN red4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGred",Player4)~ EXIT
END

IF ~~ THEN BEGIN red5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGred",Player5)~ EXIT
END

IF ~~ THEN BEGIN red6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGred",Player6)~ EXIT
END


IF ~~ THEN BEGIN blue
	SAY @40523
	++ @40525 GOTO blue1
	+ ~NumInPartyGT(1)~ + @40526 GOTO blue2
	+ ~NumInPartyGT(2)~ + @40527 GOTO blue3
	+ ~NumInPartyGT(3)~ + @40528 GOTO blue4
	+ ~NumInPartyGT(4)~ + @40529 GOTO blue5
	+ ~NumInPartyGT(5)~ + @40530 GOTO blue6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN blue1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblue",Player1)~ EXIT
END

IF ~~ THEN BEGIN blue2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblue",Player2)~ EXIT
END

IF ~~ THEN BEGIN blue3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblue",Player3)~ EXIT
END

IF ~~ THEN BEGIN blue4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblue",Player4)~ EXIT
END

IF ~~ THEN BEGIN blue5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblue",Player5)~ EXIT
END

IF ~~ THEN BEGIN blue6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGblue",Player6)~ EXIT
END


IF ~~ THEN BEGIN gold
	SAY @40524
	++ @40525 GOTO gold1
	+ ~NumInPartyGT(1)~ + @40526 GOTO gold2
	+ ~NumInPartyGT(2)~ + @40527 GOTO gold3
	+ ~NumInPartyGT(3)~ + @40528 GOTO gold4
	+ ~NumInPartyGT(4)~ + @40529 GOTO gold5
	+ ~NumInPartyGT(5)~ + @40530 GOTO gold6
	++ @40503 EXIT
END

IF ~~ THEN BEGIN gold1
	SAY @40531
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgold",Player1)~ EXIT
END

IF ~~ THEN BEGIN gold2
	SAY @40532
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgold",Player2)~ EXIT
END

IF ~~ THEN BEGIN gold3
	SAY @40533
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgold",Player3)~ EXIT
END

IF ~~ THEN BEGIN gold4
	SAY @40534
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgold",Player4)~ EXIT
END

IF ~~ THEN BEGIN gold5
	SAY @40535
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgold",Player5)~ EXIT
END

IF ~~ THEN BEGIN gold6
	SAY @40536
	= @40504
	IF ~~ THEN DO ~SetGlobal("DGSign","GLOBAL",11) TakePartyGold(16000) ForceSpellRES("DGgold",Player6)~ EXIT
END


END

ADD_TRANS_TRIGGER 0xSTDG 9 ~False()~ DO 0

EXTEND_TOP 0xSTDG 9
	+ ~Global("DGSign","GLOBAL",0)~ + @40501	GOTO choose_color
END

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

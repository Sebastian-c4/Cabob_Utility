
ALTER_TRANS helljon
BEGIN 22 END
BEGIN 0 END
BEGIN
	~TRIGGER~ ~!PartyHasItem("s#amul02")~
END
	
EXTEND_BOTTOM helljon 22 #0
IF ~PartyHasItem("s#amul02")~ THEN 
	DO ~TakePartyItem("s#amul02")
			DestroyItem("s#amul02")
			SetGlobal("IITookAmulet2","AR2900",1)~ GOTO 23
END
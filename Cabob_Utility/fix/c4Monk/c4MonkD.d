
BEGIN c4MonkD

IF ~GlobalLT("c4MonkSkillPoint","Locals",1)
		Global("c4MonkDialog","Locals",1)~ THEN BEGIN noskillpoint
	SAY @101
	IF ~~ THEN DO ~SetInterrupt(TRUE) SetGlobal("c4MonkDialog","Locals",0)~ EXIT
END

IF ~GlobalGT("c4MonkSkillPoint","Locals",0)
		Global("c4MonkDialog","Locals",1)~ THEN BEGIN gotskillpoint
	SAY @102
	++ @200 DO ~SetInterrupt(FALSE)~ + bodytraining
	++ @300 DO ~SetInterrupt(FALSE)~ + mentaltraining
	++ @1000 DO ~SetInterrupt(FALSE)~ + refinefist
	++ @103 DO ~SetInterrupt(TRUE) SetGlobal("c4MonkDialog","Locals",0)~ EXIT
END

IF ~CheckStat(Myself,%engine_value_type%,c4MonkBodyTrainingHLA)
		Global("c4MonkDialog","Locals",0)
		Global("c4MonkBodyTrainingHLA","Locals",0)~ THEN BEGIN c#mkbdx
	SAY @210
	IF ~~ THEN DO ~
		SetGlobal("c4MonkBodyTrainingHLA","Locals",1)
		RemoveSpellRES("c#mkbda-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbde-")
		RemoveSpellRES("c#mkbde-")
		RemoveSpellRES("c#mkbde-")
		RemoveSpellRES("c#mkbde-")
		RemoveSpellRES("c#mkbde-")
		ReallyForceSpellRES("c#mkbd0-",Myself)
		AddSpecialAbility("c#mkbdx-")
		AddSpecialAbility("c#mkbdx-")
		AddSpecialAbility("c#mkbdx-")
		AddSpecialAbility("c#mkbdx-")
		AddSpecialAbility("c#mkbdx-")~ EXIT
END

IF ~~ THEN BEGIN done
	SAY @105
	IF ~~ THEN DO ~IncrementGlobal("c4MonkSkillPoint","Locals",-1) SetInterrupt(TRUE) SetGlobal("c4MonkDialog","Locals",0)~ EXIT
END

IF ~~ THEN BEGIN bodytraining
	SAY @209
	+ ~Global("c4MonkBodyTraining","Locals",5)~ + @208 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",0) LevelLT(Myself,6)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",1) LevelLT(Myself,12)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",2) LevelLT(Myself,18)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",3) LevelLT(Myself,24)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",4) LevelLT(Myself,30)~ + @207 + gotskillpoint
	+ ~Global("c4MonkBodyTraining","Locals",0) !LevelLT(Myself,6)~ + @201 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",1)
		AddSpecialAbility("c#mkbda-")~ + done
	+ ~Global("c4MonkBodyTraining","Locals",1) !LevelLT(Myself,12)~ + @202 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",2)
		RemoveSpellRES("c#mkbda-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		ReallyForceSpellRES("c#mkbd0-",Myself)
		AddSpecialAbility("c#mkbdb-")
		AddSpecialAbility("c#mkbdb-")~ + done
	+ ~Global("c4MonkBodyTraining","Locals",2) !LevelLT(Myself,18)~ + @203 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",3)
		RemoveSpellRES("c#mkbda-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		ReallyForceSpellRES("c#mkbd0-",Myself)
		AddSpecialAbility("c#mkbdc-")
		AddSpecialAbility("c#mkbdc-")
		AddSpecialAbility("c#mkbdc-")~ + done
	+ ~Global("c4MonkBodyTraining","Locals",3) !LevelLT(Myself,24)~ + @204 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",4)
		RemoveSpellRES("c#mkbda-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		ReallyForceSpellRES("c#mkbd0-",Myself)
		AddSpecialAbility("c#mkbdd-")
		AddSpecialAbility("c#mkbdd-")
		AddSpecialAbility("c#mkbdd-")
		AddSpecialAbility("c#mkbdd-")~ + done
	+ ~Global("c4MonkBodyTraining","Locals",4) !LevelLT(Myself,30)~ + @205 DO ~
		SetGlobal("c4MonkBodyTraining","Locals",5)
		RemoveSpellRES("c#mkbda-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdb-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdc-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		RemoveSpellRES("c#mkbdd-")
		ReallyForceSpellRES("c#mkbd0-",Myself)
		ReallyForceSpellRES("c#mkbdx0",Myself)
		AddSpecialAbility("c#mkbde-")
		AddSpecialAbility("c#mkbde-")
		AddSpecialAbility("c#mkbde-")
		AddSpecialAbility("c#mkbde-")
		AddSpecialAbility("c#mkbde-")~ + done
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN mentaltraining
	SAY @302
	+ ~Global("c4MonkMentalTraining1","Locals",0) !LevelLT(Myself,1)~ + @311 DO ~SetGlobal("c4MonkMentalTraining1","Locals",1)~ + done
	+ ~Global("c4MonkMentalTraining2","Locals",0) !LevelLT(Myself,6)~ + @321 DO ~SetGlobal("c4MonkMentalTraining2","Locals",1)~ + done
	+ ~Global("c4MonkMentalTraining3","Locals",0) !LevelLT(Myself,12)~ + @331 DO ~SetGlobal("c4MonkMentalTraining3","Locals",1)~ + done
	+ ~Global("c4MonkMentalTraining4","Locals",0) !LevelLT(Myself,18)~ + @341 DO ~SetGlobal("c4MonkMentalTraining4","Locals",1)~ + done
	+ ~Global("c4MonkMentalTraining1","Locals",1) 
		Global("c4MonkMentalTraining2","Locals",1) 
		Global("c4MonkMentalTraining3","Locals",1) 
		Global("c4MonkMentalTraining4","Locals",1)~ 
	+ @303 + gotskillpoint
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN refinefist
	SAY @1002
	++ @1100 + fist1
	++ @1200 + fist2
	++ @1300 + fist3
	++ @1400 + fist4
	++ @1500 + fist5
	++ @1600 + fist6
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist1
	SAY @1101
	+ ~Global("c4MonkColdFist","Locals",0)~ + @1111 DO ~SetGlobal("c4MonkColdFist","Locals",1) ReallyForceSpellRES("c#mkf1a",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",1)~ + @1121 DO ~SetGlobal("c4MonkColdFist","Locals",2) ReallyForceSpellRES("c#mkf1b",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",2)~ + @1131 DO ~SetGlobal("c4MonkColdFist","Locals",3) ReallyForceSpellRES("c#mkf1c",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",3)~ + @1141 DO ~SetGlobal("c4MonkColdFist","Locals",4) ReallyForceSpellRES("c#mkf1d",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",4)~ + @1151 DO ~SetGlobal("c4MonkColdFist","Locals",5) ReallyForceSpellRES("c#mkf1e",Myself)~ + done
	+ ~Global("c4MonkColdFist","Locals",5)~ + @1102 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist2
	SAY @1201
	+ ~Global("c4MonkFireFist","Locals",0)~ + @1211 DO ~SetGlobal("c4MonkFireFist","Locals",1) ReallyForceSpellRES("c#mkf2a",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",1)~ + @1221 DO ~SetGlobal("c4MonkFireFist","Locals",2) ReallyForceSpellRES("c#mkf2b",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",2)~ + @1231 DO ~SetGlobal("c4MonkFireFist","Locals",3) ReallyForceSpellRES("c#mkf2c",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",3)~ + @1241 DO ~SetGlobal("c4MonkFireFist","Locals",4) ReallyForceSpellRES("c#mkf2d",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",4)~ + @1251 DO ~SetGlobal("c4MonkFireFist","Locals",5) ReallyForceSpellRES("c#mkf2e",Myself)~ + done
	+ ~Global("c4MonkFireFist","Locals",5)~ + @1202 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist3
	SAY @1301
	+ ~Global("c4MonkElectronicFist","Locals",0)~ + @1311 DO ~SetGlobal("c4MonkElectronicFist","Locals",1) ReallyForceSpellRES("c#mkf3a",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",1)~ + @1321 DO ~SetGlobal("c4MonkElectronicFist","Locals",2) ReallyForceSpellRES("c#mkf3b",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",2)~ + @1331 DO ~SetGlobal("c4MonkElectronicFist","Locals",3) ReallyForceSpellRES("c#mkf3c",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",3)~ + @1341 DO ~SetGlobal("c4MonkElectronicFist","Locals",4) ReallyForceSpellRES("c#mkf3d",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",4)~ + @1351 DO ~SetGlobal("c4MonkElectronicFist","Locals",5) ReallyForceSpellRES("c#mkf3e",Myself)~ + done
	+ ~Global("c4MonkElectronicFist","Locals",5)~ + @1302 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist4
	SAY @1401
	+ ~Global("c4MonkAcidFist","Locals",0)~ + @1411 DO ~SetGlobal("c4MonkAcidFist","Locals",1) ReallyForceSpellRES("c#mkf4a",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",1)~ + @1421 DO ~SetGlobal("c4MonkAcidFist","Locals",2) ReallyForceSpellRES("c#mkf4b",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",2)~ + @1431 DO ~SetGlobal("c4MonkAcidFist","Locals",3) ReallyForceSpellRES("c#mkf4c",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",3)~ + @1441 DO ~SetGlobal("c4MonkAcidFist","Locals",4) ReallyForceSpellRES("c#mkf4d",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",4)~ + @1451 DO ~SetGlobal("c4MonkAcidFist","Locals",5) ReallyForceSpellRES("c#mkf4e",Myself)~ + done
	+ ~Global("c4MonkAcidFist","Locals",5)~ + @1402 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist5
	SAY @1501
	+ ~Global("c4MonkPiercingFist","Locals",0)~ + @1511 DO ~SetGlobal("c4MonkPiercingFist","Locals",1) ReallyForceSpellRES("c#mkf5a",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",1)~ + @1521 DO ~SetGlobal("c4MonkPiercingFist","Locals",2) ReallyForceSpellRES("c#mkf5b",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",2)~ + @1531 DO ~SetGlobal("c4MonkPiercingFist","Locals",3) ReallyForceSpellRES("c#mkf5c",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",3)~ + @1541 DO ~SetGlobal("c4MonkPiercingFist","Locals",4) ReallyForceSpellRES("c#mkf5d",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",4)~ + @1551 DO ~SetGlobal("c4MonkPiercingFist","Locals",5) ReallyForceSpellRES("c#mkf5e",Myself)~ + done
	+ ~Global("c4MonkPiercingFist","Locals",5)~ + @1502 + refinefist
	++ @104 + gotskillpoint
END

IF ~~ THEN BEGIN fist6
	SAY @1601
	+ ~Global("c4MonkSlashingFist","Locals",0)~ + @1611 DO ~SetGlobal("c4MonkSlashingFist","Locals",1) ReallyForceSpellRES("c#mkf6a",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",1)~ + @1621 DO ~SetGlobal("c4MonkSlashingFist","Locals",2) ReallyForceSpellRES("c#mkf6b",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",2)~ + @1631 DO ~SetGlobal("c4MonkSlashingFist","Locals",3) ReallyForceSpellRES("c#mkf6c",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",3)~ + @1641 DO ~SetGlobal("c4MonkSlashingFist","Locals",4) ReallyForceSpellRES("c#mkf6d",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",4)~ + @1651 DO ~SetGlobal("c4MonkSlashingFist","Locals",5) ReallyForceSpellRES("c#mkf6e",Myself)~ + done
	+ ~Global("c4MonkSlashingFist","Locals",5)~ + @1602 + refinefist
	++ @104 + gotskillpoint
END	
	

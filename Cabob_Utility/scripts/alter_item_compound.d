	
//�޸�̩������Ի���ȷ���κ�ʱ�����ȥ�������ܵ�������ì
EXTEND_BOTTOM THALAN 35
IF ~
		Global("X#KivanThalantyr2","Global",0)
		InParty("kivan")
		InMyArea("kivan")
		!StateCheck("kivan",CD_STATE_NOTVALID)
		Global("P#KivWelcome","Global",0)
	~
	DO ~SetGlobal("X#KivanThalantyr2","Global",1)~ EXTERN KIVANJ 210
END

//ʹ������������˹����ֻʹ��С������ϣ���ϳ���ħ+2�����֮����Ȼʹ����������ϣ����Ϊ����
ALTER_TRANS WSMITH01
BEGIN 95 END
BEGIN 1 END
BEGIN
	~TRIGGER~ ~
		PartyHasItem("ax1h10")
		PartyHasItem("misc5k")
		PartyGoldGT(19999)~
	~ACTION~ ~
		TakePartyGold(20000)
		DestroyGold(20000)
		TakePartyItemNum("ax1h10",1)
		DestroyItem("ax1h10")
		TakePartyItemNum("misc5k",1)
		DestroyItem("misc5k")
		GiveItemCreate("c2ax1h01",Player1,1,1,1)
		CreateVisualEffect("spcrtwpn",[401.348])~
END

ALTER_TRANS botsmith
BEGIN 231 END
BEGIN 1 END
BEGIN
	~TRIGGER~ ~
		PartyHasItem("ax1h10")
		PartyHasItem("misc5k")
		PartyGoldGT(19999)~
	~ACTION~ ~
		TakePartyGold(20000)
		DestroyGold(20000)
		TakePartyItemNum("ax1h10",1)
		DestroyItem("ax1h10")
		TakePartyItemNum("misc5k",1)
		DestroyItem("misc5k")
		GiveItemCreate("c2ax1h01",Player1,1,1,1)
		CreateVisualEffect("spcrtwpn",[401.348])~
END

	
////�޸Ĳ�����Ʒ�ĺϳ���������ԭ����Ʒ��������ħ�������+4��˫�����+5�����Ʋ���ǿ����Ʒ

//��������ʱ��ֹͣ, ��������ѡ����ŵ���Ʒ: ���̶̽�, �����߽�ָ, ʱ���ƿؽ�ָ����ʱ��׹
ADD_TRANS_TRIGGER M#RUAD 5 ~False()~ DO 31 47 55
ADD_TRANS_TRIGGER ROLLES 4 ~False()~ DO 3

//��������
//�䷽С��ħҲ�У�ֱ�ӽ���: �ڹѸ�+5, ��­��+5, ��ʥ+5
ADD_TRANS_TRIGGER WSMITH01 59 ~False()~ DO 9 11 26

//֧��ϳ������ڵ�6�£����飩֮��
ADD_TRANS_TRIGGER WSMITH01 59 ~GGT("Chapter",5)~ DO 10
		
/////////////////////////////////////
//�޵�		
//������������֮�ȵ��ı�
REPLACE_SAY M#RUAD 225 @40301
		
//������������2����
REPLACE_SAY M#RUAD 57 @40302

ALTER_TRANS M#RUAD
BEGIN 58 END
BEGIN 2 END
BEGIN 
	~TRIGGER~ ~
		PartyHasItem("belt06")
		PartyHasItem("belt09")
		PartyHasItem("brac07")
		NumItemsPartyGT("potn03",1)
		NumItemsPartyGT("potn19",1)
		NumItemsPartyGT("potn28",1)
		NumItemsPartyGT("misc42",1)
		NumItemsPartyGT("misc43",1)
		NumItemsPartyGT("misc45",1)
		PartyGoldGT(19999)~
	~ACTION~ ~
		TakePartyGold(20000)
		DestroyGold(20000)
		TakePartyItemNum("belt06",1)
		TakePartyItemNum("belt09",1)
		TakePartyItemNum("brac07",1)
		TakePartyItemNum("potn03",2)
		TakePartyItemNum("potn19",2)
		TakePartyItemNum("potn28",2)
		TakePartyItemNum("misc42",2)
		TakePartyItemNum("misc43",2)
		TakePartyItemNum("misc45",2)
		DestroyAllEquipment()
		CreateVisualEffectObject("spcrtwpn","Ruad")
		GiveItemCreate("u#belt01",Player1,1,1,1)~
END

/////////////////////////////////////
//��˹
//������ʥ���塢������+5(ʵ�ʸ�ħ+6)��Ͷ����+4/+5(�޷���+4����+5)�����ɳ�/�̽�+5
ADD_TRANS_TRIGGER ROLLES 4 ~GGT("Chapter",7)~ DO 7 12 16 19

//��ħ��ͷ��+3����Ҫ+2Ϊ������������Ҫ�������ǵ�ĩ��+1, ����ϣ���ᱻ���ģ��ϳɷ�����ߵ�2����
ALTER_TRANS ROLLES
BEGIN 4 END
BEGIN 23 END
BEGIN
	~TRIGGER~
		~PartyHasItem("blun25")~
	~REPLY~ ~@40303~
END
	
REPLACE_SAY ROLLES 29 @40304
ALTER_TRANS ROLLES
BEGIN 29 END
BEGIN 1 END
BEGIN 
	~TRIGGER~ ~
		PartyHasItem("blun25")
		PartyHasItem("misc5k")
		NumItemsPartyGT("scrl1o",2)
		PartyGoldGT(19999)~
	~ACTION~ ~
		TakePartyGold(20000)
		DestroyGold(20000)
		TakePartyItemNum("blun25",1)
		DestroyItem("blun25")
		TakePartyItemNum("misc5k",1)
		DestroyItem("misc5k")
		TakePartyItemNum("scrl1o",3)
		DestroyItem("scrl1o")
		GiveItemCreate("s#mace01",Player1,1,1,1)
		CreateVisualEffect("spcrtwpn",[365.420])~
END

//ս��+4:"�����"��Ҫ���3��
REPLACE_SAY ROLLES 12 @40305
ALTER_TRANS ROLLES
BEGIN 12 END
BEGIN 1 END
BEGIN 
	~TRIGGER~	~
		PartyHasItem("ax1h08")
		PartyHasItem("ax1h12")
		PartyHasItem("ax1h13")
		PartyHasItem("misc6m")
		PartyHasItem("wand06")
		NumItemsPartyGT("scrl95",1)
		PartyGoldGT(29999)~			
	~ACTION~ ~
		TakePartyGold(30000)
		DestroyGold(30000)
		TakePartyItemNum("ax1h08",1)
		DestroyItem("ax1h08")
		TakePartyItemNum("ax1h12",1)
		DestroyItem("ax1h12")
		TakePartyItemNum("ax1h13",1)
		DestroyItem("ax1h13")
		TakePartyItemNum("misc6m",1)
		DestroyItem("misc6m")
		TakePartyItemNum("wand06",1)
		DestroyItem("wand06")
		TakePartyItemNum("scrl95",2)
		DestroyItem("scrl95")
		GiveItemCreate("s#ax1h01",Player1,1,1,1)
		CreateVisualEffect("spcrtwpn",[365.420])~
END

//������+4�ϳɲ��������±ҩ��*2������3���ң�+5����4����
REPLACE_SAY ROLLES 17 @40306
ALTER_TRANS ROLLES
BEGIN 17 END
BEGIN 1 END
BEGIN
 ~TRIGGER~ ~
		PartyHasItem("sw2h03")
		PartyHasItem("sw2h14")
		PartyHasItem("sw2h16")
		PartyHasItem("scrl1q")
		NumItemsPartyGT("scrlAK",1)
		NumItemsPartyGT("misc9y",1)
		PartyGoldGT(29999)~
	~ACTION~ ~
		TakePartyGold(30000)
		DestroyGold(30000)
		TakePartyItemNum("sw2h03",1)
		DestroyItem("sw2h03")
		TakePartyItemNum("sw2h14",1)
		DestroyItem("sw2h14")
		TakePartyItemNum("sw2h16",1)
		DestroyItem("sw2h16")
		TakePartyItemNum("scrl1q",1)
		DestroyItem("scrl1q")
		TakePartyItemNum("scrlAK",2)
		DestroyItem("scrlAK")
		TakePartyItemNum("misc9y",2)
		DestroyItem("misc9y")
		GiveItemCreate("s#sw2h02",Player1,1,1,1)
		CreateVisualEffect("spcrtwpn",[365.420])~
END

REPLACE_SAY ROLLES 18 @40307
ALTER_TRANS ROLLES
BEGIN 18 END
BEGIN 1 END
BEGIN
 ~TRIGGER~ ~
		PartyHasItem("s#sw2h02")
		PartyHasItem("sw2h08")
		PartyHasItem("sw2h12")
		PartyHasItem("sw2h15")
		PartyHasItem("scrl8o")
		PartyHasItem("potn34")
		PartyGoldGT(39999)~
	~ACTION~ ~
		TakePartyGold(40000)
		DestroyGold(40000)
		TakePartyItemNum("s#sw2h02",1)
		DestroyItem("s#sw2h02")
		TakePartyItemNum("sw2h08",1)
		DestroyItem("sw2h08")
		TakePartyItemNum("sw2h12",1)
		DestroyItem("sw2h12")
		TakePartyItemNum("sw2h15",1)
		DestroyItem("sw2h15")
		TakePartyItemNum("scrl8o",2)
		DestroyItem("scrl8o")
		TakePartyItemNum("potn34",1)
		DestroyItem("potn34")
		GiveItemCreate("s#sw2h03",Player1,1,1,1)
		CreateVisualEffect("spcrtwpn",[365.420])~
END
	
//������˹���ɺϳɶԻ�����������Ʒ�Ĵ���
EXTEND_TOP botsmith 153 #45
IF ~PartyHasItem("dw#abyds")~ THEN 
	REPLY @40308 GOTO add1
END

APPEND botsmith
	IF ~~ THEN add1
		SAY @40309
		+ ~~ + @40310 + 153
		+ ~PartyGoldGT(9999)~ + @40311 DO ~
			SetGlobal("DMWWYellowArmor","GLOBAL",1)
			TakePartyGold(10000)
			TakePartyItemNum("dw#abyds",1)
			DestroyItem("dw#abyds")
			DestroyGold(10000)~ + 11
	END
END

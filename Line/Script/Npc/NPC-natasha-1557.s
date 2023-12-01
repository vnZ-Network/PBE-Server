	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/02
	//		Author:???
	//		TaskName:NPC-natasha-1557.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){	
		$quest0 = IsTaskAccept( -1, 6 )
		$Item0 = GetPlayerInfo( -1, "item", 12235 )
		$quest1 = IsTaskAccept( -1, 61 )
		$Item1 = GetPlayerInfo( -1, "item", 12323 )
		$quest2 = IsTaskAccept( -1, 110 )
		$Item2 = GetPlayerInfo( -1, "item", 64262 )
		$quest3 = IsTaskAccept( -1, 78 )
		$Item3 = GetPlayerInfo( -1, "item", 12323 )
		if $quest0 == 0
			if $Item0 > 0
				DisableNpcOption(11)
			endif		
		endif
		
		if $quest1 == 0
			if $Item1 > 0
				DisableNpcOption(11)
			endif	
		endif
		
		if $quest2 == 0
			if $Item2 > 0
				DisableNpcOption(11)
			endif	
		endif
		
		if $quest3 == 0
			if $Item3 > 0
				DisableNpcOption(11)
			endif	
		endif
		
		if $quest0 != 0
			if $quest1 != 0
				if $quest2 != 0
					if $quest3 != 0
						DisableNpcOption(11)
					endif	
				endif
			endif
		endif
		
//		DisableNpcOption(1)
//		DisableNpcOption(2)
//		DisableNpcOption(3)
//		DisableNpcOption(4)
//		DisableNpcOption(5)
//		DisableNpcOption(6)
//		DisableNpcOption(7)
//		DisableNpcOption(8)
//		DisableNpcOption(9)
//		DisableNpcOption(10)

				
	}
	function OnOption0(){
	
//???????? 3647
//--------------????----------------		
		$info1 = IsTaskDone(-1 ,514)
		$info2 = IsTaskDone(-1 ,698)
		$info3 = IsTaskDone(-1 ,712)
		$info4 = IsTaskDone(-1 ,643)
		$info5 = IsTaskDone(-1 ,722)
		$info6 = IsTaskDone(-1 ,736)
		$info7 = IsTaskDone(-1 ,818)
		$info8 = IsTaskDone(-1 , 6)
		$info9 = IsTaskDone(-1 , 9)
		$info10 = IsTaskDone(-1 , 12)
		$info11 = IsTaskDone(-1 , 83)
		$info12 = IsTaskDone(-1 , 87)
		$info13 = IsTaskDone(-1 , 15)
		$info14 = IsTaskDone(-1 , 18)
		$info15 = IsTaskDone(-1 , 25)
		$info16 = IsTaskDone(-1 , 90)
		$info17 = IsTaskDone(-1 , 92)
		$info18 = IsTaskDone(-1 , 29)
		$info19 = IsTaskDone(-1 , 31)
		$info20 = IsTaskDone(-1 , 34)
		$info21 = IsTaskDone(-1 , 93)
		$info22 = IsTaskDone(-1 , 97)
		$info23 = IsTaskDone(-1 , 100)
		$info24 = IsTaskDone(-1 , 40)
		$info25 = IsTaskDone(-1 , 42)
		$info26 = IsTaskDone(-1 , 45)
		$info27 = IsTaskDone(-1 , 105)
		$info28 = IsTaskDone(-1 , 108)
		$info29 = IsTaskDone(-1 , 47)
		$info30 = IsTaskDone(-1 , 52)
		$info31 = IsTaskDone(-1 , 56)
		$info32 = IsTaskDone(-1 , 60)
		$info33 = IsTaskDone(-1 , 116)
		$info34 = IsTaskDone(-1 , 65)
		$info35 = IsTaskDone(-1 , 68)
		$info36 = IsTaskDone(-1 , 73)
		$info37 = IsTaskDone(-1 , 76)
		$info38 = IsTaskDone(-1 , 78)
		$info39 = IsTaskDone(-1 , 81)
		
		
//---------------????--------------------		
		$title1 = HaveTitle( -1, 210 )
		$title2 = HaveTitle( -1, 211 )
		$title3 = HaveTitle( -1, 212 )
		$title4 = HaveTitle( -1, 213 )
		$title5 = HaveTitle( -1, 214 )
		$title6 = HaveTitle( -1, 215 )
		$title7 = HaveTitle( -1, 216 )
		$title8 = HaveTitle( -1, 217 )
		$title9 = HaveTitle( -1, 218 )
		$title10 = HaveTitle( -1, 219 )
		$title11 = HaveTitle( -1, 220 )
		$title12 = HaveTitle( -1, 221 )
		$title13 = HaveTitle( -1, 222 )
		$title14 = HaveTitle( -1, 223 )
		$title15 = HaveTitle( -1, 224 )
		$title16 = HaveTitle( -1, 225 )
		$title17 = HaveTitle( -1, 226 )
		$title18 = HaveTitle( -1, 227 )
		$title19 = HaveTitle( -1, 228 )
		$title20 = HaveTitle( -1, 229 )
		$title21 = HaveTitle( -1, 230 )
		$title22 = HaveTitle( -1, 231 )
		$title23 = HaveTitle( -1, 232 )
		$title24 = HaveTitle( -1, 233 )
		$title25 = HaveTitle( -1, 234 )
		$title26 = HaveTitle( -1, 235 )
		$title27 = HaveTitle( -1, 236 )
		$title28 = HaveTitle( -1, 237 )
		$title29 = HaveTitle( -1, 238 )
		$title30 = HaveTitle( -1, 239 )
		$title31 = HaveTitle( -1, 240 )
		$title32 = HaveTitle( -1, 241 )
		$title33 = HaveTitle( -1, 242 )
		$title34 = HaveTitle( -1, 243 )
		$title35 = HaveTitle( -1, 244 )
		
			
//-----------??????--------------	
		$PlayerVar1 = GetPlayerVar( -1, 3647 )
		$PlayerVar2 = $PlayerVar1 + 1
		$PlayerVar3 = GetPlayerVar( -1, 3648 )
		
		if $PlayerVar3 == 1
			BC( "dialogbox", "player", -1, "You have already acquired the story of The Chronicles. Please do not redo it." )
			return
		endif
		if $PlayerVar1 >= 35
			BC( "dialogbox", "player", -1, "You have collected all the stories of The Chronicles." )
			return
		endif
			
		if $title1 != 0
			if $info1 == 0
				AddTitle( -1, 210 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			else
				if $info2 == 0
					AddTitle( -1, 210 )
					SetPlayerVar( -1, 3647, $PlayerVar2 )
				else		
					if $info3 == 0
						AddTitle( -1, 210 )
						SetPlayerVar( -1, 3647, $PlayerVar2 )
					endif
				endif
			endif
		endif	
	
		if $title2 != 0
			if $info4 == 0
				AddTitle( -1, 211 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			else
				if $info5 == 0
					AddTitle( -1, 211 )
					SetPlayerVar( -1, 3647, $PlayerVar2 )
				else	
					if $info6 == 0
						AddTitle( -1, 211 )
						SetPlayerVar( -1, 3647, $PlayerVar2 )
					endif
				endif
			endif
		endif
		
		if $title3 != 0
			if $info7 == 0
				AddTitle( -1, 212 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title4 != 0
			if $info8 == 0
				AddTitle( -1, 213 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title5 != 0
			if $info9 == 0
				AddTitle( -1, 214 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title6 != 0
			if $info10 == 0
				AddTitle( -1, 215 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif		
				
		if $title7 != 0
			if $info11 == 0
				AddTitle( -1, 216 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title8 != 0
			if $info12 == 0
				AddTitle( -1, 217 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title9 != 0
			if $info13 == 0
				AddTitle( -1, 218 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title10 != 0
			if $info14 == 0
				AddTitle( -1, 219 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title11 != 0
			if $info15 == 0
				AddTitle( -1, 220 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title12 != 0
			if $info16 == 0
				AddTitle( -1, 221 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title13 != 0
			if $info17 == 0
				AddTitle( -1, 222 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title14 != 0
			if $info18 == 0
				AddTitle( -1, 223 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title15 != 0
			if $info19 == 0
				AddTitle( -1, 224 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title16 != 0
			if $info20 == 0
				AddTitle( -1, 225 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title17 != 0
			if $info21 == 0
				AddTitle( -1, 226 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title18 != 0
			if $info22 == 0
				AddTitle( -1, 227 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif	
			
		if $title19 != 0
			if $info23 == 0
				AddTitle( -1, 228 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title20 != 0
			if $info24 == 0
				AddTitle( -1, 229 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title21 != 0
			if $info25 == 0
				AddTitle( -1, 230 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif	
			
		if $title22 != 0
			if $info26 == 0
				AddTitle( -1, 231 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title23 != 0
			if $info27 == 0
				AddTitle( -1, 232 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title24 != 0
			if $info28 == 0
				AddTitle( -1, 233 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title25 != 0
			if $info29 == 0
				AddTitle( -1, 234 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title26 != 0
			if $info30 == 0
				AddTitle( -1, 235 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title27 != 0	
			if $info31 == 0
				AddTitle( -1, 236 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title28 != 0	
			if $info32 == 0
				AddTitle( -1, 237 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title29 != 0
			if $info33 == 0
				AddTitle( -1, 238 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title30 != 0
			if $info34 == 0
				AddTitle( -1, 239 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title31 != 0
			if $info35 == 0
				AddTitle( -1, 240 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title32 != 0	
			if $info36 == 0
				AddTitle( -1, 241 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title33 != 0
			if $info37 == 0
				AddTitle( -1, 242 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title34 != 0	
			if $info38 == 0
				AddTitle( -1, 243 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		
		if $title35 != 0
			if $info39 == 0
				AddTitle( -1, 244 )
				SetPlayerVar( -1, 3647, $PlayerVar2 )
			endif
		endif
		BC( "dialogbox", "player", -1, "You have acquired a story of The Chronicles." )
		SetPlayerVar( -1, 3648,1)
		return
	}


	
	//----------????----------
	function OnOption1(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 ,"prestige",16 )
		if $a < 30
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16,30 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 6045 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Herb of Light" )
		endif
	}
	
	//----------????----------
	function OnOption2(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 30
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16,30 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 6047 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Herb of Magic" )
		endif
	}
	
	//----------?????----------
	function OnOption3(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 100
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16, 100 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 6046 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Fountain of Healing" )
		endif
	}
	
	//----------?????----------
	function OnOption4(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 100
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16, 100 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 6048 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You have obtained one Fountain of Mana." )
		endif
	}
	
	//----------?????----------
	function OnOption5(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 300
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16, 300 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 6060 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Basic Energy Potion." )
		endif
	}
	//----------???????----------
	function OnOption6(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 400
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16, 400 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 6061 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Medium Energy Potion!" )
		endif
	}
	//----------???????----------
	function OnOption7(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 600
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16, 600 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 6064 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Advanced Energy Potion." )
		endif
	}
	
	//----------??????----------
	
	function OnOption8(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 1000
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16, 1000 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 2211 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Embed Charm" )
		endif
	}
	
		//----------??????----------
	function OnOption9(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 1000
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16,1000 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 2203 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Soul Insignia Charm." )
		endif
	}
	
	//----------???????----------
	function OnOption10(){
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "prestige",16 )
		if $a < 2000
		BC( "messagebox", "player", -1, "Insufficient Scenario Score!" )
		return
		endif
		$r = SubPlayerInfo( -1, "prestige",16, 2000 )
		if $r != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 64405 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "Exchange completed. You got one Crystal of Double EXP" )
		endif
	}
	
	function OnOption11(){
		$quest0 = IsTaskAccept( -1, 6 )
		$Item0 = GetPlayerInfo( -1, "item", 12235 )
		if $quest0 == 0
			if $Item0 < 1
				AddPlayerInfo( -1, "item", 12235, 1 )
			endif
		endif
		
		$quest1 = IsTaskAccept( -1, 61 )
		$Item1 = GetPlayerInfo( -1, "item", 12323 )
		if $quest1 == 0
			if $Item1 < 1
				AddPlayerInfo( -1, "item", 12323, 1 )
			endif
		endif
		
		$quest2 = IsTaskAccept( -1, 110 )
		$Item2 = GetPlayerInfo( -1, "item", 64262 )
		if $quest2 == 0
			if $Item2 < 1
				AddPlayerInfo( -1, "item", 64262, 1 )
			endif
		endif
		
		$quest3 = IsTaskAccept( -1, 78 )
		$Item3 = GetPlayerInfo( -1, "item", 12647 )
		if $quest3 == 0
			if $Item3 < 1
				AddPlayerInfo( -1, "item", 12647, 1 )
			endif
		endif
		
		BC( "dialogbox", "player", -1, "You have already acquired the quest item." )
		return
	}
	
	function OnOption12(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$Title = HaveTitle( -1, 21 )
		if $Title == 0
			BC( "dialogbox", "player", -1, "You already have the title 'Demi-god'." )
			return
		endif
		
		$quest0 = IsTaskDone( -1, 61 )
		$Item0 = GetPlayerInfo( -1, "item", 12260 )
		if $quest0 == 0
			if $Item0 < 1
				AddPlayerInfo( -1, "item", 12260, 1 )
				BC( "dialogbox", "player", -1, "You have acquired Pure Devil Fruit!" )
				return
			else
				BC( "dialogbox", "player", -1, "You already have the Pure Devil Fruit." )
				return	
			endif
		else
			BC( "dialogbox", "player", -1, "You haven't finished the Demi-god quest." )
			return	
		endif
		
	}
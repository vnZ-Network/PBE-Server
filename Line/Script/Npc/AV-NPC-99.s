	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-99.s
	//		TaskID:??
	//
	//****************************************
	
	function OnRequest(){		
		//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	  DisableNpcOption(11)
     return
  endif
  	if $Now_Month != 2 
	   DisableNpcOption(11)
     return
  endif
  if $Now_Mday < 10
	   DisableNpcOption(11)
     return
  endif
   if $Now_Mday > 26
	   DisableNpcOption(11)
     return
  endif
  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 3
	   DisableNpcOption(11)
     return
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44638)	
			if $Info < 1
				DisableNpcOption(11)
				return
			endif	
		
	}
	
	//??????
	function OnOption0(){
		
		$Level = GetPlayerInfo( -1 , "level" )
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 65144 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have a World Tree Branch." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 65144, 1 )
		if $SubItem != 0
			return
		endif

		//???
		call Points1
		
		AddPlayerInfo( -1, "prestige", 9, 5 )
		//?????????? 
		if $Level >= 50
			if $Level <= 100
				AddPlayerInfo( -1, "prestige", 9, 20 )
				BC( "dialogbox", "player", -1, "You received a bonus 20 points of Reputation for being in the rewards level bracket!" )
			endif
		endif
		
		//???	
		call prestige
		
	}
	
	function OnOption1(){
		
		$Level = GetPlayerInfo( -1 , "level" )
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 65145 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Nether Classics." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 65145, 1 )
		if $SubItem != 0
			return
		endif
		
		//???
		call Points1
		
		AddPlayerInfo( -1, "prestige", 9, 10 )
		//?????????? 
		if $Level >= 60
			if $Level <= 110
				AddPlayerInfo( -1, "prestige", 9, 20 )
				BC( "dialogbox", "player", -1, "You received a bonus 20 points of Reputation for being in the rewards level bracket!" )
			endif
		endif		
		
		call prestige
		
	}
	
	function OnOption2(){
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$Level = GetPlayerInfo( -1 , "level" )
		$Item1 = GetPlayerInfo( -1, "item", 65142 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Conqueror's Gold Helm." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 65142, 1 )
		if $SubItem != 0
			return
		endif
		
		//???
		call Points1
		
		AddPlayerInfo( -1, "prestige", 9, 10 )
		//?????????? 
		if $Level >= 60
			if $Level <= 110
				AddPlayerInfo( -1, "prestige", 9, 30 )
				BC( "dialogbox", "player", -1, "You received a bonus 30 points of Reputation for being in the rewards level bracket!" )
			endif
		endif	
		
		call prestige
		
	}
	
	function OnOption3(){
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$Level = GetPlayerInfo( -1 , "level" )
		$Item1 = GetPlayerInfo( -1, "item", 65143 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Memphis Staff ." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 65143, 1 )
		if $SubItem != 0
			return
		endif
		
		//??? ??????????1?
		call Points2
		
		AddPlayerInfo( -1, "prestige", 9, 50 )
//		//?????????? 
//		if $Level >= 50
//			if $Level <= 70
//				AddPlayerInfo( -1, "prestige", 9, 20 )
//				BC( "dialogbox", "player", -1, "GUID:08042000011" )
//			endif
//		endif
		
		call prestige
		
	}
	
	function OnOption4(){
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$Level = GetPlayerInfo( -1 , "level" )
		$Item1 = GetPlayerInfo( -1, "item", 65147 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Horus' Piccolo." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 65147, 1 )
		if $SubItem != 0
			return
		endif
		
		//???
		call Points1
		
		AddPlayerInfo( -1, "prestige", 9, 5 )
		//?????????? 
		if $Level >= 50
			if $Level <= 100
				AddPlayerInfo( -1, "prestige", 9, 30 )
				BC( "dialogbox", "player", -1, "You received a bonus 30 points of Reputation for being in the rewards level bracket!" )
			endif
		endif
		
		call prestige
		
	}
	
	function OnOption5(){
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$Level = GetPlayerInfo( -1 , "level" )
		$Item1 = GetPlayerInfo( -1, "item", 65146 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Anubis' Judgment." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 65146, 1 )
		if $SubItem != 0
			return
		endif

		//??4 ???????1?		
		$weekday = GetSystemTime("week")
		if $weekday == 4
			call Points2
		else
			call Points1	
		endif
		
		
		AddPlayerInfo( -1, "prestige", 9, 10 )
		//?????????? 
		if $Level >= 90
			if $Level <= 120
				AddPlayerInfo( -1, "prestige", 9, 35 )
				BC( "dialogbox", "player", -1, "You received a bonus 35 points of Reputation for being in the rewards level bracket!" )
			endif
		endif
		
		call prestige
		
	}
	
	function OnOption6(){
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$Level = GetPlayerInfo( -1 , "level" )
		$Item1 = GetPlayerInfo( -1, "item", 65148 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Death's Scythe." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 65148, 1 )
		if $SubItem != 0
			return
		endif
		
		//??4 ?????????1?		
		$weekday = GetSystemTime("week")
		if $weekday == 4
			call Points2
		else
			call Points1	
		endif		
		
		AddPlayerInfo( -1, "prestige", 9, 10 )
		//?????????? 
		if $Level >= 90
			if $Level <= 120
				AddPlayerInfo( -1, "prestige", 9, 35 )
				BC( "dialogbox", "player", -1, "You received a bonus 35 points of Reputation for being in the rewards level bracket!" )
			endif
		endif
		
		call prestige
		
	}
	
	function OnOption7(){

		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$Level = GetPlayerInfo( -1 , "level" )
		$FieldLevel = GetFieldLevel(-1)
		
		$Item1 = GetPlayerInfo( -1, "item", 44047 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have a Legendary Nocturnal Pearl." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44047, 1 )
		if $SubItem != 0
			return
		endif
		
		//??3 ????????1?		
		$weekday = GetSystemTime("week")
		if $weekday == 3
			call Points2
		else
			call Points1	
		endif
		
		AddPlayerInfo( -1, "prestige", 9, 20 )
		//?????????? 
		if $Level >= 101
			if $FieldLevel <= 20
				AddPlayerInfo( -1, "prestige", 9, 25 )
				BC( "dialogbox", "player", -1, "You received a bonus 25 points of Reputation for being in the rewards level bracket!" )
			endif
		endif
		
		call prestige
		
	}
	
	function OnOption8(){
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$FieldLevel = GetFieldLevel(-1)
		$Item1 = GetPlayerInfo( -1, "item", 44241 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Mermaid Tears." )
			return
		endif
		
		//??3 ??????????1?		
		$weekday = GetSystemTime("week")
		if $weekday == 3
			call Points2
		else
			call Points1	
		endif		
		
		$SubItem = SubPlayerInfo( -1, "item", 44241, 1 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "prestige", 9, 30 )
		//?????????? 
		if $FieldLevel >= 20
			if $FieldLevel <= 45
				AddPlayerInfo( -1, "prestige", 9, 20 )
				BC( "dialogbox", "player", -1, "You received a bonus 20 points of Reputation for being in the rewards level bracket!" )
			endif
		endif
		
		call prestige
		
	}	
	
	function OnOption9(){
		
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "dialogbox", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif
		
		$FieldLevel = GetFieldLevel(-1)
		$Item1 = GetPlayerInfo( -1, "item", 44444 )
		if $Item1 < 1
			BC( "dialogbox", "player", -1, "You don't have Orpheus' Lute." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44444, 1 )
		if $SubItem != 0
			return
		endif
		
		//???
		call Points1
		
		AddPlayerInfo( -1, "prestige", 9, 50 )
		//?????????? 
		if $FieldLevel >= 25
			if $FieldLevel <= 45
				AddPlayerInfo( -1, "prestige", 9, 30 )
				BC( "dialogbox", "player", -1, "You received a bonus 30 points of Reputation for being in the rewards level bracket!" )
			endif
		endif
		
		call prestige
		
	}	
	
	function OnOption10(){
		
		$point = GetPlayerVar( -1 , 3364 )
	
		BC( "dialogbox", "player", -1, "Your points for Summon of the Goddess of Fate:" ,$point ,".")
		
		
	}		
	function OnOption11(){
	  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 3
     return
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44638)	
			if $Info < 1
				return
			endif

		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		 //???????
     $del_count = SubPlayerInfo( -1, "item", 44638, 1 )
     //??????????,????????
  if $del_count != 0
     return
  endif
		AddPlayerInfo( -1, "item", 44639, 1 )
		AddPlayerInfo( -1, "item", 59557, 1 )
		$playervar = $playervar + 1
		SetPlayerVar(-1, 3451, $playervar )
		BC( "dialogbox", "player", -1, "This is your lucky red envelope!\nGo to see {hAtlas[130]h} now! He'll be glad to see you." )
	}
	

	//???
	function Prestige(){

		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 1000
			if $prestige < 5000
				$Title = HaveTitle( -1, 41 )
				if $Title != 0
					AddTitle( -1, 41 )
				endif
			endif	
		endif
		if $prestige >= 5000
			if $prestige < 12000
				$Title = HaveTitle( -1, 42 )
				if $Title != 0
					AddTitle( -1, 42 )
				endif
			endif	
		endif
		if $prestige >= 12000
				$Title = HaveTitle( -1, 43 )
				if $Title != 0
					AddTitle( -1, 43 )
				endif
		endif		
		
}		

	//??? 3364  1? ?100 ?? 44399 1?
	function Points1(){
	
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "chat", "player", -1, "You need at least 1 empty spot in your bag!" )
     return
  endif
		
	$point = GetPlayerVar(-1, 3364)
	$point = $point + 1
	SetPlayerVar(-1, 3364, $point)
	BC("chat","player",-1,"Received 1 more point for Summon of the Goddess of Fate.")
	
	if $point >= 100
		$point = $point - 100
		SetPlayerVar(-1, 3364, $point)
		AddPlayerInfo(-1,"item",44399,1)
		BC("dialogbox","player",-1,"Congratulations! You have 100 points! You received Summon of the Goddess of Fate!")
	endif
		
	
}		

	//??? 3364  2? ?100 ?? 44399 1?
	function Points2(){
	
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "chat", "player", -1, "You need at least 1 empty spot in your bag!" )
     return
  endif
		
	$point = GetPlayerVar(-1, 3364)
	$point = $point + 2
	SetPlayerVar(-1, 3364, $point)
	BC("chat","player",-1,"Received 2 more points for Summon of the Goddess of Fate.")
	
	if $point >= 100
		$point = $point - 100
		SetPlayerVar(-1, 3364, $point)
		AddPlayerInfo(-1,"item",44399,1)
		BC("dialogbox","player",-1,"Congratulations! You have 100 points! You received Summon of the Goddess of Fate!")
	endif
		
	
}	
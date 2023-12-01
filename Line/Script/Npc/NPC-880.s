
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/29
	//		Author:???
	//		TaskName:NPC-880.s
	//		TaskID:  
	//****************************************
	
	function OnRequest(){
		
	}

	function OnOption0(){
		
	  $mytime = GetPlayerVar(-1 , 3861)
		$Now_Yday =  GetSystemTime( "yday" )
		$vip = IsDiamondVIP(-1)
		if $vip == 1
			BC( "dialogbox", "player", -1, "Only Platinum Nobles may search for the secret of the mysterious treasure. You can become a Platinum Noble by buying a Platinum Noble Card from the marketplace." )
			return
		endif

		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		if $mytime == $Now_Yday
			BC(  "dialogbox", "player", -1, "You've already searched for the treasure today. Try again tomorrow!" )
		else
			AddPlayerInfo(-1,"item",44357,1)
			BC( "screen", "player", -1, "Congratulations! You found the Deep Ocean Chest!" )
			SetPlayerVar( -1 , 3861 , $Now_Yday )
			#name = GetPlayerInfo(-1,"name")
			$mapid = GetPlayerInfo(-1,"mapid")
			BC("screen","map",$mapid,"The Platinum Noble player",#name," opened a Treasure of The Goddess of Luck, and received a Deep Ocean Chest!")
			BC("chat","map",$mapid,"The Platinum Noble player",#name," opened a Treasure of The Goddess of Luck, and received a Deep Ocean Chest!")
		endif

		
	}
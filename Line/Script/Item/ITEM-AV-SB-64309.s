 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/25
	//		Author:???
	//		TaskName:ITEM-AV-SB-64309.s
	//		TaskID:???
	//****************************************
	
	function OnUseItem(){
		$t =  GetSystemTime( "yday" )
		$lt = GetPlayerVar( -1 ,3690 )
		$a = GetPlayerVar( -1 ,3691 )
		$b = $a + 1
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 60
			BC( "screen", "player", -1, "You are not LV60 yet!" )
			return
		endif
		
		if $t == $lt
			if $a < 5
				$info1 = SubPlayerInfo ( -1 , "item" , 64309 , 1 )
				if  $info1 != 0
					return
				endif
				AddPlayerInfo( -1, "exp" , 1000000 )
				SetPlayerVar( -1 ,3691 , $b )
			else
				BC( "screen", "player", -1, "You can't use the crystal orb more than 5 times per day!" )
			endif
		else
			$info2 = SubPlayerInfo ( -1 , "item" , 64309 , 1 )
			if  $info2 != 0
				return
			endif
			AddPlayerInfo( -1, "exp" , 1000000 )
			SetPlayerVar( -1 ,3691 , 1 )
			SetPlayerVar( -1 ,3690 , $t )
		endif	
			
			
		
		
	}
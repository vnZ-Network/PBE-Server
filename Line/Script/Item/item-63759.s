	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/6/18
	//		Author:??
	//		TaskName:Item-63759.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
	
		$item = 63759
		$sex = GetPlayerInfo( -1, "sex")
		$profession = GetPlayerInfo( -1, "profession")
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item",$item , 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		//?????
		if $profession == 1
			if $sex == 0
				AddPlayerInfo( -1, "item", 36211, 1 )
			else
				AddPlayerInfo( -1, "item", 36216, 1 )
			endif
		endif
		
		//?????
		if $profession == 2
			if $sex == 0
				AddPlayerInfo( -1, "item", 36212, 1 )
			else
				AddPlayerInfo( -1, "item", 36217, 1 )
			endif
		endif
		
		//?????
		if $profession == 3
			if $sex == 0
				AddPlayerInfo( -1, "item", 36213, 1 )
			else
				AddPlayerInfo( -1, "item", 36218, 1 )
			endif
		endif
		
		//?????
		if $profession == 4
			if $sex == 0
				AddPlayerInfo( -1, "item", 36214, 1 )
			else
				AddPlayerInfo( -1, "item", 36219, 1 )
			endif
		endif
		
		//?????
		if $profession == 5
			if $sex == 0
				AddPlayerInfo( -1, "item", 36215, 1 )
			else
				AddPlayerInfo( -1, "item", 36220, 1 )
			endif
		endif
		
		//??????
		if $profession == 6
			if $sex == 0
				AddPlayerInfo( -1, "item", 36307, 1 )
			else
				AddPlayerInfo( -1, "item", 36308, 1 )
			endif
		endif
		
	}


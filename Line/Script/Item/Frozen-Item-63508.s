	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/13
	//		Author:???
	//		TaskName:Frozen-Item-63508.s
	//		TaskID:??NPC
	//
	//****************************************		
		
	function OnUseItem(){		
		
		$qualification = GetFrozenFortWarPos( -1 )
		if $qualification == 0
			BC( "screen", "player", -1, "Your guild is not qualified to use Battlefield Portal Charm!" )
			return
		endif
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		if $mapid != 65
			BC( "screen", "player", -1, "Battlefield Portal Charm is available only at Frozen Battlefield " )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 63508 , 1 )
		if $nfo != 0
			return
		endif
		if $qualification == 1
			FlyToMap( -1 , 65 , 66 , 53 )
			return
		endif
		if $qualification == 2
			FlyToMap( -1 , 65 , 71 , 56 )
			return
		endif
		if $qualification == 3
			FlyToMap( -1 , 65 , 69 , 65 )
			return
		endif
		if $qualification == 4
			FlyToMap( -1 , 65 , 62 , 68 )
			return
		endif
		if $qualification == 5
			FlyToMap( -1 , 65 , 54 , 63 )
			return
		endif
		if $qualification == 6
			FlyToMap( -1 , 65 , 54 , 55 )
			return
		endif
		
	}
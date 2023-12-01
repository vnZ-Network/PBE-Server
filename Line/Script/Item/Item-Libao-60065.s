	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/30
	//		Author:???
	//		TaskName:Item-Libao-60065.s
	//		TaskID:????75?
	//
	//****************************************
	
	
	
function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 75
			BC( "screen", "player", -1, "You are not LV75 yet." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 9
			BC( "dialogbox", "player", -1, "You need at least 9 empty slots in your bag." )
			return
		endif
		
		$SubPlayer = SubPlayerInfo( -1, "item", 60065, 1 )
		if $SubPlayer != 0
			return
		endif
		
		$object = GetPlayerInfo( -1, "profession" )
		if $object == 1
			AddPlayerInfo( -1, "item", 19806, 1 )
			AddPlayerInfo( -1, "item", 5003, 3 )
		endif
		if $object == 2
			AddPlayerInfo( -1, "item", 19826, 1 )
			AddPlayerInfo( -1, "item", 5003, 3 )
		endif
		if $object == 3
			AddPlayerInfo( -1, "item", 19846, 1 )
			AddPlayerInfo( -1, "item", 5003, 3 )
		endif
		if $object == 4
			AddPlayerInfo( -1, "item", 19866, 1 )
			AddPlayerInfo( -1, "item", 5023, 3 )
		endif
		if $object == 5
			AddPlayerInfo( -1, "item", 19886, 1 )
			AddPlayerInfo( -1, "item", 5023, 3 )
		endif
		
		AddPlayerInfo( -1, "item", 64401, 3 )
		AddPlayerInfo( -1, "item", 5, 15 )
		AddPlayerInfo( -1, "item", 64380, 4 )
		AddPlayerInfo( -1, "item", 60062, 1 )
		
		$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			AddPlayerInfo( -1, "item", 36457, 1 )
		else
			AddPlayerInfo( -1, "item", 36456, 1 )
		endif
		
	}	
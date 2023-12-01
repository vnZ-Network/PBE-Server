	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/30
	//		Author:???
	//		TaskName:Item-Libao-60063.s
	//		TaskID:????45?
	//
	//****************************************
	
	
	
function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 45
			BC( "screen", "player", -1, "You are not LV45 yet." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 6
			BC( "dialogbox", "player", -1, "You need at least 6 empty slots in your bag." )
			return
		endif
		
		$SubPlayer = SubPlayerInfo( -1, "item", 60063, 1 )
		if $SubPlayer != 0
			return
		endif
		
		$object = GetPlayerInfo( -1, "profession" )
		if $object == 1
			AddPlayerInfo( -1, "item", 19803, 1 )
		endif
		if $object == 2
			AddPlayerInfo( -1, "item", 19823, 1 )
		endif
		if $object == 3
			AddPlayerInfo( -1, "item", 19843, 1 )
		endif
		if $object == 4
			AddPlayerInfo( -1, "item", 19863, 1 )
		endif
		if $object == 5
			AddPlayerInfo( -1, "item", 19883, 1 )
		endif
		
		AddPlayerInfo( -1, "item", 60060, 1 )
		AddPlayerInfo( -1, "item", 1, 60 )
		AddPlayerInfo( -1, "item", 60039, 10 )
		
		$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			AddPlayerInfo( -1, "item", 36453, 1 )
		else
			AddPlayerInfo( -1, "item", 36452, 1 )
		endif
		
		AddPlayerInfo( -1, "item", 64378, 20 )
		
	}	
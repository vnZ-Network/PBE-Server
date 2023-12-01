	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/30
	//		Author:???
	//		TaskName:Item-Libao-60064.s
	//		TaskID:????60?
	//
	//****************************************
	
	
	
function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 60
			BC( "screen", "player", -1, "You are not LV60 yet." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 8
			BC( "dialogbox", "player", -1, "You need at least 8 empty slots in your bag." )
			return
		endif
		
		$SubPlayer = SubPlayerInfo( -1, "item", 60064, 1 )
		if $SubPlayer != 0
			return
		endif
		
		$object = GetPlayerInfo( -1, "profession" )
		if $object == 1
			AddPlayerInfo( -1, "item", 19804, 1 )
			AddPlayerInfo( -1, "item", 5003, 2 )
		endif
		if $object == 2
			AddPlayerInfo( -1, "item", 19824, 1 )
			AddPlayerInfo( -1, "item", 5003, 2 )
		endif
		if $object == 3
			AddPlayerInfo( -1, "item", 19844, 1 )
			AddPlayerInfo( -1, "item", 5003, 2 )
		endif
		if $object == 4
			AddPlayerInfo( -1, "item", 19864, 1 )
			AddPlayerInfo( -1, "item", 5023, 2 )
		endif
		if $object == 5
			AddPlayerInfo( -1, "item", 19884, 1 )
			AddPlayerInfo( -1, "item", 5023, 2 )
		endif
		
		AddPlayerInfo( -1, "item", 60061, 1 )
		AddPlayerInfo( -1, "item", 5, 6 )
		AddPlayerInfo( -1, "item", 1, 60 )
		AddPlayerInfo( -1, "item", 64379, 8 )
		
		$sex = GetPlayerInfo( -1, "sex" )
		if $sex == 0
			AddPlayerInfo( -1, "item", 36454, 1 )
		else
			AddPlayerInfo( -1, "item", 36455, 1 )
		endif
		
	}	
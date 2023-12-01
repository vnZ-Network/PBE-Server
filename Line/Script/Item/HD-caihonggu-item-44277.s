	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/25
	//		Author:???
	//		TaskName:HD-caihonggu-item-44277.s
	//		TaskID:????
	//
	//****************************************

	function OnUseItem(){

		$ectype_id = GetEctypeID(-1 , 558)
		$mapx = GetPlayerInfo( -1 , "mapposx")
		$mapy = GetPlayerInfo( -1 , "mapposy")

		if $ectype_id < 25301
			BC("screen","player",-1,"The Iris Crystal can only be used in Dream Rainbow Valley 1")
			return
		endif
		
		if $ectype_id > 25400
			BC("screen","player",-1,"The Iris Crystal can only be used in Dream Rainbow Valley 2")
			return
		endif

		if $mapx != 206
			BC("screen","player",-1,"The Iris Crystal can only be used at 206,186 1")
			return
		endif
		
		if $mapy != 186
			BC("screen","player",-1,"The Iris Crystal can only be used at 206,186 2")
			return
		endif	
		

		$lv = GetPlayerInfo(-1 , "level")
		$monster_fieldlevel = GetFieldLevel( -1 )

//		if $del_count == 0
//			AddMonsterByFloat(52371 , 1 , $ectype_id , 206 , 186 , 0 , -1 )
//			return
//		endif
		
		if $monster_fieldlevel > 0
			SubPlayerInfo(-1, "item", 44277, 1)
			AddLevelFieldMonster( 52371 , 218 , $lv , 218 , $monster_fieldlevel , 1 , $ectype_id , 80 , 71 , 1)
			BC( "screen" , "map" , $ectype_id , "The Iris Crystal emits dazzling, rainbow-colored rays of light, forcing all the contagion in the area to collect here - which transforms into a Tormented Angel!")
		else
			SubPlayerInfo(-1, "item", 44277, 1)
			AddLevelMonster( 52371 , 218 , $lv , 1 , $ectype_id , 80 , 71 , 1)
			BC( "screen" , "map" , $ectype_id , "The Iris Crystal emits dazzling, rainbow-colored rays of light, forcing all the contagion in the area to collect here - which transforms into a Tormented Angel!")
		endif		


	}
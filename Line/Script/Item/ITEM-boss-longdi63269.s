	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/12
	//		Author:??
	//		TaskName:ITEM-boss-longdi63269.s
	//		TaskID:BOOS?
	//
	//****************************************



	function OnUseItem(){
	
	
	
	
		$today_time = GetSystemTime( "yday" )
		//?????boss???
		$use_number = GetPlayerVar( -1 , 3665 )
		//??????boss????
		$use_time = GetPlayerVar( -1 , 3664 )
		
		//????????????????,?????
		if $use_time == $today_time
			if $use_number >= 10
				BC( "screen", "player", -1, "You cannot use more than 10 Soul Cards per day!" )
				return
			endif
		endif
		
		 $map_id = GetPlayerInfo(-1 , "mapid")
		 $map_x = GetPlayerInfo(-1 , "mapx")
		 $map_y = GetPlayerInfo(-1 , "mapy")
		 
		 if $map_id != 66
		 	BC( "screen", "player", -1, "You cannot summon outside Devilhunter Gorge!" )
		 	return
		 endif
		 
		 $revalue = IsTaskAccept(-1 , 960)
		 if $revalue == 0
		 	BC( "screen", "player", -1, "You have already acquired the quest God's Nightmare!" )
		 	return
		 endif
		 
	     $count = GetTaskCount ( -1 )
		 if $count >= 20
		 	BC( "dialogbox", "player", -1, "Quest list is full. Please try again after clearing up your quest list." )
			return
		 endif
		 
		 $is_revalue = SubPlayerInfo(-1 ,"item" ,63269 , 1)
		 if $is_revalue == 0
		 	AcceptTask(-1 , 960)
		 	AddMonster( 30034, 1, $map_id, $map_x, $map_y, 0 ,-1)
		 	#player_name = GetPlayerInfo( -1, "name" )
			BC( "screen", "server", -1, "The hero ",#player_name ," has summoned Dragon Emperor's Soul in Devilhunter Gorge!" )
			
			//???????????
			if $use_time == $today_time
				$number = GetPlayerVar( -1, 3665 )
				$number = $number + 1
				SetPlayerVar( -1, 3665, $number )
			else
				SetPlayerVar( -1, 3664, $today_time )
				$number = 1
				SetPlayerVar( -1, 3665, $number )
			endif
			BC( "screen", "player", -1, "You have used ",$number," Soul Cards today." )
		 endif
	}

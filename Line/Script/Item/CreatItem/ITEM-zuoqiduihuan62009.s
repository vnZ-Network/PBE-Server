	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/17
	//		Author:??
	//		TaskName:ITEM-zuoqiduihuan62009.s
	//		TaskID:???????????
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 25
			BC( "screen", "player", -1, "Level too low to proceed!" )
			return
		endif
	
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$revalue = SubPlayerInfo( -1, "item", 62009, 1)
		if $revalue == 0
			$pro = GetPlayerInfo( -1, "profession" )
		//1:??
		//2:??
		//3:??
		//4:??
		//5:??
			if $pro == 1
				AddPlayerInfo( -1, "item", 62005, 1 )
				//BC( "screen", "player", -1, "GUID:06088000002" )
				return
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 62000, 1 )
				//BC( "screen", "player", -1, "GUID:06088000003" )
				return
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 62001, 1 )
				//BC( "screen", "player", -1, "GUID:06088000004" )
				return
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 62002, 1 )
				//BC( "screen", "player", -1, "GUID:06088000005" )
				return
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 62004, 1 )
				//BC( "screen", "player", -1, "GUID:06088000006" )
				return
				AddPlayerInfo( -1, "item", 62004, 1 )
				//BC( "screen", "player", -1, "GUID:06088000007" )
				return
			endif	
			if $pro == 6
				AddPlayerInfo( -1, "item", 62081, 1 )
				//BC( "screen", "player", -1, "GUID:06088000008" )
				return
			endif	
		endif
		

		

		
	}
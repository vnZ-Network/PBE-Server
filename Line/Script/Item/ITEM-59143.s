	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/26
	//		Author:???
	//		TaskName:ITEM-59143.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		//????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	
		if $bag_count < 5
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//????
		$revalue = SubPlayerInfo( -1, "item", 59143, 1)
		if $revalue == 0
			$pro = GetPlayerInfo( -1, "profession" )
		//1:??
		//2:??
		//3:??
		//4:??
		//5:??
			if $pro == 1
				AddPlayerInfo( -1, "item", 53078, 1 )
				//BC( "screen", "player", -1, "GUID:06326000001" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06326000002" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06326000003" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06326000004" )
				return
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 53084, 1 )
				//BC( "screen", "player", -1, "GUID:06326000005" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06326000006" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06326000007" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06326000008" )
				return
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 53090, 1 )
				//BC( "screen", "player", -1, "GUID:06326000009" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06326000010" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06326000011" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06326000012" )
				return
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 53081, 1 )
				//BC( "screen", "player", -1, "GUID:06326000013" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06326000014" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06326000015" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06326000016" )
				return
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 53087, 1 )
				//BC( "screen", "player", -1, "GUID:06326000017" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06326000018" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06326000019" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06326000020" )
				return
			endif	
			if $pro == 6
				AddPlayerInfo( -1, "item", 53081, 1 )
				//BC( "screen", "player", -1, "GUID:06326000021" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06326000022" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06326000023" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06326000024" )
				return
			endif
		endif

						
	}
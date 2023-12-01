	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level50.s
	//		TaskID:????????-50???
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 50
			BC( "chat", "player", -1, "You must open the chest above level 50" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		

		$vip_id = GetRookieCardID(-1)
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		
		if $vip_id == 1801
			if $bag_count < 4	
				BC( "chat", "player", -1, "You do not have enough space in your bag." )
				return
			endif
		else
			if $bag_count < 2	
				BC( "chat", "player", -1, "You do not have enough space in your bag." )
				return
			endif
		endif
		

		//???????
		$del_count = SubPlayerInfo( -1, "item", 63033, -1 )
		//??????????
		if $del_count != 0
			return
		endif

//46????????,?????????90?,??????????90?,???????????????????By???		
//		$is_get = GetPlayerVar(-1 , 46)
//		if $is_get != 0
//			BC( "screen", "player", -1, "GUID:05150000003" )
//		else
			//?????
			AddPlayerInfo( -1, "item", 59161, 1 )
//			SetPlayerVar(-1 , 46 , 1)
//		endif
		
		if $vip_id == 1801
			
			AddPlayerInfo( -1, "item", 63667, 1 )
			AddPlayerInfo(-1 , "exp" , 945000)
		endif
		AddPlayerInfo( -1, "item", 59929, 1 )
		AddPlayerInfo( -1, "item", 59138, 1 )
		ReqAsk( -1, 6 )
//		$pro = GetPlayerInfo( -1, "profession" )
//		
//		if $pro == 1
//			AddPlayerInfo( -1, "item", 39620, 1 )
//		endif
//		if $pro == 2
//			AddPlayerInfo( -1, "item", 39621, 1 )
//		endif	
//		if $pro == 3
//			AddPlayerInfo( -1, "item", 39622, 1 )
//		endif
//		if $pro == 4
//			AddPlayerInfo( -1, "item", 39623, 1 )
//		endif
//		if $pro == 5
//			AddPlayerInfo( -1, "item", 39624, 1 )
//		endif

	}
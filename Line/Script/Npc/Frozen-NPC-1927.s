	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/20
	//		Author:???
	//		TaskName:Frozen-NPC-1927.s
	//		TaskID: ??????
	//
	//****************************************
	
	function OnRequest(){
	
//		$rank = GetPlayerInfo( -1 , "guildrank" )
//		if $rank != 0
//			DisableNpcOption(0)
//		endif
//		$week = GetSystemTime( "week" )
//		$hour = GetSystemTime( "hour" )
//		$minute =  GetSystemTime( "minute")
//		if $week == 1
//			DisableNpcOption(0)
//		endif
//		if $week == 2
//			DisableNpcOption(0)
//		endif
//		if $week == 3
//			DisableNpcOption(0)
//		endif
//		if $week == 4 
//			DisableNpcOption(0)
//		endif
//		if $week == 5
//			DisableNpcOption(0)
//		endif
//		if $week == 6
//			if $hour < 20
//				DisableNpcOption(0)
//			endif
//			if $hour == 20
//				if $minute < 2
//					DisableNpcOption(0)
//				endif
//			endif
//		endif
//		if $week == 0
//			if $hour > 21
//				DisableNpcOption(0)
//			endif
//		endif
	}
	
	function OnOption0(){
	
//		$week = GetSystemTime( "week" )
//		$yday = GetSystemTime( "yday" )
//		$hour = GetSystemTime( "hour" )
//		$minute =  GetSystemTime( "minute")
//		$guildid = GetPlayerInfo ( -1 , "guildid" )
//		
//		//----??????????--------??---????????? 0 1 --------
//		// ?? ?? 0  ??????????????
//		// ?? ?? 1  ???????
//		// ??????????????
//		
//		if $week == 1
//			return
//		endif
//		if $week == 2
//			return
//		endif
//		if $week == 3
//			return
//		endif
//		if $week == 4 
//			return
//		endif
//		if $week == 5
//			return
//		endif
//		if $week == 6
//			if $hour < 20
//				return
//			endif
//			if $hour == 20
//				if $minute < 2
//					return
//				endif
//			endif
//		endif
//		if $week == 0
//			if $hour > 22
//				return
//			endif
//		endif
//		
//		if $guildid == 0
//			return
//		endif
//		
//		//?????? ????????,??????
//		$qualification = GetFrozenFortWarPos( -1 )
//		if $qualification == 0
//			BC( "dialogbox", "player", -1, "GUID:08044000000" )
//			return
//		endif
//		$rank = GetPlayerInfo( -1 ,"guildrank" )
//		if $rank != 0
//			return
//		endif
//		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
//		if $no_bag < 5
//			BC( "dialogbox", "player", -1, "GUID:08044000001" )
//			return
//		endif
//		
//	//----??????????----------??---????????? 0 1 --------
//		// ?????
//		$next_day = GetGuildVar( $guildid , 3 )
//		if $next_day == 0
//			SetGuildVar( $guildid , 0 , 0 )
//			SetGuildVar( $guildid , 1 , 0 )
//			SetGuildVar( $guildid , 2 , 0 )
//			SetGuildVar( $guildid , 3 , $yday)
//		endif
//		// ????
//		if $yday >= $next_day
//			$dis_days = $yday - $next_day
//			if $dis_days >= 6
//				SetGuildVar( $guildid , 0 , 0 )
//				SetGuildVar( $guildid , 1 , 0 )
//				SetGuildVar( $guildid , 2 , 0 )
//				SetGuildVar( $guildid , 3 , $yday)
//			endif
//		else
//			$temp_value = $yday + 365
//			$dis_days = $temp_value - $next_day
//			if $dis_days >= 6
//				SetGuildVar( $guildid , 0 , 0 )
//				SetGuildVar( $guildid , 1 , 0 )
//				SetGuildVar( $guildid , 2 , 0 )
//				SetGuildVar( $guildid , 3 , $yday)
//			endif
//		endif
//		$getitem = GetGuildVar( $guildid , 1 )
//		if $getitem == 1
//			BC( "dialogbox", "player", -1, "GUID:08044000002" )
//			return
//		endif
//		if $qualification == 1
//			AddPlayerInfo ( -1 , "item" , 63453 , 5 )
//			SetGuildVar( $guildid , 1 , 1 )
//			return
//		endif
//		if $qualification == 2
//			AddPlayerInfo ( -1 , "item" , 63456 , 5 )
//			SetGuildVar( $guildid , 1 , 1 )
//			return
//		endif
//		if $qualification == 3
//			AddPlayerInfo ( -1 , "item" , 63457 , 5 )
//			SetGuildVar( $guildid , 1 , 1 )
//			return
//		endif
//		if $qualification == 4
//			AddPlayerInfo ( -1 , "item" , 63458 , 5 )
//			SetGuildVar( $guildid , 1 , 1 )
//			return
//		endif
//		if $qualification == 5
//			AddPlayerInfo ( -1 , "item" , 63459 , 5 )
//			SetGuildVar( $guildid , 1 , 1 )
//			return
//		endif
//		if $qualification == 6
//			AddPlayerInfo ( -1 , "item" , 63460 , 5 )
//			SetGuildVar( $guildid , 1 , 1 )
//			return
//		endif
//	
//		
	}
	
	
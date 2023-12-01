//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/10/08
//	--		Author:???
//	--		Class:	.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

//3325		      ???????????
//4009	        ???????????

function OnUseItem(){
	//???????
	$today_time = GetSystemTime( "yday" )
	//????
	$use_number = GetPlayerVar( -1 , 3325 )
	//???????
	$last_use_time = GetPlayerVar( -1 , 4009 )

	
	$level = GetPlayerInfo( -1, "level" )
	
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
	if $bag_count < 1
		BC( "screen", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	
//	if $revalue != 0
//		BC( "screen", "player", -1, "GUID:06229000001" )
//		return
//	endif
	
		if $today_time != $last_use_time
			SetPlayerVar(-1, 3325, 0 )
			SetPlayerVar(-1, 4009, $today_time )
		endif
		
		//????
		$use_number = GetPlayerVar( -1 , 3325 )
	
		if $use_number < 10
			$revalue = SubPlayerInfo( -1, "item", 44101, 1)
			$use_number = $use_number + 1
			SetPlayerVar (-1, 3325, $use_number )


			if $level < 90
				if $level > 74
					AddPlayerInfo( -1, "givepoint", 3000 )
					AddPlayerInfo( -1, "item", 6064, 1 )		
				endif
			endif

			if $level < 105
				if $level > 89
					AddPlayerInfo( -1, "givepoint", 3500 )
					AddPlayerInfo( -1, "item", 6064, 1 )
				endif
			endif
	
			if $level < 120
				if $level > 104
					AddPlayerInfo( -1, "givepoint", 4000 )
					AddPlayerInfo( -1, "item", 6064, 1 )
				endif
			endif
	
			if $level > 119
				AddPlayerInfo( -1, "givepoint", 5000 )
				AddPlayerInfo( -1, "item", 6064, 1 )
			endif	
		else
			BC( "screen", "player", -1, "You can not use this today." )
		endif

}
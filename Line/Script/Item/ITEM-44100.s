//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/10/08
//	--		Author:???
//	--		Class:	.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

//3324		      ???????????
//4008	        ???????????

function OnUseItem(){
	//???????
	$today_time = GetSystemTime( "yday" )
	//????
	$use_number = GetPlayerVar( -1 , 3324 )
	//???????
	$last_use_time = GetPlayerVar( -1 , 4008 )
	//??????
	
	
	$level = GetPlayerInfo( -1, "level" )
	
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
	if $bag_count < 1
		BC( "screen", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	
//	if $revalue != 0
//		BC( "screen", "player", -1, "GUID:06228000001" )
//		return
//	endif
	
		if $today_time != $last_use_time
			SetPlayerVar(-1, 3324, 0 )
			SetPlayerVar(-1, 4008, $today_time )
		endif
		
		//????
		$use_number = GetPlayerVar( -1 , 3324 )
		
		if $use_number < 3
			$revalue = SubPlayerInfo( -1, "item", 44100, 1)
			$use_number = $use_number + 1
			SetPlayerVar (-1, 3324, $use_number )

				if $level < 45
					AddPlayerInfo( -1, "givepoint", 300 )
					AddPlayerInfo( -1, "item", 64402, 1 )
				endif		

				if  $level < 60
					if $level > 44
						AddPlayerInfo( -1, "givepoint", 400 )
						AddPlayerInfo( -1, "item", 64402, 1 )
					endif		
				endif

				if $level < 75
					if $level > 59
						AddPlayerInfo( -1, "givepoint", 500 )
						AddPlayerInfo( -1, "item", 64402, 1 )
					endif	
				endif

				if $level < 90
					if $level > 74
						AddPlayerInfo( -1, "givepoint", 600 )
						AddPlayerInfo( -1, "item", 64402, 1 )
					endif
				endif	

				if $level < 105
					if $level > 89
						AddPlayerInfo( -1, "givepoint", 700 )
						AddPlayerInfo( -1, "item", 64402, 1 )			
					endif
				endif	

				if $level < 120
					if $level > 104
						AddPlayerInfo( -1, "givepoint", 800 )
						AddPlayerInfo( -1, "item", 64402, 1 )
					endif	
				endif

				if $level > 119
					AddPlayerInfo( -1, "givepoint", 1000 )
					AddPlayerInfo( -1, "item", 64402, 1 )
				endif
		else
			BC( "screen", "player", -1, "You can not use this today." )
		endif	

}
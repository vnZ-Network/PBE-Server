//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/10/08
//	--		Author:???
//	--		Class:	.s
//	--		AIName:
//	--		Remark:
//	----------------------------------------------------

//3323		      ???????????
//4007	        ???????????

function OnUseItem(){
	
	$level = GetPlayerInfo( -1,"level")
	$exp = $level * $level
	$exp0 = $exp * 3
	
	$exp1 = $level * 4
	$exp2 = $exp1 - 76
	$exp3 = $exp2 / 100
	$exp4 = $exp0 * $exp3	
		
	
	//???????
	$today_time = GetSystemTime( "yday" )
	//????
	$use_number = GetPlayerVar( -1 , 3323 )
	//???????
	$last_use_time = GetPlayerVar( -1 , 4007 )
	//??????
	
	
//	if $revalue != 0
//		BC( "screen", "player", -1, "GUID:06227000000" )
//		return
//	endif
	
		if $today_time != $last_use_time	
			SetPlayerVar(-1, 3323, 0 )
			SetPlayerVar(-1, 4007, $today_time )
		endif	
		
		//????
		$use_number = GetPlayerVar( -1 , 3323 )
			
		if $use_number < 10

			$revalue = SubPlayerInfo( -1, "item", 44099, 1)
			$use_number = $use_number + 1
			SetPlayerVar (-1, 3323, $use_number )
			
			if $level < 45
				AddPlayerInfo( -1, "exp", $exp0 )			
			else
				AddPlayerInfo( -1, "exp", $exp4 )					
			endif
			//?????
			//????? = ????^2+0.6*????+1000
			//????? = ????? * 0.1
			$fieldlevel = GetFieldLevel(-1)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp / 10
			if $fieldlevel > 0
				AddFieldExp( -1 , $godexp )
			endif
		else
			BC( "screen", "player", -1, "You can not use this today." )
		endif			
		
	 
//		if $use_number > 10
//			BC( "screen", "player", -1, "You can not use this today." )
//			return
//		endif
//		
//		if $level < 45
//			$use_number = $use_number + 1
//			AddPlayerInfo( -1, "exp", $exp0 )
//			SetPlayerVar( -1, 3323, $use_number )
//			return
//		endif
//	
//		if $level >= 45
//			$use_number = $use_number + 1
//			AddPlayerInfo( -1, "exp", $exp4 )
//			SetPlayerVar( -1, 3323, $use_number )
//			return
//		endif
//	endif
}
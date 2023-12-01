//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2009/2/17
//		Author:??
//		TaskName:??????????
//		TaskID:NPC-huoyuedufagongzi.s
////
////****************************************
//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2012-9-2
//		Author:??
//		TaskName:11???????10????
//		TaskID:NPC-huoyuedufagongzi.s
////
////****************************************
function OnRequest(){
}
function OnOption0(){
			//??id
		$juanzhou = 44382
		//??????
		$shuijing = 300
		//????id
		$chuizi = 2340
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
		if $shuijingnum < $shuijing
			BC( "screen", "player", -1, "You don't have enough Major Fortify Crystals in your bag!" )
			return			
		endif
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		//?????
		$result = SubPlayerInfo( -1, "item", 44382, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum1
				endif				
			endif
			//shuijing2
			if $shuijingnum2 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 5, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 5, $shuijingnum2 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum2
				endif				
			endif
			//shuijing3
			if $shuijingnum3 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum3
				endif				
			endif
			//shuijing4
			if $shuijingnum4 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 10, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 10, $shuijingnum4 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum4
				endif				
			endif
			//??????????
			if $shuijing == 0
				AddPlayerInfo( -1, "item", $chuizi, 3 )
			endif
		endif
}
function OnOption1(){
			//??id
		$juanzhou = 44380
		//??????
		$shuijing = 150
		//????id
		$chuizi = 2338
		//????
		$juanzhounum = GetPlayerInfo( -1, "item", $juanzhou )
		$shuijingnum1 = GetPlayerInfo( -1, "item", 9 )
		$shuijingnum2 = GetPlayerInfo( -1, "item", 5 )
		$shuijingnum3 = GetPlayerInfo( -1, "item", 2 )
		$shuijingnum4 = GetPlayerInfo( -1, "item", 10 )
		$shuijingnum = $shuijingnum1 + $shuijingnum2
		$shuijingnum = $shuijingnum + $shuijingnum3
		$shuijingnum = $shuijingnum + $shuijingnum4
		if $juanzhounum < 1
			BC( "screen", "player", -1, "Your Hephaestus' Hammer Coupon is not the right level!" )
			return			
		endif
		if $shuijingnum < $shuijing
			BC( "screen", "player", -1, "You don't have enough Major Fortify Crystals in your bag!" )
			return			
		endif
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		//?????
		$result = SubPlayerInfo( -1, "item", 44380, 1 )
		BC( "screen", "player", -1, "Successfully removed scroll" )
		if $result == 0
			//??1
			if $shuijingnum1 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 9, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 9, $shuijingnum1 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum1
				endif				
			endif
			//shuijing2
			if $shuijingnum2 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 5, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 5, $shuijingnum2 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum2
				endif				
			endif
			//shuijing3
			if $shuijingnum3 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 2, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 2, $shuijingnum3 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum3
				endif				
			endif
			//shuijing4
			if $shuijingnum4 >= $shuijing
				$result = SubPlayerInfo( -1, "item", 10, $shuijing )
				if $result == 0
					$shuijing = $shuijing - $shuijing
				endif
			else
				$result = SubPlayerInfo( -1, "item", 10, $shuijingnum4 )
				if $result == 0
					$shuijing = $shuijing - $shuijingnum4
				endif				
			endif
			//??????????
			if $shuijing == 0
				AddPlayerInfo( -1, "item", $chuizi, 3 )
			endif
		endif
}

//8???????5????????
//	function OnOption2(){
//	
//		//??
//		$itemcard_id = 0
//		$itemcardsub = 0
//		$itembox_id = 44608
//		$itemboxadd = 5
//		$itemsubmax = 8
//		$itemsub_ID_A = 59979
//		$itemsub_ID_B = 59976
//		#itemcardname = "N/A"
//		#itemboxname = "GUID:08208000008"
//		#itemsubname = "GUID:08208000009"
//		//??
//		if $itemcardsub > 0
//			$itemcard = GetPlayerInfo(-1,"item",$itemcard_id)
//			if $itemcard < $itemcardsub
//				BC("dialogbox","player",-1,"GUID:08208000010",$itemcardsub,"GUID:08208000011",#itemcardname,"!")
//				return
//			endif
//		endif
//		if $itemsubmax > 0
//			//--------------------------------
//			$itemsub_A = GetPlayerInfo(-1,"item",$itemsub_ID_A)
//			$itemsub_B = GetPlayerInfo(-1,"item",$itemsub_ID_B)
//			$itemtotal += $itemsub_A
//			$itemtotal += $itemsub_B
//			//--------------------------------
//			if $itemtotal < $itemsubmax
//				BC("dialogbox","player",-1,"GUID:08208000012",$itemsubmax,"GUID:08208000013",#itemsubname,"GUID:08208000014",$itemboxadd,"GUID:08208000015",#itemboxname,"GUID:08208000016")
//				return
//			endif
//		endif
//		$nullitem = GetPlayerInfo(-1,"nullitem",0)
//		if $nullitem < 1
//			BC("dialogbox","player",-1,"GUID:08208000017")
//			return
//		endif
//		//??
//		if $itemcardsub > 0
//			$resultcard = SubPlayerInfo(-1,"item",$itemcard_id,$itemcardsub)
//		else
//			$resultcard = 0
//		endif
//		$totalsub = $itemsubmax
//		//--------------------------------
//		if $itemsub_A >= $totalsub
//			$subitem = $totalsub
//		else
//			$subitem = $itemsub_A
//		endif
//		$result = SubPlayerInfo(-1,"item",$itemsub_ID_A,$subitem)
//		if $result == 0
//			$totalsub = $totalsub - $subitem
//		endif
//		//--------------------------------
//		if $itemsub_B >= $totalsub
//			$subitem = $totalsub
//		else
//			$subitem = $itemsub_B
//		endif
//		$result = SubPlayerInfo(-1,"item",$itemsub_ID_B,$subitem)
//		if $result == 0
//			$totalsub = $totalsub - $subitem
//		endif
//		//--------------------------------
//		if $resultcard == 0
//			if $totalsub == 0
//				AddPlayerInfo(-1,"item",$itembox_id,$itemboxadd)
//			endif
//		endif
//		
//	
//	}

////3628,????????????
////3677,??????????????????
////3226,??????????????????(?????,??)
////??????
//function OnRequest(){
//	
//	//????
//	DisableNpcOption(0)
//	//------------------
//	//	$level = GetPlayerInfo( -1, "level")
//	//	if $level < 30
//	//		DisableNpcOption(0)
//	//	endif
//	
//	
//	
//	
//	//---------------------------------------------------------------
//	$today_days = GetSystemTime( "yday" )
//	$days = GetPlayerVar(-1 , 3677)
//	if $days == $today_days
//		DisableNpcOption(1)
//	endif
//	//?
//	$Now_Mday =  GetSystemTime( "mday" )	
//	//?
//	$Now_Month =  GetSystemTime( "month" )
//	//?
//	$Now_Year =  GetSystemTime( "year" )
//	
//	if $Now_Year != 2009
//		DisableNpcOption(1)
//	endif
//	if $Now_Month != 6
//		DisableNpcOption(1)
//	endif
//	
//	if $Now_Mday < 6
//		DisableNpcOption(1)
//	endif
//	
//	if $Now_Mday > 12
//		DisableNpcOption(1)
//	endif
//}
//
//function OnOption0(){
//
//	$level = GetPlayerInfo( -1, "level")
//	$today_days = GetSystemTime( "yday" )
//	
//	
//	//30??????
//	if $level < 30
//		return
//	endif
//	//???????
////	$week = GetSystemTime( "week" )
////	if $week != 0
////		return
////	endif
//	
////	$days = GetPlayerVar(-1 , 3628)
////	if $days == $today_days
////		BC("screen", "player", -1, "GUID:08208000018")
////		return
////	endif
//	
//	
//	
//	$liveness = GetPlayerInfo( -1, "weekliveness")
//	if $liveness < 6000
//		BC("screen", "player", -1, "GUID:08208000019")
//		return
//	endif
//	
//	$a = 2100
//	$b = 168
//	$c = 7
//
//	if $liveness <= $a
//		$temppoint1 = $level * $b
//		$temppoint2 = $temppoint1 / $c
//		$temppoint3 = $temppoint2 * $liveness
//		$givepoint = $temppoint3 / $a
//	else
//		$temppoint1 = $level * $b
//		$temppoint2 = $liveness * 2
//		$temppoint3 = $temppoint2 - $a		
//		$temppoint4 = $temppoint1 * $temppoint3
//		$temppoint5 = $c * $liveness
//		$givepoint = $temppoint4 / $temppoint5
//	endif
//	
//	$revalue = SubPlayerInfo(-1 , "weekliveness" , $liveness)
//	if $revalue == 0
//		$number = GetPlayerInfo( -1, "item" , 59142)
//		if $number > 0
//			SubPlayerInfo(-1 , "item" , 59142 ,1)
//			$givepoint = $givepoint * 2
//			AddPlayerInfo(-1 , "givepoint" , $givepoint)
//			BC("screen", "player", -1, "GUID:08208000020" ,$givepoint ,"GUID:08208000021")
//			SetPlayerVar(-1 , 3628 , $today_days)
//		else
//			AddPlayerInfo(-1 , "givepoint" , $givepoint)
//			BC("screen", "player", -1, "GUID:08208000022" ,$givepoint ,"GUID:08208000023")
//			SetPlayerVar(-1 , 3628 , $today_days)
//			
//		endif
//		//??-START
//			$TJ_join_number = GetGlobalVar(968)
//			$TJ_join_number = $TJ_join_number + 1
//			SetGlobalVar(968 , $TJ_join_number)
//		//??-END
//	endif
//
//	
//}
//
////??7????????
//function OnOption1(){
//	
//	//?
//	$Now_Mday =  GetSystemTime( "mday" )	
//	//?
//	$Now_Month =  GetSystemTime( "month" )
//	//?
//	$Now_Year =  GetSystemTime( "year" )
//	
//	if $Now_Year != 2009
//		BC("dialogbox", "player", -1, "GUID:08208000024")
//		return
//	endif
//	if $Now_Month != 6
//		BC("dialogbox", "player", -1, "GUID:08208000025")
//		return
//	endif
//	
//	if $Now_Mday < 6
//		BC("dialogbox", "player", -1, "GUID:08208000026")
//		return
//	endif
//	if $Now_Mday > 12
//		BC("dialogbox", "player", -1, "GUID:08208000027")
//		return
//	endif
//	
//	$huoyuedu = GetPlayerInfo(-1 ,"prestige" , 38)
//	if $huoyuedu < 3600
//		BC("dialogbox", "player", -1, "GUID:08208000028")
//		return
//	endif
//	
//	$today_days = GetSystemTime( "yday" )
//	
//	$days = GetPlayerVar(-1 , 3677)
//	if $days == $today_days
//		BC("screen", "player", -1, "GUID:08208000029")
//		return
//	endif
//	
//	//?????????,??7??,?????
//	$get_number = GetPlayerVar(-1 , 3227)
//	if $get_number >= 7
//		BC("screen", "player", -1, "GUID:08208000030")
//		return
//	endif
//	
//	
//	//?????2009?6????,????6??,????????
//	$get_mday = GetPlayerVar(-1 , 3226)
//	
//	//?????????,??7??,?????
//	$get_number = GetPlayerVar(-1 , 3227)
//	
//	//???????????
//	if $get_mday == 0
//		//????????,????????
//		$double = $Now_Mday - 5
//	else
//		//????????????
//		$double = $Now_Mday - $get_mday
//	endif
//	
//	
//	//????????????,??7????????,??
//	$get_number = $get_number + $double
//	SetPlayerVar(-1 , 3227 ,$get_number )
//	
//	
//	$givepoint_1 = $huoyuedu / 2
//	$givepoint_2 = $givepoint_1 + 15000
//	
//	$givepoint_base = $givepoint_2 / 7
//	
//	//???????,????????????????
//	if $double < 0 
//		$double = 0
//	endif
//	
//	$givepoint = $double * $givepoint_base
//	
//	AddPlayerInfo(-1 , "givepoint" , $givepoint)
//	BC("screen", "player", -1, "GUID:08208000031",$double,"GUID:08208000032" ,$givepoint ,"GUID:08208000033")
//	SetPlayerVar(-1 , 3677 , $today_days)
//	SetPlayerVar(-1 , 3226 , $Now_Mday)
//	
//}

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/19
	//		Author:???
	//		TaskName:Npc-572.s
	//		TaskID:  
	//****************************************
	
	function OnRequest(){
	
		
		
	}


	function OnOption0(){
		
	  $mytime = GetPlayerVar(-1 , 3993)
		$count = GetPlayerVar(-1 , 3284)
		$Now_Yday =  GetSystemTime( "yday" )
		$vip = IsDiamondVIP(-1)
		if $vip == 1
			BC( "dialogbox", "player", -1, "Only Platinum Nobles can open a Noble Gift. You can purchase a Platinum Noble Card in the Marketplace." )
			return
		endif

		//??????????
		$bag1_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag2_count = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag1_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		if $bag2_count < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif
		
		$playerday = GetPlayerVar(-1,4081)
		$playeryear = GetPlayerVar(-1,3326)
		$playeryear += 2000
		$sysyday = GetSystemTime("yday")
		$sysyear = GetSystemTime("year")
		if $sysyear > $playeryear
			$yearsub = $sysyear - $playeryear
			$yearsub *= 365
			$sysyday += $yearsub
		endif
		$playerday += 7
		if $sysyday < $playerday
			$ReqAwardID = 30
		else
			$ReqAwardID = 5
			BC("chat","player",-1,"You opened the Noble's gift. Good luck!")
		endif
		
		if $mytime == $Now_Yday
			if $count < 3
				ReqAward( -1 , $ReqAwardID , 1 )
				$count = $count + 1
				SetPlayerVar( -1 , 3284 , $count )
				BC( "screen", "player", -1, "You can open Noble Gifts 3 times a day. You have opened it ", $count ," time(s). Good luck!" )
				return
			else
				BC(  "dialogbox", "player", -1, "You have opened Noble's gift 3 times. Come back tomorrow please!" )
				return
			endif
		else
			ReqAward( -1 , $ReqAwardID , 1 )
			BC( "screen", "player", -1, "You can open the Noble's gift 3 times per day. This is the first time. Good luck!" )
			SetPlayerVar( -1 , 3993 , $Now_Yday )
			SetPlayerVar( -1 , 3284 , 1 )
		endif

		
	}

	function OnOption1(){
		
	  $mytime = GetPlayerVar(-1 , 4005)
		$Now_Yday =  GetSystemTime( "yday" )
		$vip = IsDiamondVIP(-1)
		if $vip == 1
			BC( "dialogbox", "player", -1, "Only Platinum Nobles can receive Platinum EXP Orbs from me. You can purchase a Platinum Noble Card in the Marketplace." )
			return
		endif

		//??????????
		$bag1_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag1_count < 1
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif

		if $mytime == $Now_Yday
			BC(  "dialogbox", "player", -1, "You have already received 2 Platinum EXP Orbs. Come again tomorrow." )
		else
			AddPlayerInfo(-1,"item",50045,2)
			BC( "screen", "player", -1, "You have already received a Platinum EXP Orb. Please use it before it expired." )
			SetPlayerVar( -1 , 4005 , $Now_Yday )
		endif

		
	}
	
//	function OnOption2(){
//
//		$vip = IsDiamondVIP(-1)
//		if $vip == 1
//			BC( "dialogbox", "player", -1, "Only Platinum Nobles may receive Platinum Noble quests. You can purchase a Platinum Noble Card in the Marketplace to become a Platinum Noble." )
//			return
//		endif
//		
//		$taskcount = GetTaskCount ( -1 )
//		if $taskcount > 20
//			BC( "messagebox", "player", -1, "Quest list is full. Please try again after clearing up your quest list." )
//			return
//		endif
//		
//	  $mytime = GetPlayerVar(-1 , 3861)
//		$Now_Yday =  GetSystemTime( "yday" )
//		if $mytime == $Now_Yday
//			BC("dialogbox","player",-1,"You've already accepted your Platinum Noble quest for the day!" )
//			return
//		endif
//		
//		$task1 = IsTaskAccept(-1,1866)
//		if $task1 == 0
//			BC("dialogbox","player",-1,"You have to complete the previous Platinum Noble quest first!" )
//			return
//		endif
//		$task1 = IsTaskAccept(-1,1867)
//		if $task1 == 0
//			BC("dialogbox","player",-1,"You have to complete the previous Platinum Noble quest first!" )
//			return
//		endif
//		$task1 = IsTaskAccept(-1,1868)
//		if $task1 == 0
//			BC("dialogbox","player",-1,"You have to complete the previous Platinum Noble quest first!" )
//			return
//		endif
//		
//		SetPlayerVar( -1 , 3861 , $Now_Yday )
//		$taskid = RandomNumber(1866,1868)
//		AcceptTask(-1,$taskid)
//		
//		
//	}


//	?10???????????????	
	function OnOption2(){
//44604	????????
//44605	????????
//44407	???
		$playerid = GetPlayerID()
		
		$isget = GetPlayerVar(-1,297)
		if $isget == 1
			BC("dialogbox","player",-1,"You've exchanged the gift pack already!")
			return
		endif
		//??
		$itemcard_id = 44604
		$itembox_id = 44605
		$itemsubmax = 10
		$itemsubid_A = 44407
		#itemcardname = "Celestial Platinum Noble Coupon"
		#itemboxname = "Celestial Platinum Noble Pack"
		#itemsubname = "Gold Key"
		//??
		$itemcard = GetPlayerInfo(-1,"item",$itemcard_id)
		if $itemcard < 1
			BC("dialogbox","player",-1,"You don't have",#itemcardname,"!")
			return
		endif
		$itemsub_A = GetPlayerInfo(-1,"item",$itemsubid_A)
		$itemtotal += $itemsub_A
		if $itemtotal < $itemsubmax
			BC("dialogbox","player",-1,"It requires",$itemsubmax," x",#itemsubname,"to exchange.",#itemboxname,"Got it.")
			return
		endif
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		//??
		$resultcard = SubPlayerInfo(-1,"item",$itemcard_id,1)
		//-------------------------------
		$totalsub = $itemsubmax
		if $itemsub_A >= $totalsub
			$subitem = $totalsub
		else
			$subitem = $itemsub_A
		endif
		$result = SubPlayerInfo(-1,"item",$itemsubid_A,$subitem)
		if $result == 0
			$totalsub = $totalsub - $subitem
		endif
		//--------------------------------
		if $resultcard == 0
			if $totalsub == 0
				AddPlayerInfo(-1,"item",$itembox_id,1)
				SetPlayerVar(-1,297,1)
			endif
		endif
		
		
	}
	
//	????????????????x1
	function OnOption3(){
//44604	????????
//44605	????????
//59838	?????
		$playerid = GetPlayerID()
		
		$isget = GetPlayerVar(-1,297)
		if $isget == 1
			BC("dialogbox","player",-1,"You've exchanged the gift pack already!")
			return
		endif
		//??
		$itemcard_id = 44604
		$itembox_id = 59838
		$itemsubmax = 0
		$itemsubid_A = 44407
		#itemcardname = "Celestial Platinum Noble Coupon"
		#itemboxname = "LV2 Gem Coin"
		#itemsubname = "Gold Key"
		//??
		$itemcard = GetPlayerInfo(-1,"item",$itemcard_id)
		if $itemcard < 1
			BC("dialogbox","player",-1,"You don't have",#itemcardname,"!")
			return
		endif
		$itemsub_A = GetPlayerInfo(-1,"item",$itemsubid_A)
		$itemtotal += $itemsub_A
		if $itemtotal < $itemsubmax
			BC("chat","player",-1,"itemtotal=",$itemtotal,"  itemsubmax=",$itemsubmax)
			BC("dialogbox","player",-1,"It requires",$max," x",#itemsubname,"to exchange.",#itemboxname,"Got it.")
			return
		endif
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		//??
		$resultcard = SubPlayerInfo(-1,"item",$itemcard_id,1)
		//-------------------------------
		$totalsub = $itemsubmax
		if $itemsub_A >= $totalsub
			$subitem = $totalsub
		else
			$subitem = $itemsub_A
		endif
		$result = SubPlayerInfo(-1,"item",$itemsubid_A,$subitem)
		if $result == 0
			$totalsub = $totalsub - $subitem
		endif
		//--------------------------------
		if $resultcard == 0
			if $totalsub == 0
				AddPlayerInfo(-1,"item",$itembox_id,1)
				SetPlayerVar(-1,297,1)
			endif
		endif
		
	}
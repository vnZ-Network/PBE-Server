	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/16
	//		Author:??
	//		TaskName:NPC-liuqian1771.s
	//		TaskID:????
	//
	//****************************************
	//3632  ?????BUFF???
	
	//23 ??????????
	function OnRequest(){
	
		//$level = GetPlayerInfo(-1,"level")
		//if $level < 45
		//??????
		DisableNpcOption(0)
		//endif
		
		//$last_time =  GetPlayerVar( -1, 3632 )
		//$today_time = GetSystemTime( "yday" )
		
		//if $today_time == $last_time
		//DisableNpcOption(0)
		//endif
		
		$info = GetFansCardType(-1 ,"fans")
		if $info == 0
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
		endif
		//???????
		$zhuangyuan_card = GetPlayerVar(-1 ,23)
		if $zhuangyuan_card != 0
			DisableNpcOption(3)
		endif
		//2009?9?1???????????
		$Now_Month =  GetSystemTime( "month" )
		
		$Now_Year =  GetSystemTime( "year" )
		
		if $Now_Year != 2009
			DisableNpcOption(3)
		endif
		if $Now_Month >= 9
			DisableNpcOption(3)
		endif
		//--------------------------------------------?????end
		
		
		
		
		
		//??
		$Now_Mday = GetSystemTime( "mday" )	
		//??
		$Now_Week = GetSystemTime( "week" )
		//??
		$Now_Hour = GetSystemTime( "hour" )
		
		$Now_Year =  GetSystemTime( "year" )
		
		$Now_Month =  GetSystemTime( "month" )
		
		
		//----------------------------------------2011?9?18??????
//		if $Now_Year == 2011
//			if $Now_Month == 9
//				if $Now_Mday == 18
//					//????
//				else
//					if $Now_Mday <= 7
//						DisableNpcOption(4)
//						DisableNpcOption(5)
//					endif
//					
//					if $Now_Mday > 14
//						DisableNpcOption(4)
//						DisableNpcOption(5)
//					endif
//				endif
//			else
//				if $Now_Mday <= 7
//					DisableNpcOption(4)
//					DisableNpcOption(5)
//				endif
//				
//				if $Now_Mday > 14
//					DisableNpcOption(4)
//					DisableNpcOption(5)
//				endif
//			endif
//		else
//			if $Now_Mday <= 7
//				DisableNpcOption(4)
//				DisableNpcOption(5)
//			endif
//			
//			if $Now_Mday > 14
//				DisableNpcOption(4)
//				DisableNpcOption(5)
//			endif
//		endif
		//----2011?9?18????????,???????,???????????
		
		//?2012-6-24????
		if $Now_Year == 2012
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday
			if $dayadd == 624
				//????,?????
			else
				if $Now_Mday <= 7
					DisableNpcOption(4)
					DisableNpcOption(5)
				endif
				if $Now_Mday > 14
					DisableNpcOption(4)
					DisableNpcOption(5)
				endif
			endif
		else
			if $Now_Mday <= 7
				DisableNpcOption(4)
				DisableNpcOption(5)
			endif
			if $Now_Mday > 14
				DisableNpcOption(4)
				DisableNpcOption(5)
			endif
		endif
		//2012?6?24????????,???????,???????????(????)
		
//		if $Now_Mday <= 7
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//		endif
//		
//		if $Now_Mday > 14
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//		endif
		//-------------------------------
		
		if $Now_Week != 0
			DisableNpcOption(4)
			DisableNpcOption(5)
		endif
		
		if $Now_Hour < 15
			DisableNpcOption(4)
			DisableNpcOption(5)
		endif
		
		if $Now_Hour > 16
			DisableNpcOption(4)
			DisableNpcOption(5)
		endif
		
		$value = GetPlayerVar( -1, 3680 )
		if $value != 0
			DisableNpcOption(5)
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $TaskVar == $time0
			DisableNpcOption(4)
		endif
	}
	
	
	function OnOption0(){
	
		$today_time = GetSystemTime( "yday" )
		$level = GetPlayerInfo(-1,"level")
		if $level < 45
			return
		endif
		NPCAction(-1 , 1771 , "specialidle" , 0)
		$n = RandomNumber (4 , 6)
		//if $n == 1
		//	AddStatus(-1 , 10516 , 1)
		//	BC("dialogbox", "player", -1, "GUID:08215000000")
		//endif
		//if $n == 2
		//	AddStatus(-1 , 10517 , 1)
		//	BC("dialogbox", "player", -1, "GUID:08215000001")
		//endif
		//if $n == 3
		//	AddStatus(-1 , 10518 , 1)
		//	BC("dialogbox", "player", -1, "GUID:08215000002")
		//endif
		if $n == 4
			AddStatus(-1 , 10519 , 1)
			BC("dialogbox", "player", -1, "The magic worked! Now, let it be known that during the next hour, miracles will happen!  Hurry and help out with the event, Academic Tests. If you complete it within the hour you will receive bonus rewards and a chance to win a Magician Chest.")
		endif
		if $n == 5
			AddStatus(-1 , 10520 , 1)
			BC("dialogbox", "player", -1, "The magic worked! Now, let it be known that during the next hour, miracles will happen!  Hurry and help out with the event, Divac's Treasure Map. If you complete it within the hour you will receive bonus rewards and a chance to win a Magician Chest.")
		endif
		if $n == 6
			AddStatus(-1 , 10521 , 1)
			BC("dialogbox", "player", -1, "The magic worked! Now, let it be known that during the next hour, miracles will happen!  Hurry and help out with the event, Hunt the Fiends. If you complete it within the hour you will receive bonus rewards and a chance to win a Magician Chest.")
		endif
		SetPlayerVar( -1 , 3632, $today_time)
		
		
	}
	
	//??????
	function OnOption1(){
	
		Cmd(-1 , "fanscard 1")

	}
	
	//??????,???????
	function OnOption2(){
		$is_get = GetPlayerVar(-1 , 21)
		$info = GetFansCardType(-1 ,"fans")
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		if $info == 0
			if $is_get != 0
				BC("dialogbox", "player", -1, "You have already taken the reward.")
				return
			else
				AddPlayerInfo(-1 , "item" , 59051 , 1)
				BC("dialogbox", "player", -1, "Congratulations! You got a Ancient Ruins Elite Card. Please check your bag.")
				SetPlayerVar(-1 , 21 , 1)
			endif
		else
			if $info == 1
				BC("dialogbox", "player", -1, "You are not an Ancient Ruins Elite Card user.")
			else
				BC("dialogbox", "player", -1, "Returned value error.")
			endif
		endif

	}
	
	//??63393	???????
	function OnOption3(){
		
		$Now_Month =  GetSystemTime( "month" )
		
		$Now_Year =  GetSystemTime( "year" )
		
		if $Now_Year != 2009
			return
		endif
		if $Now_Month >= 9
			return
		endif
		
		
		//----------------------------------
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??
		if $bag_count < 1
			BC( "chat", "player", -1, "Insufficient bag slots" )
			return
		endif
		
		$revalue = AddPlayerInfo(-1 , "item" , 63393 ,1)
		
		if $revalue == 0
			BC( "screen", "player", -1, "You have acquired Knowledge Champion's Pack!" )
			SetPlayerVar(-1 ,23 ,1)
		endif
		
	}
	
	function OnOption4(){
		//??
		$Now_Mday = GetSystemTime( "mday" )	
		//??
		$Now_Week = GetSystemTime( "week" )
		//??
		$Now_Hour = GetSystemTime( "hour" )
		
		$Now_Year =  GetSystemTime( "year" )
		
		$Now_Month =  GetSystemTime( "month" )
		//---------------???2011?9?18?????  2012-6-24??,??????????
		if $Now_Year == 2012
			if $Now_Month == 6
				if $Now_Mday == 24
					if $Now_Hour < 15
						BC( "dialogbox", "player", -1, "Treasure Probe is released only at 15:00 - 17:00." )
						return
					endif
					
					if $Now_Hour > 16
						BC( "dialogbox", "player", -1, "Treasure Probe is released only at 15:00 - 17:00." )
						return
					endif
					$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
					//??????????
					if $bag_count < 1
						BC( "screen", "player", -1, "Insufficient bag slots!" )
						return
					endif
					
					$time0 = GetSystemTime( "yday" )	
					$TaskVar = GetPlayerVar( -1, 3681 )
					if $TaskVar == $time0
						BC( "dialogbox", "player", -1, "You have already taken the Treasure Probe." )
						return
					endif

					$ItemID = 63392
					
					$level = GetPlayerInfo( -1, "level" )
					if $level <= 10
						SetPlayerVar( -1, 3681, $time0 )
						AddPlayerInfo( -1, "item", $ItemID, 1 )
						return
					endif
					if $level > 10
						if $level <= 20
							SetPlayerVar( -1, 3681, $time0 )
							AddPlayerInfo( -1, "item", $ItemID, 5 )
							return
						endif	
					endif
					if $level > 20
						if $level <= 30
							SetPlayerVar( -1, 3681, $time0 )
							AddPlayerInfo( -1, "item", $ItemID, 10 )
							return
						endif	
					endif
					if $level > 30
						SetPlayerVar( -1, 3681, $time0 )
						AddPlayerInfo( -1, "item", $ItemID, 20 )
						return
					endif
				endif
			endif
		endif
		
		//-----------------2011?9?18????????????
		
		if $Now_Mday <= 7
			BC( "dialogbox", "player", -1, "Treasure Probe is released only at 15:00 - 17:00, on the second Sunday of each month." )
			return
		endif
		
		if $Now_Mday > 14
			BC( "dialogbox", "player", -1, "Treasure Probe is released only at 15:00 - 17:00, on the second Sunday of each month." )
			return
		endif
		
		if $Now_Week != 0
			BC( "dialogbox", "player", -1, "Treasure Probe is released only at 15:00 - 17:00, on the second Sunday of each month." )
			return
		endif
		
		if $Now_Hour < 15
			BC( "dialogbox", "player", -1, "Treasure Probe is released only at 15:00 - 17:00." )
			return
		endif
		
		if $Now_Hour > 16
			BC( "dialogbox", "player", -1, "Treasure Probe is released only at 15:00 - 17:00." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$time0 = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3681 )
		if $TaskVar == $time0
			BC( "dialogbox", "player", -1, "You have already taken the Treasure Probe." )
			return
		endif
		//????-START
			$TJ_join_number = GetGlobalVar(945)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(945 , $TJ_join_number)
		//????-END
		$ItemID = 63392
		
		$level = GetPlayerInfo( -1, "level" )
		if $level <= 10
			SetPlayerVar( -1, 3681, $time0 )
			AddPlayerInfo( -1, "item", $ItemID, 1 )
			return
		endif
		if $level > 10
			if $level <= 20
				SetPlayerVar( -1, 3681, $time0 )
				AddPlayerInfo( -1, "item", $ItemID, 5 )
				return
			endif	
		endif
		if $level > 20
			if $level <= 30
				SetPlayerVar( -1, 3681, $time0 )
				AddPlayerInfo( -1, "item", $ItemID, 10 )
				return
			endif	
		endif
		if $level > 30
			SetPlayerVar( -1, 3681, $time0 )
			AddPlayerInfo( -1, "item", $ItemID, 20 )
			return
		endif
	}
	
	function OnOption5(){
		//??
		$Now_Mday = GetSystemTime( "mday" )	
		//??
		$Now_Week = GetSystemTime( "week" )
		//??
		$Now_Hour = GetSystemTime( "hour" )
				
		$Now_Year =  GetSystemTime( "year" )
		
		$Now_Month =  GetSystemTime( "month" )
		
		//-------------------------?2011?9?18?????  2012-6-24??,??????????
		if $Now_Year == 2012
			if $Now_Month == 6
				if $Now_Mday == 24
					if $Now_Hour < 15
						BC( "dialogbox", "player", -1, "Treasure Probe can be recharged only at 15:00 - 17:00." )
						return
					endif
					
					if $Now_Hour > 16
						BC( "dialogbox", "player", -1, "Treasure Probe can be recharged only at 15:00 - 17:00." )
						return
					endif
					$value = GetPlayerVar( -1, 3680 )
					if $value != 0
						BC( "dialogbox", "player", -1, "You already have a recharged Treasure Probe." )
						return
					endif
					
					$ItemID = 63392
					$item_num = GetPlayerInfo( -1, "item", $ItemID )
			
					if $item_num == 0
						BC( "dialogbox", "player", -1, "What should I recharge while you don't have a probe?" )
						return
					endif
					$n = RandomNumber ( 1, 4 )
					if $n == 1
						SetPlayerVar( -1, 3680 , 3 )
						BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Aegean North." )
						BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Aegean North." )
					endif
					if $n == 2
						SetPlayerVar( -1, 3680 , 87 )
						BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Great Abyss." )
						BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Great Abyss." )
					endif
					if $n == 3
						SetPlayerVar( -1, 3680 , 86 )
						BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Sea of Atlantis." )
						BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Sea of Atlantis." )
					endif
					if $n == 4
						SetPlayerVar( -1, 3680 , 119 )
						BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Dragon Emperor's Catacomb." )
						BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Dragon Emperor's Catacomb." )
					endif
				endif
			endif
		endif	
		
		//-------------------?2011?9?18???????
		
		
				
		if $Now_Mday <= 7
			BC( "dialogbox", "player", -1, "Treasure Probe can be recharged only at 15:00 - 17:00, on the second Sunday of each month." )
			return
		endif
		
		if $Now_Mday > 14
			BC( "dialogbox", "player", -1, "Treasure Probe can be recharged only at 15:00 - 17:00, on the second Sunday of each month." )
			return
		endif
		
		if $Now_Week != 0
			BC( "dialogbox", "player", -1, "Treasure Probe can be recharged only at 15:00 - 17:00, on the second Sunday of each month." )
			return
		endif
		
		if $Now_Hour < 15
			BC( "dialogbox", "player", -1, "Treasure Probe can be recharged only at 15:00 - 17:00." )
			return
		endif
		
		if $Now_Hour > 16
			BC( "dialogbox", "player", -1, "Treasure Probe can be recharged only at 15:00 - 17:00." )
			return
		endif
		
		$value = GetPlayerVar( -1, 3680 )
		if $value != 0
			BC( "dialogbox", "player", -1, "You already have a recharged Treasure Probe." )
			return
		endif
		
		$ItemID = 63392
		$item_num = GetPlayerInfo( -1, "item", $ItemID )

		if $item_num == 0
			BC( "dialogbox", "player", -1, "What should I recharge while you don't have a probe?" )
			return
		endif
		
//		$money = GetPlayerInfo( -1, "money")
//		if $money < 100
//			BC( "dialogbox", "player", -1, "GUID:08215000043" )
//			return
//		endif
//??
//		SubPlayerInfo(-1 "money" , 100 )

		$n = RandomNumber ( 1, 4 )
//		if $n == 1
//			SetPlayerVar( -1, 3680 , 129 )
//			BC( "chat", "player", -1, "GUID:08215000044" )
//			BC( "dialogbox", "player", -1, "GUID:08215000045" )
//		endif
		if $n == 1
			SetPlayerVar( -1, 3680 , 3 )
			BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Aegean North." )
			BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Aegean North." )
		endif
		if $n == 2
			SetPlayerVar( -1, 3680 , 87 )
			BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Great Abyss." )
			BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Great Abyss." )
		endif
		if $n == 3
			SetPlayerVar( -1, 3680 , 86 )
			BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Sea of Atlantis." )
			BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Sea of Atlantis." )
		endif
		if $n == 4
			SetPlayerVar( -1, 3680 , 119 )
			BC( "chat", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Dragon Emperor's Catacomb." )
			BC( "dialogbox", "player", -1, "I've already calibrated your probe. According to the new display on it, the treasure should be at Dragon Emperor's Catacomb." )
		endif
			
	}
	
//	function OnOption6(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "Insufficient bag slots!" )
//			return
//		endif
//		
//		$PlayerVar = GetPlayerVar( -1, 3707 )
//		$day = GetSystemTime( "yday" )
//		if $PlayerVar == $day
//			BC( "dialogbox", "player", -1, "GUID:08215000055" )
//			return
//		endif
//		
//		$Var = GetPlayerVar( -1, 40 )
//		if $Var == 1
//			AddPlayerInfo( -1, "item", 63442, 1 )
//			SetPlayerVar( -1, 3707, $day )
//			SetPlayerVar( -1, 40, 0 )
//		else
//			BC( "dialogbox", "player", -1, "GUID:08215000056" )
//			return	
//		endif
//		
//	}
//	
//	function OnOption7(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "Insufficient bag slots!" )
//			return
//		endif
//		
//		$level = GetPlayerInfo( -1, "level" )
//		if $level < 30
//			BC( "dialogbox", "player", -1, "GUID:08215000058" )
//			return
//		endif
//		
//		$PlayerVar = GetPlayerVar( -1, 3706 )
//		$day = GetSystemTime( "yday" )
//		if $PlayerVar == $day
//			BC( "dialogbox", "player", -1, "GUID:08215000059" )
//			return
//		endif
//		
//		AddPlayerInfo( -1, "item", 63442, 1 )
//		SetPlayerVar( -1, 3706, $day )
//		
//	}	




		function OnOption6(){
			//??
			$Now_Mday = GetSystemTime( "mday" )	
			//??
			$Now_Month = GetSystemTime( "month" )
//			if $Now_Month < 8
//				BC( "dialogbox" , "player" , -1 , "GUID:08215000060" )
//				return
//			endif
//			
//			if $Now_Month == 8
//				if $Now_Mday < 10
//					BC( "dialogbox" , "player" , -1 , "GUID:08215000061" )
//					return
//				endif
//			endif
					
			$title1 = HaveTitle( -1, 79 )
			//?????????
			if $title1 == 0
				BC( "dialogbox" , "player" , -1 , "You have that title already." )
				return
			endif
			//????????
			$itemcz1 = GetPlayerInfo ( -1 , "item" , 59055  )
//			$itemcz2 = GetPlayerInfo ( -1 , "item" , 59056  )
//			$itemcz3 = GetPlayerInfo ( -1 , "item" , 59057  )
//			$itemcz4 = GetPlayerInfo ( -1 , "item" , 59058  )
			
			//???????
			if $itemcz1 < 4
				BC( "dialogbox" , "player", -1, "Sorry! You need to collect 4 Detachments to exchange." )
				return
			endif
			
//			if $itemcz2 == 0
//				BC( "dialogbox" , "player", -1, "Sorry! You need to collect 4 Detachments to exchange." )
//				return
//			endif
//			if $itemcz3 == 0
//				BC( "dialogbox" , "player", -1, "Sorry! You need to collect 4 Detachments to exchange." )
//				return
//			endif
//			if $itemcz4 == 0
//				BC( "dialogbox" , "player", -1, "Sorry! You need to collect 4 Detachments to exchange." )
//				return
//			endif
			
			//????
			$subcz1 = SubPlayerInfo ( -1, "item", 59055, 4 )
			if $subcz1 != 0
				return
			endif
//			$subcz2 = SubPlayerInfo ( -1 , "item" , 59056 , 1 )
//			$subcz3 = SubPlayerInfo ( -1 , "item" , 59057 , 1 )
//			$subcz4 = SubPlayerInfo ( -1 , "item" , 59058 , 1 )
			$addtitle = AddTitle ( -1 , 79 )
			
		}
		
		function OnOption7(){
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		$itemcz1 = GetPlayerInfo ( -1 , "item" , 59055  )
		if $itemcz1 < 1
			BC( "dialogbox" , "player", -1, "Sorry! You need 1 Detachment in order to exchange." )
			return
		endif
		$result = SubPlayerInfo ( -1, "item", 59055, 1 )	
		if $subcz1 != 0
			return
		endif
		AddPlayerInfo( -1, "item", 21193, 1 )
				
		}		
				
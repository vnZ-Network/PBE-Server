	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/15
	//		Author:??
	//		TaskName:HD-lvsepaohuan-NPC.s
	//		TaskID:????NPC??
	//
	//****************************************

	//????1,???????????	3614
	//????2,???????????????,????	10
	//????3,?????????	3210
	//????4, ????????? 3211
	//2009.1.8.????????????,???????????
	function OnRequest(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			DisableNpcOption(0)
			return
		endif
		//?????
		//$today_time = GetSystemTime( "yday" )
		//??????????
		//$quest_time = GetPlayerVar( -1, 3614 )
		//???????
		
		$quest_ring_number = GetPlayerVar( -1 , 3210 )
		$quest_lock = GetPlayerVar( -1 , 10 )
		
		//???????
		//$quest_wheel_number = GetPlayerVar( -1 , 3211 )
		//??2??????,??????????????
		//if $quest_time == $today_time
			//if $quest_ring_number > 5
			//	if $quest_wheel_number >= 2
			//		DisableNpcOption(0)
			//		return
			//	endif
			//endif
			
			//if $quest_wheel_number >= 2
			//	if $quest_lock == 1
			//		DisableNpcOption(0)
			//		return
			//	endif
			//endif
			
		call IsExistQuest()
		//???????,0???????
		if $is_exist_quest == 1
			DisableNpcOption(0)
			return
		endif
		//endif

	}
						
	function OnOption0(){
	
		//???????0????,1????
		$Is_accept_task = 0
		//????????
		$is_exist_quest = 0
		
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			BC( "dialogbox", "player", -1, "You are not strong enough. Come back when you've reached level 30." )
			return
		endif
		
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
			return
		endif
		
		//???????????,????????????
		if $level >= 105
			BC( "dialogbox", "player", -1, "Level above 105 is not open yet." )
			return
		endif

		//?????
		//$today_time = GetSystemTime( "yday" )
		//??????????
		//$quest_time = GetPlayerVar( -1, 3614 )
		//?????????
		$switch_value = GetPlayerVar( -1 , 10 )
		//???????
		$quest_ring_number = GetPlayerVar( -1 , 3210 )
		//?????????
		$quest_id = 0
		
			//???????
	
		if $switch_value == 1
			call IsExistQuest()
			//???????,0???????
			if $is_exist_quest == 1
				BC( "dialogbox", "player", -1, "Please finish your caravan quest in your list first." )
				return
			else
			//????????????,???????
				$quest_ring_number = 1
				call ClearQuest()
				call RandomQuest()
				if $Is_accept_task == 0	
					SetTaskLoopCount ( -1, $quest_id, 1 )
					SetPlayerVar( -1 , 3210, $quest_ring_number)
					SetPlayerVar( -1 , 10, 1)
					BC( "dialogbox", "player", -1, "You had received the first ring of Trials of Courage and Wisdom quest." )
					return
				endif
				BC( "dialogbox", "player", -1, "Error,error code.", $quest_ring_number,"   ",$Is_accept_task)
				return
			
			endif
		else
			if $quest_ring_number > 5
				$quest_ring_number = 1
				call RandomQuest()
				if $Is_accept_task == 0	
					SetTaskLoopCount ( -1, $quest_id, 1 )
					SetPlayerVar( -1 , 3210, $quest_ring_number)
					SetPlayerVar( -1 , 10, 1)
					BC( "dialogbox", "player", -1, "You had received the first ring of Trials of Courage and Wisdom quest." )
					return
				endif
				BC( "dialogbox", "player", -1, "Error,error code.", $quest_ring_number,"   ",$Is_accept_task)
				return
				
			else
				//?????????,???1??????0
				if $quest_ring_number == 0
					$quest_ring_number = 1
				endif 
				call RandomQuest()
				if $Is_accept_task == 0				
					//????????
					SetPlayerVar( -1 , 3210, $quest_ring_number)
					SetTaskLoopCount ( -1, $quest_id, $quest_ring_number )
					SetPlayerVar( -1, 10, 1)
					BC( "dialogbox", "player", -1, "You have got.",$quest_ring_number,"ring of Trials of Courage and Wisdom quest." )
					return
				endif
				BC( "dialogbox", "player", -1, "Error,error code.", $quest_ring_number,"   ",$Is_accept_task)
				return
			endif
		endif
	

	}
	
	
	function ClearQuest(){

		CancelTask ( -1,1092  )
		CancelTask ( -1,1093  )
		CancelTask ( -1,1094  )
		CancelTask ( -1,1095  )
		CancelTask ( -1,1096  )
		CancelTask ( -1,1097  )
		CancelTask ( -1,1098  )
		CancelTask ( -1,1099  )
		CancelTask ( -1,1100  )
		CancelTask ( -1,1101  )
		CancelTask ( -1,1102  )
		CancelTask ( -1,1103  )
		CancelTask ( -1,1104  )
		CancelTask ( -1,1105  )
		CancelTask ( -1,1106  )
		
		CancelTask ( -1,1107  )
		CancelTask ( -1,1108  )
		CancelTask ( -1,1109  )
		CancelTask ( -1,1110  )
		CancelTask ( -1,1111  )
		CancelTask ( -1,1112  )
		CancelTask ( -1,1113  )
		CancelTask ( -1,1114  )
		CancelTask ( -1,1115  )
		CancelTask ( -1,1116  )
		CancelTask ( -1,1117  )
		CancelTask ( -1,1118  )
		CancelTask ( -1,1119  )
		CancelTask ( -1,1120  )
		CancelTask ( -1,1121  )

		CancelTask ( -1,1218  )
		CancelTask ( -1,1219  )
		CancelTask ( -1,1220  )
		CancelTask ( -1,1221  )
		CancelTask ( -1,1222  )
		CancelTask ( -1,1223  )
		CancelTask ( -1,1224  )
		CancelTask ( -1,1225  )
		CancelTask ( -1,1226  )
		CancelTask ( -1,1227  )
		CancelTask ( -1,1228  )
		CancelTask ( -1,1229  )
		CancelTask ( -1,1230  )
		CancelTask ( -1,1231  )
		CancelTask ( -1,1232  )
		
		CancelTask ( -1,663  )
		CancelTask ( -1,664  )
		CancelTask ( -1,665  )
		CancelTask ( -1,666  )
		CancelTask ( -1,667  )
		CancelTask ( -1,668  )
		CancelTask ( -1,669  )
		CancelTask ( -1,670  )
		CancelTask ( -1,671  )
		CancelTask ( -1,672  )
		CancelTask ( -1,673  )
		CancelTask ( -1,674  )
		CancelTask ( -1,675  )
		CancelTask ( -1,676  )
		CancelTask ( -1,677  )

		CancelTask ( -1,554  )
		CancelTask ( -1,555  )
		CancelTask ( -1,556  )
		CancelTask ( -1,557  )
		CancelTask ( -1,558  )
		CancelTask ( -1,559  )
		CancelTask ( -1,560  )
		CancelTask ( -1,561  )
		CancelTask ( -1,562  )
		CancelTask ( -1,563  )
		CancelTask ( -1,564  )
		CancelTask ( -1,565  )
		CancelTask ( -1,566  )
		CancelTask ( -1,567  )
		CancelTask ( -1,568  )
      		

	}	
	
	
	//???????????
	function IsExistQuest(){
		
		$result = IsTaskAccept( -1, 1092 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1093 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1094)
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1095 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1096 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1097 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1098 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1099 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1100 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1101 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1102 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1103 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1104 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1105 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1106 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1107 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1108 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1109 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1110 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1111 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1112 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1113 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1114 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1115 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1116 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1117 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1118 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1119 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1120 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1121 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		
		
		$result = IsTaskAccept( -1, 1218 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1219 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1220 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		
		$result = IsTaskAccept( -1, 1221 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1222 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1223 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1224 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1225 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1226 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1227 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1228 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1229 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1230 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1231 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 1232 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 663 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 664 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif		
		$result = IsTaskAccept( -1, 665 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 666 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 667 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 668 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 669 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 670 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 671 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 672 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 673 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 674 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 675 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 676 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 677 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		
		$result = IsTaskAccept( -1, 554 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 555 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif		
		$result = IsTaskAccept( -1, 556 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 557 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 558 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 559 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 560 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 561 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 562 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 563 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 564 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 565 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 566 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 567 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 568 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$is_exist_quest = 0
		
	}
	
	
	
	//?????????,????
	function RandomQuest(){
		//45???,30???????????
		//BC( "chat", "player", -1, "test num : ", $level)
		$random_number = RandomNumber ( 1, 9 )
		//?????????????
		$random_number_temp = RandomNumber ( 1, 2 )
		if $level < 45
			if $random_number == 1
				$Is_accept_task = AcceptTask(-1 , 1092)
				$quest_id = 1092
				return
			endif
			if $random_number == 2
				$Is_accept_task = AcceptTask(-1 , 1094)
				$quest_id = 1094
				return
			endif
			if $random_number == 3
				$Is_accept_task = AcceptTask(-1 , 1096)
				$quest_id = 1096
				return
			endif
			if $random_number == 4
				$Is_accept_task = AcceptTask(-1 , 1098)
				$quest_id = 1098
				return
			endif
			if $random_number == 5
				if $level < 38
					$Is_accept_task = AcceptTask(-1 , 1100)
					$quest_id = 1100
				else
					$Is_accept_task = AcceptTask(-1 , 1102)
					$quest_id = 1102
				endif
				return
			endif
			if $random_number == 6
				if $level < 38
					$Is_accept_task = AcceptTask(-1 , 1101)
					$quest_id = 1101
				else
					$Is_accept_task = AcceptTask(-1 , 1103)
					$quest_id = 1103
				endif
				return
			endif
			if $random_number == 7
				$Is_accept_task = AcceptTask(-1 , 1104)
				$quest_id = 1104
				return
			endif
			if $random_number == 8
				//?????????
				if $random_number_temp == 1
					$Is_accept_task = AcceptTask(-1 , 1105)
					$quest_id = 1105
				else
					$Is_accept_task = AcceptTask(-1 , 1092)
					$quest_id = 1092
				endif
				return
			endif
			if $random_number == 9
				$Is_accept_task = AcceptTask(-1 , 1106)
				$quest_id = 1106
				return
			endif
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif
		
		//60??
		if $level < 60
			if $random_number == 1
				$Is_accept_task = AcceptTask(-1 , 1107)
				$quest_id = 1107
				return
			endif
			if $random_number == 2
				$Is_accept_task = AcceptTask(-1 , 1109)
				$quest_id = 1109
				return
			endif
			if $random_number == 3
				$Is_accept_task = AcceptTask(-1 , 1111)
				$quest_id = 1111
				return
			endif
			if $random_number == 4
				$Is_accept_task = AcceptTask(-1 , 1113)
				$quest_id = 1113
				return
			endif
			if $random_number == 5
				if $level < 53
					$Is_accept_task = AcceptTask(-1 , 1115)
					$quest_id = 1115
				else
					$Is_accept_task = AcceptTask(-1 , 1117)
					$quest_id = 1117
				endif

				return
			endif
			if $random_number == 6
					if $level < 53
					$Is_accept_task = AcceptTask(-1 , 1116)
					$quest_id = 1116
				else
					$Is_accept_task = AcceptTask(-1 , 1118)
					$quest_id = 1118
				endif
				return
			endif
			if $random_number == 7
				$Is_accept_task = AcceptTask(-1 , 1119)
				$quest_id = 1119
				return
			endif
			if $random_number == 8
				$Is_accept_task = AcceptTask(-1 , 1120)
				$quest_id = 1120
				return
			endif
			if $random_number == 9
				$Is_accept_task = AcceptTask(-1 , 1121)
				$quest_id = 1121
				return
			endif
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif
		
		//75??
		if $level < 75
			if $random_number == 1
				$Is_accept_task = AcceptTask(-1 , 1218)
				$quest_id = 1218
				return
			endif
			if $random_number == 2
				$Is_accept_task = AcceptTask(-1 , 1220)
				$quest_id = 1220
				return
			endif
			if $random_number == 3
				$Is_accept_task = AcceptTask(-1 , 1222)
				$quest_id = 1222
				return
			endif
			if $random_number == 4
				$Is_accept_task = AcceptTask(-1 , 1224)
				$quest_id = 1224
				return
			endif
			if $random_number == 5
				if $level < 68
					$Is_accept_task = AcceptTask(-1 , 1226)
					$quest_id = 1226
				else
					$Is_accept_task = AcceptTask(-1 , 1228)
					$quest_id = 1228
				endif

				return
			endif
			if $random_number == 6
					if $level < 68
					$Is_accept_task = AcceptTask(-1 , 1227)
					$quest_id = 1227
				else
					$Is_accept_task = AcceptTask(-1 , 1229)
					$quest_id = 1229
				endif
				return
			endif
			if $random_number == 7
				$Is_accept_task = AcceptTask(-1 , 1230)
				$quest_id = 1230
				return
			endif
			if $random_number == 8
				$Is_accept_task = AcceptTask(-1 , 1231)
				$quest_id = 1231
				return
			endif
			if $random_number == 9
				$Is_accept_task = AcceptTask(-1 , 1232)
				$quest_id = 1232
				return
			endif
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif
		//90??
		if $level < 90
			if $random_number == 1
				$Is_accept_task = AcceptTask(-1 , 663)
				$quest_id = 663
				return
			endif
			if $random_number == 2
				$Is_accept_task = AcceptTask(-1 , 665)
				$quest_id = 665
				return
			endif
			if $random_number == 3
				$Is_accept_task = AcceptTask(-1 , 667)
				$quest_id = 667
				return
			endif
			if $random_number == 4
				$Is_accept_task = AcceptTask(-1 , 669)
				$quest_id = 669
				return
			endif
			if $random_number == 5
				if $level < 83
					$Is_accept_task = AcceptTask(-1 , 671)
					$quest_id = 671
				else
					$Is_accept_task = AcceptTask(-1 , 673)
					$quest_id = 673
				endif
				return
			endif
			if $random_number == 6
				if $level < 83
					$Is_accept_task = AcceptTask(-1 , 672)
					$quest_id = 672
				else
					$Is_accept_task = AcceptTask(-1 , 674)
					$quest_id = 674
				endif
				return
			endif
			if $random_number == 7
				$Is_accept_task = AcceptTask(-1 , 675)
				$quest_id = 675
				return
			endif
			if $random_number == 8
				$Is_accept_task = AcceptTask(-1 , 676)
				$quest_id = 676
				return
			endif
			if $random_number == 9
				$Is_accept_task = AcceptTask(-1 , 677)
				$quest_id = 677
				return
			endif
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif


		//105??
		if $level < 105
			if $random_number == 1
				$Is_accept_task = AcceptTask(-1 , 554)
				$quest_id = 554
				return
			endif
			if $random_number == 2
				$Is_accept_task = AcceptTask(-1 , 556)
				$quest_id = 556
				return
			endif
			if $random_number == 3
				$Is_accept_task = AcceptTask(-1 , 558)
				$quest_id = 558
				return
			endif
			if $random_number == 4
				$Is_accept_task = AcceptTask(-1 , 560)
				$quest_id = 560
				return
			endif
			if $random_number == 5
				if $level < 98
					$Is_accept_task = AcceptTask(-1 , 562)
					$quest_id = 562
				else
					$Is_accept_task = AcceptTask(-1 , 564)
					$quest_id = 564
				endif
				return
			endif
			if $random_number == 6
				if $level < 98
					$Is_accept_task = AcceptTask(-1 , 563)
					$quest_id = 563
				else
					$Is_accept_task = AcceptTask(-1 , 565)
					$quest_id = 565
				endif
				return
			endif
			if $random_number == 7
				$Is_accept_task = AcceptTask(-1 , 566)
				$quest_id = 566
				return
			endif
			if $random_number == 8
				$Is_accept_task = AcceptTask(-1 , 567)
				$quest_id = 567
				return
			endif
			if $random_number == 9
				$Is_accept_task = AcceptTask(-1 , 568)
				$quest_id = 568
				return
			endif
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif      		

	}
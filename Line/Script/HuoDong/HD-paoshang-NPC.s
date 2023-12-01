	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/23
	//		Author:??
	//		TaskName:HD-paoshang-NPC.s
	//		TaskID:???????
	//
	//****************************************

	//????1,??????????	3625
	//????2,????????????????,?????????????	3215
	function OnRequest(){
	
		$level = GetPlayerInfo( -1, "level" )
		if $level < 45
			DisableNpcOption(0)
			return
		endif
		$today_time = GetSystemTime( "yday" )
		
		//?????????
		$quest_time =  GetPlayerVar( -1	, 3625 )
		$quest_number = GetPlayerVar( -1 , 3215 )
		//???5??????
		if $today_time == $quest_time
			
			if $level < 50
				if $quest_number >= 2
					DisableNpcOption(0)
					return
				endif
			endif
			if $level < 60
				if $quest_number >= 3
					DisableNpcOption(0)
					return
				endif
			endif
			if $level < 70
				if $quest_number >= 4
					DisableNpcOption(0)
					return
				endif
			endif
			if $level < 80
				if $quest_number >= 5
					DisableNpcOption(0)
					return
				endif
			endif
			if $level < 90
				if $quest_number >= 6
					DisableNpcOption(0)
					return
				endif
			endif
			
			if $quest_number >= 7
				DisableNpcOption(0)
				return
			endif
		endif
		
		$is_exist_quest = 0
		call IsExistQuest()
		if $is_exist_quest == 1
			DisableNpcOption(0)
		endif
		
	}
	//??
	function OnOption0(){

		//??
		BC( "dialogbox", "player", -1, "The event closed" )
		return
		$level = GetPlayerInfo( -1, "level" )
		if $level < 45
			BC( "dialogbox", "player", -1, "Please come above level 45." )
			return
		endif
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
			return
		endif
		
		//?????????????
		$is_exist_quest = 0
		call IsExistQuest()
		if $is_exist_quest == 1
			BC( "dialogbox", "player", -1, "Please finish your caravan quest in your list first." )
			return
		endif
		
		$today_time = GetSystemTime( "yday" )
		//?????????
		$quest_time =  GetPlayerVar( -1	, 3625 )
		$quest_number =  GetPlayerVar( -1, 3215 )
		
		
		if $today_time == $quest_time
			if $quest_number >= 7
				BC( "dialogbox", "player", -1, "You are suspected to use regedit,please keep yourself away from regedit." )	
				return
			endif
		endif
		
		$r_number = RandomNumber ( 1, 100 )
		
		//????????,75???
		if $level < 75
			if $r_number <= 16
				$result = AcceptTask( -1, 529 )
			endif
			if $r_number > 16
				if $r_number <= 32
					$result = AcceptTask( -1, 531 )
				endif
			endif
			if $r_number > 32
				if $r_number <= 48
					$result = AcceptTask( -1, 775 )
				endif
			endif
			if $r_number > 48
				if $r_number <= 64
					$result = AcceptTask( -1, 527 )
				endif
			endif
			if $r_number > 64
				if $r_number <= 82
					$result = AcceptTask( -1, 533 )
				endif
			endif
			if $r_number > 82
				if $r_number <= 100
					$result = AcceptTask( -1, 771 )
				endif
			endif
		endif
		//????????,75-90?
		
		if $level >= 75
			if $level < 90
				if $r_number <= 10
					$result = AcceptTask( -1, 529 )
				endif
				if $r_number > 10
					if $r_number <= 20
						$result = AcceptTask( -1, 531 )
					endif
				endif
				if $r_number > 20
					if $r_number <= 30
						$result = AcceptTask( -1, 775 )
					endif
				endif
				if $r_number > 30
					if $r_number <= 40
						$result = AcceptTask( -1, 525 )
					endif
				endif
				if $r_number > 40
					if $r_number <= 50
						$result = AcceptTask( -1, 527 )
					endif
				endif
				if $r_number > 50
					if $r_number <= 60
						$result = AcceptTask( -1, 533 )
					endif
				endif
				if $r_number > 60
					if $r_number <= 70
						$result = AcceptTask( -1, 771 )
					endif
				endif
				if $r_number > 70
					if $r_number <= 75
						$result = AcceptTask( -1, 779 )
					endif
				endif
				if $r_number > 75
					if $r_number <= 85
						$result = AcceptTask( -1, 535 )
					endif
				endif
				if $r_number > 85
					if $r_number <= 95
						$result = AcceptTask( -1, 773 )
					endif
				endif
				if $r_number > 95
					if $r_number <= 100
						$result = AcceptTask( -1, 777 )
					endif
				endif
			endif
		endif
		//????????,90???
		
		if $level >= 90
			if $r_number <= 5
				$result = AcceptTask( -1, 529 )
			endif
			if $r_number > 5
				if $r_number <= 10
					$result = AcceptTask( -1, 531 )
				endif
			endif
			if $r_number > 10
				if $r_number <= 15
					$result = AcceptTask( -1, 775 )
				endif
			endif
			if $r_number > 15
				if $r_number <= 25
					$result = AcceptTask( -1, 525)
				endif
			endif
			if $r_number > 25
				if $r_number <= 30
					$result = AcceptTask( -1, 527 )
				endif
			endif
			if $r_number > 30
				if $r_number <= 40
					$result = AcceptTask( -1, 781 )
				endif
			endif
			if $r_number > 40
				if $r_number <= 50
					$result = AcceptTask( -1, 533 )
				endif
			endif
			if $r_number > 50
				if $r_number <= 60
					$result = AcceptTask( -1, 771 )
				endif
			endif
			if $r_number > 60
				if $r_number <= 70
					$result = AcceptTask( -1, 779 )
				endif
			endif
			if $r_number > 70
				if $r_number <= 80
					$result = AcceptTask( -1, 535 )
				endif
			endif
			if $r_number > 80
				if $r_number <= 90
					$result = AcceptTask( -1, 773 )
				endif
			endif
			if $r_number > 90
				if $r_number <= 100
					$result = AcceptTask( -1, 777 )
				endif
			endif
		endif
		


		if $level < 50
			$finish_number = 2
		endif
		if $level < 60
			if $level >= 50
				$finish_number = 3
			endif
		endif
		if $level < 70
			if $level >= 60
				$finish_number = 4
			endif
		endif
		if $level < 80
			if $level >= 70
				$finish_number = 5
			endif
		endif
		if $level < 90
			if $level >= 80
				$finish_number = 6
			endif
		endif
		if $level >= 90
			$finish_number = 7
		endif
		
		
		
		
		if $result == 0
			//??-START
			$TJ_join_number = GetGlobalVar(921)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(921 , $TJ_join_number)
			//??-END
			
			if $today_time == $quest_time
				//??????????
				$quest_number += 1
				SetPlayerVar (-1 ,3215 ,$quest_number )
				BC( "dialogbox", "player", -1, "You can receive",$finish_number,"shopping quests today, and you have received",$quest_number,"so far." )
				//??????
			else
				//???????????????
				SetPlayerVar( -1, 3625 ,$today_time)
				//??????????1
				SetPlayerVar (-1 ,3215 ,1 )
				BC( "dialogbox", "player", -1, "You can receive",$finish_number,"time of purchasing quest, this is your first time." )  
				//??-START
				$TJ_join_number = GetGlobalVar(920)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(920 , $TJ_join_number)
				//??-END  				
			endif
		else
			BC( "dialogbox", "player", -1, "Receiving quest failed, please check whether your bag or quest list is full." )
		endif
		

	}

	function IsExistQuest(){

		$result = IsTaskAccept( -1, 524 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 525 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 526 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 527 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 528 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 529 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 530 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 531 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 532 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 533 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 534 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 535 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 770 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 771 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 772 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 773 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 774 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 775 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 776 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 777 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 778 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 779 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 780 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 781 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$is_exist_quest = 0
	}
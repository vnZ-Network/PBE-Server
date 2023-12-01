	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/04
	//		Author:??
	//		TaskName:HD-shiliandongku-NPC3.s
	//		TaskID:????????-????????NPC,???????????
	//
	//****************************************
	//??????
	function OnRequest(){
	//?????8??10???,?????12??2???,?????
		$time = GetSystemTime( "hour" )
		if $time < 20 
			if $time > 13
				DisableNpcOption(1)
				return
			endif
		endif
		if $time > 21
			DisableNpcOption(1)
			return
		endif	
		if $time < 12
			DisableNpcOption(1)
			return
		endif
		
		$result = IsTaskAccept( -1, 4300 )
		if $result == 0
			DisableNpcOption(0)
		endif
	}
	//??NPC3????????,??????
	function OnOption0(){

		//????????
		$value = GetPlayerVar( -1, 3200 )
		if $value == 0
			call ClearQuest()
			FlyToMap( -1, 475 , 79 , 49 )
			BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
			return
		endif

		if $value == 1
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
				//????
		//	BC( "chat", "player", -1, "GUID:05161000001",$result_a," ", $result_b)
			if $result == 0
				BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
				call ClearQuest()
				FlyToMap( -1, 475 , 79 , 49 )
				return
			endif
		endif
		//?????2
		if $value == 2
			//?????????????
			$result = IsTaskAccept( -1, 4300 )

			if $result == 0
				BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
				call ClearQuest()
				FlyToMap( -1, 475 , 79 , 49 )
				return
			endif
		endif
		//?????3
		if $value == 3
			//?????????????
			$result = IsTaskAccept( -1, 4300 )

			if $result == 0
				BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
				call ClearQuest()
				FlyToMap( -1, 475 , 79 , 49 )
				return
			endif
		endif
		//?????4	
		if $value == 4
			//?????????????
			$result = IsTaskAccept( -1, 4300 )

			if $result == 0
				call ClearQuest()
				FlyToMap( -1, 475 , 79 , 49 )
				BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
				return
			endif
		endif
		//?????5
		if $value == 5
			//?????????????
			$result = IsTaskAccept( -1, 4300 )

			if $result == 0
				call ClearQuest()
				FlyToMap( -1, 475 , 79 , 49 )
				BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
				return
			endif
		endif
		
		if $value == 6
			//?????????????
			$result = IsTaskAccept( -1, 4300 )

			if $result == 0
				call ClearQuest()
				FlyToMap( -1, 475 , 79 , 49 )
				BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
				return
			endif
		endif
		if $value == 7
			//?????????????
			$result = IsTaskAccept( -1, 4300 )

			if $result == 0
				call ClearQuest()
				FlyToMap( -1, 475 , 79 , 49 )
				BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
				return
			endif
		endif
		
		if $value == 8
			//?????????????
			$result = IsTaskAccept( -1, 4300 )

			if $result == 0
				call ClearQuest()
				FlyToMap( -1, 475 , 79 , 49 )
				BC( "chat", "player", -1, "You have not finished the trial,no bonus reward for you." )
				return
			endif
		endif
		
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You have not enough space in your bag,please fix your bag." )
			return
		endif
			
		//????????,?????,????
		//24,25???????,?23???
		$result = FlyToMap( -1, 475 , 79 , 49 )
		if $result == 0
		//????,????????,????60??????
			$n = RandomNumber(1 ,2)
			if $n == 1
			
				$give_number = GetServerVar(35)
				$give_number = $give_number + 1
				SetServerVar(35 , $give_number)
				
				if $give_number >= 60
					AddPlayerInfo( -1, "item", 64405, 1 )
				else
					AddPlayerInfo( -1, "item", 64244, 1 )
				endif
			else
				AddPlayerInfo( -1, "item", 64405, 1 )
			endif
			
			BC( "chat", "player", -1, "You finished your trial." )
			
		endif
		
		
	}
	
	//??NPC3????????,??????????
	function OnOption1(){
		
		$time = GetSystemTime( "hour" )
		//BC( "chat", "player", -1, "testtime:", $time)
		if $time < 20 
			if $time > 13
				BC( "chat", "player", -1, "The event is ended." )
				return
			endif
		endif
		if $time > 21
			BC( "chat", "player", -1, "The event is ended." )
			return
		endif	
		if $time < 12
			BC( "chat", "player", -1, "The event is ended." )
			return
		endif
		
	//?????????????
		$value = GetPlayerVar( -1, 3200 )
		if $value == 0
			return
		endif
		
		//?????1
		if $value == 1
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finish the event,please receive your reward." )
				return
			endif
			
			$map_id = 114
			$map_x = 25
			$map_y = 44
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		//?????2
		if $value == 2
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finish the event,please receive your reward." )
				return
			endif
			$map_id = 115
			$map_x = 25
			$map_y = 44
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		//?????3
		if $value == 3
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finish the event,please receive your reward." )
				return
			endif
			
			$map_id = 114
			$map_x = 94
			$map_y = 41
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		//?????4	
		if $value == 4
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finish the event,please receive your reward." )
				return
			endif
			
			$map_id = 115
			$map_x = 94
			$map_y = 41
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		//?????5
		if $value == 5
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finish the event,please receive your reward." )
				return
			endif
			
			
			$map_id = 114
			$map_x = 31
			$map_y = 99
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		
		if $value == 6
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finish the event,please receive your reward." )
				return
			endif
			
			$map_id = 115
			$map_x = 31
			$map_y = 99
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		if $value == 7
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finish the event,please receive your reward." )
				return
			endif
			
			$map_id = 114
			$map_x = 95
			$map_y = 97
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		
		if $value == 8
			//?????????????
			$result = IsTaskAccept( -1, 4300 )
			if $result != 0
				BC( "dialogbox", "player", -1, "You have finish the event,please receive your reward." )
				return
			endif
			
			$map_id = 115
			$map_x = 95
			$map_y = 97
			FlyToMap( -1, $map_id, $map_x, $map_y )
			return
		endif
		
	}
	
	function ClearQuest(){
		
		CancelTask( -1, 4300 )
	}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/08
	//		Author:??
	//		TaskName:HD-zhanyaochumo-NPC.s
	//		TaskID:????-????NPC??(?????????)
	//
	//****************************************

	//????1,???????????	3611
	//????2,???????????????,????	9
	//????3,?????????	3205
	//????4, ????????? 3206
	//????5, 3207 ????,??????????????,??????????,????????,????
	//?????????????????,??????????????????????????????
	
	function OnRequest(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			DisableNpcOption(0)
			return
		endif
		//?????
		$today_time = GetSystemTime( "yday" )
		//??????????
		$quest_time = GetPlayerVar( -1, 3611 )
		//???????
		$quest_ring_number = GetPlayerVar( -1 , 3205 )
		//???????
		$quest_wheel_number = GetPlayerVar( -1 , 3206 )
		//?????????,??????????????
		if $quest_time == $today_time
			if $quest_ring_number > 10
				if $quest_wheel_number >= 3
					DisableNpcOption(0)
					return
				endif
			endif
			call IsExistQuest()
			//???????,0???????
			if $is_exist_quest == 1
				DisableNpcOption(0)
				return
			endif
		endif

	}
						
	function OnOption0(){
	
		//???????0????,1????
		$Is_accept_task = 0
		//????????
		$is_exist_quest = 0
		
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 30
			BC( "dialogbox", "player", -1, "Please come here when you get level 30,you are not strong enough." )
		//	BC( "screen", "player", -1, "Please come here when you get level 30,you are not strong enough." )
			return
		endif
		
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
		//	BC( "screen", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
			return
		endif
		
		//???????????,????????????
		if $level >= 90
			BC( "dialogbox", "player", -1, "It has not been opend above level 90." )
			return
		endif
		
		//?????
		$today_time = GetSystemTime( "yday" )
		//??????????
		$quest_time = GetPlayerVar( -1, 3611 )
		//?????????
		$switch_value = GetPlayerVar( -1 , 9 )
		//???????
		$quest_ring_number = GetPlayerVar( -1 , 3205 )
		//???????
		$quest_wheel_number = GetPlayerVar( -1 , 3206 )
		//?????????
		$quest_id = 0
		
		//????????????????
		if $quest_time == $today_time
			if $switch_value == 1
				call IsExistQuest()
				//???????,0???????
				if $is_exist_quest == 1
					BC( "dialogbox", "player", -1, "Please finish your caravan quest in your list first." )
				//	BC( "screen", "player", -1, "Please finish your caravan quest in your list first." )
					return
				else
					if $quest_wheel_number >= 3
						BC( "dialogbox", "player", -1, "You have finished 3 rounds quest,please contiue tomorrow." )
					//	BC( "screen", "player", -1, "You have finished 3 rounds quest,please contiue tomorrow." )
						return
					else
						$quest_ring_number = 1
						$quest_wheel_number = $quest_wheel_number + 1
						call ClearQuest()
						call RandomQuest()
						if $Is_accept_task == 0	
							SetTaskLoopCount ( -1, $quest_id, 1 )
							SetPlayerVar( -1 , 3205, $quest_ring_number)
							SetPlayerVar( -1 , 3206, $quest_wheel_number )
							SetPlayerVar( -1 , 3207, $level)
							SetPlayerVar( -1 , 9, 1)
							BC( "dialogbox", "player", -1, "You have got.",$quest_wheel_number,"ring quest of first round." )
				       		//????+1
							$players_count = GetServerVar(913)
							$players_count = $players_count + 1
							SetServerVar( 913, $players_count )                      							
							return
						endif
						BC( "dialogbox", "player", -1, "Error,error code.", $quest_ring_number,"   ",$Is_accept_task)
						return
					endif
				endif
			else
				if $quest_ring_number > 10
					if $quest_wheel_number >= 3
						BC( "dialogbox", "player", -1, "You have finished 3 rounds quest,please contiue tomorrow." )
					//	BC( "screen", "player", -1, "You have finished 3 rounds quest,please contiue tomorrow." )
						return
					else
						$quest_ring_number = 1
						$quest_wheel_number = $quest_wheel_number + 1
						call RandomQuest()
						if $Is_accept_task == 0	
							SetTaskLoopCount ( -1, $quest_id, 1 )
							SetPlayerVar( -1 , 3205, $quest_ring_number)
							SetPlayerVar( -1 , 3206, $quest_wheel_number )
							SetPlayerVar( -1 , 3207, $level)
							SetPlayerVar( -1 , 9, 1)
							BC( "dialogbox", "player", -1, "You have got.",$quest_wheel_number,"ring quest of first round." )
       				       	//????+1
							$players_count = GetServerVar(913)
							$players_count = $players_count + 1
							SetServerVar( 913, $players_count )                      							
							return
						endif
						BC( "dialogbox", "player", -1, "Error,error code.", $quest_ring_number,"   ",$Is_accept_task)
						return
					endif
				else
					//??????????????,??$level??3207??
					$level = GetPlayerVar(-1 , 3207)
					call RandomQuest()
					//????,???.?+1
					if $Is_accept_task == 0				
						//????????
						SetTaskLoopCount ( -1, $quest_id, $quest_ring_number )
						SetPlayerVar( -1, 9, 1)
						BC( "dialogbox", "player", -1, "You have got.",$quest_wheel_number,"N/A??",$quest_ring_number,"ring quest!" )
						return
					endif
					BC( "dialogbox", "player", -1, "Error,error code.", $quest_ring_number,"   ",$Is_accept_task)
					return
				endif
			endif
		else
			$quest_ring_number = 1
			call ClearQuest()
			call RandomQuest()
			if $Is_accept_task == 0		
				//????????
				SetTaskLoopCount ( -1, $quest_id, 1 )
				SetPlayerVar( -1 , 3205, 1)
				SetPlayerVar( -1 , 3206, 1)
				SetPlayerVar( -1 , 3207, $level)
				SetPlayerVar( -1 , 9, 1)
				SetPlayerVar( -1 , 3611, $today_time)
   	       		//????+1
				$players_count = GetServerVar(913)
				$players_count = $players_count + 1
				SetServerVar( 913, $players_count )             				
				BC( "dialogbox", "player", -1, "You have got the first ring quest of first round." )
				return
			endif
			BC( "dialogbox", "player", -1, "Error,error code.", $quest_ring_number,"   ",$Is_accept_task)
		endif

	}
	
	
	function ClearQuest(){

		CancelTask ( -1,4331  )
		CancelTask ( -1,4332  )
		CancelTask ( -1,4333  )
		CancelTask ( -1,4334  )
		CancelTask ( -1,4335  )
		CancelTask ( -1,4336  )
		CancelTask ( -1,4337  )
		CancelTask ( -1,4338  )
		CancelTask ( -1,4339  )
		CancelTask ( -1,4340  )
		CancelTask ( -1,4341  )
		CancelTask ( -1,4342  )
		CancelTask ( -1,4343  )
		CancelTask ( -1,4344  )
		CancelTask ( -1,4345  )
		CancelTask ( -1,4346  )
		CancelTask ( -1,4347  )
		CancelTask ( -1,4348  )
		CancelTask ( -1,4349  )
		CancelTask ( -1,4350  )
		CancelTask ( -1,4351  )
		CancelTask ( -1,4352  )
		CancelTask ( -1,4353  )
		CancelTask ( -1,4354  )
		CancelTask ( -1,4355  )
		CancelTask ( -1,4356  )
		CancelTask ( -1,4357  )
		CancelTask ( -1,4358  )
		CancelTask ( -1,4359  )
		CancelTask ( -1,4360  )
		CancelTask ( -1,4361  )
		CancelTask ( -1,4362  )
		CancelTask ( -1,4363  )
		CancelTask ( -1,4364  )
		CancelTask ( -1,4365  )
		CancelTask ( -1,4366  )
		CancelTask ( -1,4367  )
		CancelTask ( -1,4368  )
		CancelTask ( -1,4369  )
		CancelTask ( -1,4370  )

	}	
	
	
	//???????????
	function IsExistQuest(){
		
		$result = IsTaskAccept( -1, 4331 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4332 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4333 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4334 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4335 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4336 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4337 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4338 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4339 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4340 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4341 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4342 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4343 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4344 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4345 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4346 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4347 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4348 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4349 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4350 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4351 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4352 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4353 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4354 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4355 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4356 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4357 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4358 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4359 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4360 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4361 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4362 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4363 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4364 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4365 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4366 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4367 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4368 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4369 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4370 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$is_exist_quest = 0
		
	}
	
	
	
	//?????????,????
	function RandomQuest(){
		//45???,30???????????
		if $level < 45
			if $quest_ring_number == 1
				$Is_accept_task = AcceptTask(-1 , 4331)
				$quest_id = 4331
				return
			endif
			if $quest_ring_number == 2
				$Is_accept_task = AcceptTask(-1 , 4332)
				$quest_id = 4332
				return
			endif
			if $quest_ring_number == 3
				$Is_accept_task = AcceptTask(-1 , 4333)
				$quest_id = 4333
				return
			endif
			if $quest_ring_number == 4
				$Is_accept_task = AcceptTask(-1 , 4334)
				$quest_id = 4334
				return
			endif
			if $quest_ring_number == 5
				$Is_accept_task = AcceptTask(-1 , 4335)
				$quest_id = 4335
				return
			endif
			if $quest_ring_number == 6
				$Is_accept_task = AcceptTask(-1 , 4336)
				$quest_id = 4336
				return
			endif
			if $quest_ring_number == 7
				$Is_accept_task = AcceptTask(-1 , 4337)
				$quest_id = 4337
				return
			endif
			if $quest_ring_number == 8
				$Is_accept_task = AcceptTask(-1 , 4338)
				$quest_id = 4338
				return
			endif
			if $quest_ring_number == 9
				$Is_accept_task = AcceptTask(-1 , 4339)
				$quest_id = 4339
				return
			endif
			if $quest_ring_number == 10
				$Is_accept_task = AcceptTask(-1 , 4340)
				$quest_id = 4340
				return
			endif
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif
		
		//60??
		if $level < 60
			if $quest_ring_number == 1
				$Is_accept_task = AcceptTask(-1 , 4341)
				$quest_id = 4341
				return
			endif
			if $quest_ring_number == 2
				$Is_accept_task = AcceptTask(-1 , 4342)
				$quest_id = 4342
				return
			endif
			if $quest_ring_number == 3
				$Is_accept_task = AcceptTask(-1 , 4343)
				$quest_id = 4343
				return
			endif
			if $quest_ring_number == 4
				$Is_accept_task = AcceptTask(-1 , 4344)
				$quest_id = 4344
				return
			endif
			if $quest_ring_number == 5
				$Is_accept_task = AcceptTask(-1 , 4345)
				$quest_id = 4345
				return
			endif
			if $quest_ring_number == 6
				$Is_accept_task = AcceptTask(-1 , 4346)
				$quest_id = 4346
				return
			endif
			if $quest_ring_number == 7
				$Is_accept_task = AcceptTask(-1 , 4347)
				$quest_id = 4347
				return
			endif
			if $quest_ring_number == 8
				$Is_accept_task = AcceptTask(-1 , 4348)
				$quest_id = 4348
				return
			endif
			if $quest_ring_number == 9
				$Is_accept_task = AcceptTask(-1 , 4349)
				$quest_id = 4349
				return
			endif
			if $quest_ring_number == 10
				$Is_accept_task = AcceptTask(-1 , 4350)
				$quest_id = 4350
				return
			endif
		
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif
		
		
		//75?????
		if $level < 75
			if $quest_ring_number == 1
				$Is_accept_task = AcceptTask(-1 , 4351)
				$quest_id = 4351
				return
			endif
			if $quest_ring_number == 2
				$Is_accept_task = AcceptTask(-1 , 4352)
				$quest_id = 4352
				return
			endif
			if $quest_ring_number == 3
				$Is_accept_task = AcceptTask(-1 , 4353)
				$quest_id = 4353
				return
			endif
			if $quest_ring_number == 4
				$Is_accept_task = AcceptTask(-1 , 4354)
				$quest_id = 4354
				return
			endif
			if $quest_ring_number == 5
				$Is_accept_task = AcceptTask(-1 , 4355)
				$quest_id = 4355)
				return
			endif
			if $quest_ring_number == 6
				$Is_accept_task = AcceptTask(-1 , 4356)
				$quest_id = 4356
				return
			endif
			if $quest_ring_number == 7
				$Is_accept_task = AcceptTask(-1 , 4357)
				$quest_id = 4357
				return
			endif
			if $quest_ring_number == 8
				$Is_accept_task = AcceptTask(-1 , 4358)
				$quest_id = 4358
				return
			endif
			if $quest_ring_number == 9
				$Is_accept_task = AcceptTask(-1 , 4359)
				$quest_id = 4359
				return
			endif
			if $quest_ring_number == 10
				$Is_accept_task = AcceptTask(-1 , 4360)
				$quest_id = 4360
				return
			endif
			
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif
		
		//90?????
		
		if $level < 90
			if $quest_ring_number == 1
				$Is_accept_task = AcceptTask(-1 , 4361)
				$quest_id = 4361
				return
			endif
			if $quest_ring_number == 2
				$Is_accept_task = AcceptTask(-1 , 4362)
				$quest_id = 4362
				return
			endif
			if $quest_ring_number == 3
				$Is_accept_task = AcceptTask(-1 , 4363)
				$quest_id = 4363
				return
			endif
			if $quest_ring_number == 4
				$Is_accept_task = AcceptTask(-1 , 4364)
				$quest_id = 4364
				return
			endif
			if $quest_ring_number == 5
				$Is_accept_task = AcceptTask(-1 , 4365)
				$quest_id = 4365
				return
			endif
			if $quest_ring_number == 6
				$Is_accept_task = AcceptTask(-1 , 4366)
				$quest_id = 4366
				return
			endif
			if $quest_ring_number == 7
				$Is_accept_task = AcceptTask(-1 , 4367)
				$quest_id = 4367
				return
			endif
			if $quest_ring_number == 8
				$Is_accept_task = AcceptTask(-1 , 4368)
				$quest_id = 4368
				return
			endif
			if $quest_ring_number == 9
				$Is_accept_task = AcceptTask(-1 , 4369)
				$quest_id = 4369
				return
			endif
			if $quest_ring_number == 10
				$Is_accept_task = AcceptTask(-1 , 4370)
				$quest_id = 4370
				return
			endif
		
			$Is_accept_task = 1
			BC( "messagebox", "player", -1, "Error,please try again." )
			return
		endif
	}
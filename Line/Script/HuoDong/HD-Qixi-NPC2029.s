	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/12
	//		Author:???
	//		TaskName:HD-Qixi-NPC2029.s
	//		TaskID:??????
	//
	//****************************************
	
	
	//????????????  3935
	//??????????  3253
	
	
	//????
	function OnOption0(){
			
		//????????30?
		$level = GetPlayerInfo(-1, "level")
		if $level < 30
			BC( "dialogbox", "player", -1, "Sorry, your LV is lower than 30. Unable to exchange." )
			return	
		endif
		
		//???????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 1 
			BC( "dialogbox", "player", -1, "Sorry, your bag is full." )
			return	
		endif
		
		
		//????????
		$item1 = GetPlayerInfo(-1, "item", 63477)
		if $item1 == 0
			BC( "dialogbox", "player", -1, "Sorry, you must have at least one of each: Freya's Earring, Oceanblue Pearl, Berry Heart, and Lunar Tear." )
			return	
		endif
		
		$item2 = GetPlayerInfo(-1, "item", 63478)
		if $item2 == 0
			BC( "dialogbox", "player", -1, "Sorry, you must have at least one of each: Freya's Earring, Oceanblue Pearl, Berry Heart, and Lunar Tear." )
			return	
		endif
		
		$item3 = GetPlayerInfo(-1, "item", 63479)
		if $item3 == 0
			BC( "dialogbox", "player", -1, "Sorry, you must have at least one of each: Freya's Earring, Oceanblue Pearl, Berry Heart, and Lunar Tear." )
			return	
		endif
		
		$item4 = GetPlayerInfo(-1, "item", 63480)
		if $item4 == 0
			BC( "dialogbox", "player", -1, "Sorry, you must have at least one of each: Freya's Earring, Oceanblue Pearl, Berry Heart, and Lunar Tear." )
			return	
		endif
		
		
		//?????????????????
		$time = GetSystemTime("yday")
		$day = GetPlayerVar(-1, 3759)
		//?????,?????????0
		if $time != $day
			SetPlayerVar(-1 ,3228, 0)
		endif
		
				
		//????????5?,????3228
		$count = GetPlayerVar(-1, 3228)
		if $count >= 5
			BC( "dialogbox", "player", -1, "Sorry, one can only exchange for Dust of Dreams 5 times a day." )
			return	
		endif
		
		
		//????????
		$result = AddPlayerInfo(-1, "item", 63481, 1)
		if $result == 0
			//??????
			SubPlayerInfo( -1 , "item" , 63477 , 1 )
			SubPlayerInfo( -1 , "item" , 63478 , 1 )
			SubPlayerInfo( -1 , "item" , 63479 , 1 )
			SubPlayerInfo( -1 , "item" , 63480 , 1 )
			//??????
			$count = $count + 1
			SetPlayerVar(-1, 3228, $count)
			SetPlayerVar(-1, 3759, $time)
			SetPlayerActLog(-1,16,1)
		endif

	}
	
	
	//????
	function OnOption1(){
		
		
		//???????2??
		$partycount = GetTeamMemberCount(-1)
		if $partycount != 2
			BC( "dialogbox", "player", -1, "Sorry, you must form a party with a character of the opposite sex, and the party can only consist of two people." )
			return
		endif
		
		
		//??2???????
		$len = GetTeamAreaSize( -1 )
		if $len > 10
			BC( "dialogbox", "player", -1, "Your party member is too far away from you!" )
			return
		endif
		
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can sign up." )
			return
		endif
		
		
		//2???????30?????
		//???????3????
		$n = 0
		$id1 = 0
		$id2 = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			if $teamplayer_id != -1
			
				if $id1 == 0
					$id1 = $teamplayer_id
				else
					if $id2 == 0
						$id2 = $teamplayer_id
					endif
				endif
				
				$lv = GetPlayerInfo( $teamplayer_id , "level" )
				if $lv < 30
					BC( "dialogbox", "player", -1, "Sorry, you two must both reach level 30!" )
					return	
				endif
			
				$today_time = GetSystemTime( "yday" )
				$player_time = GetPlayerVar( $teamplayer_id , 3935 )
			
				if $player_time == $today_time
					$player_number =  GetPlayerVar( $teamplayer_id, 3253 )
					if $player_number >= 1
						#name = GetPlayerInfo( $teamplayer_id , "name" )
						BC( "chat", "player", -1, #name , " You have already finished Links of Romance once today!" )
						BC( "dialogbox", "player", -1 , #name , " You have already finished Links of Romance once today!" )
						return
					endif
				endif
			endif
		endwhile
		
		
		$sex1 = GetPlayerInfo( $id1 , "sex" )
		$sex2 = GetPlayerInfo( $id2 , "sex" )
		if $sex1 == $sex2
			BC( "dialogbox", "player", -1, "Sorry, you must form a party with a character of the opposite sex, and the party can only consist of two people." )
			return
		endif

		
		
		//??????
		$result = ReqAsk( -1 , 9 )
		if $result == 0
			//id1
			$today_time = GetSystemTime( "yday" )
			
			$player_time = GetPlayerVar( $id1 , 3935 )
			if $player_time == $today_time
				$player_number =  GetPlayerVar( $id1 , 3253 )
				$player_number = $player_number + 1
				$result = SetPlayerVar( $id1 , 3253 , $player_number )
			else
				SetPlayerVar( $id1 , 3935 , $today_time )
				$result = SetPlayerVar( $id1 , 3253 , 1 )
			endif
			
			
			$player_time = GetPlayerVar( $id2 , 3935 )
			if $player_time == $today_time
				$player_number =  GetPlayerVar( $id2 , 3253 )
				$player_number = $player_number + 1
				$result = SetPlayerVar( $id2 , 3253 , $player_number )
			else
				SetPlayerVar( $id2 , 3935 , $today_time )
				$result = SetPlayerVar( $id2 , 3253 , 1 )
			endif
			
			SetPlayerActLog($id1,16,2)
			SetPlayerActLog($id2,16,2)
			
			//???????????
			$history = GetGlobalVar( 963 )
			$history = $history + 2
			SetGlobalVar( 963 , $history )
		endif

		
	
	}
	
	
	//?????????
	function OnOption2(){
		
		FlyToMap( -1, 475, 101, 60 )
	
	}
		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/11
	//		Author:??
	//		TaskName:HD-leishengdezhufu-NPC1.s
	//		TaskID:?????,??
	//
	//****************************************
	
	//33 ?????
	//3213 ????????????
	//3800 ???????????
	//11 ?????BOSS??????
	function OnRequest(){
		//????CD?????
		$god_cd = GetServerVar(25)
		if $god_cd == 0
			DisableNpcOption(0)
		endif
		//??BOSS??????
		$boss_kill = GetServerVar(34)
		if $boss_kill == 0
			DisableNpcOption(0)
		endif
	//	BC( "chat", "player", -1, "cd:",$god_cd, "kill:",$boss_kill )
		
	}
	

	//???????
	function OnOption0(){
		
		$line = GetServerLineID()
		$join_line = GetPlayerVar(-1 ,3213)
		if $line != $join_line
			BC( "dialogbox", "player", -1, "Your last donation was not in this Realm,so you are not on the reward list." )
			return
		endif
		//?????????????
		$field_player = GetPlayerVar(-1 ,3800)
		$field_number = GetServerVar(33)
		if $field_player != $field_number
			BC( "dialogbox", "player", -1, "You did not participate in the donation event, so you are not on the reward list." )
			return
		endif
		//?????????
		//?????????
		//???????????????????
		$is_draw = GetPlayerVar(-1 ,11 )
		if $is_draw == 0 
			BC( "dialogbox", "player", -1, "You are on the list and you have gotten the reward, but have not signed yet." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$a = $level * $level
		$add_exp = $a * 10
		AddPlayerInfo(-1 , "exp" , $add_exp)
		//????????
		BC( "screen", "player", -1, "Congratulations, you got Thor's reward." )
		SetPlayerVar(-1 , 11 , 0)
		
	}

	//
	function OnOption1(){
		
		$count = GetPlayerInfo( -1, "item", 12509)
		if $count < 1
			BC( "dialogbox", "player", -1, "You do not have a Thunder Crystal" )
			return
		endif
		
		$revalue = SubPlayerInfo(-1 , "item" , 12509 ,1)
		
		if $revalue == 0
			$n = RandomNumber(1 , 5)
			if $n == 1
				AddPlayerInfo(-1 , "item" , 36549 , 1)
			endif
			if $n == 2
				AddPlayerInfo(-1 , "item" , 36550 , 1)
			endif
			if $n == 3
				AddPlayerInfo(-1 , "item" , 36551 , 1)
			endif
			if $n == 4
				AddPlayerInfo(-1 , "item" , 36552 , 1)
			endif
			if $n == 5
				AddPlayerInfo(-1 , "item" , 36553 , 1)
			endif
		endif
		
	}
	
	function OnOption2(){
		
		$count = GetPlayerInfo( -1, "item", 12509)
		if $count < 2
			BC( "dialogbox", "player", -1, "You do not have 2 Thunder Crystals" )
			return
		endif
		
		$revalue = SubPlayerInfo(-1 , "item" , 12509 ,2)
		
		if $revalue == 0
			$n = RandomNumber(1 , 5)
			if $n == 1
				AddPlayerInfo(-1 , "item" , 36565 , 1)
			endif
			if $n == 2
				AddPlayerInfo(-1 , "item" , 36566 , 1)
			endif
			if $n == 3
				AddPlayerInfo(-1 , "item" , 36567 , 1)
			endif
			if $n == 4
				AddPlayerInfo(-1 , "item" , 36568 , 1)
			endif
			if $n == 5
				AddPlayerInfo(-1 , "item" , 36569 , 1)
			endif
		endif
		
	}
	//????
	function OnOption3(){
		FlyToMap( -1, 475, 78, 48 ,1 )
	}

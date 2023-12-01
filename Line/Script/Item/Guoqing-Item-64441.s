	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/14
	//		Author:???
	//		TaskName:Guoqing-Item-64441.s
	//		TaskID:   ???
	//****************************************
	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "messagebox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$a = GetPlayerInfo( -1, "item", 64444 )
		if $a < 1
			BC( "messagebox", "player", -1, "You don't have the Magic Signing Wand. Quest cannot proceed." )
			return
		endif
		$taskcount = GetTaskCount ( -1 )
		if $taskcount >= 20
			BC( "messagebox", "player", -1, "Quest list is full. Please try again after clearing up your quest list." )
			return
		endif
		$info = SubPlayerInfo( -1, "item", 64441 , 1 )
		if $info != 0
			return
		endif
		$constellation = GetPlayerInfo( -1 , "constellation" )
		//???
		if $constellation == 0
			$result = IsTaskAccept( -1 , 4472 )
			if $result != 0
				AcceptTask( -1 , 4472 )
			endif
			AddPlayerInfo( -1, "item", 64442 , 1 )
			return
		endif
		if $constellation == 1
			$result = IsTaskAccept( -1 , 4472 )
			if $result != 0
				AcceptTask( -1 , 4472 )
			endif
			AddPlayerInfo( -1, "item", 64442 , 1 )
			return
		endif
		if $constellation == 2
			$result = IsTaskAccept( -1 , 4472 )
			if $result != 0
				AcceptTask( -1 , 4472 )
			endif
			AddPlayerInfo( -1, "item", 64442 , 1 )
			return
		endif
		if $constellation == 3
			$result = IsTaskAccept( -1 , 4472 )
			if $result != 0
				AcceptTask( -1 , 4472 )
			endif
			AddPlayerInfo( -1, "item", 64442 , 1 )
			return
		endif
		if $constellation == 4
			$result = IsTaskAccept( -1 , 4472 )
			if $result != 0
				AcceptTask( -1 , 4472 )
			endif
			AddPlayerInfo( -1, "item", 64442 , 1 )
			return
		endif
		if $constellation == 5
			$result = IsTaskAccept( -1 , 4472 )
			if $result != 0
				AcceptTask( -1 , 4472 )
			endif
			AddPlayerInfo( -1, "item", 64442 , 1 )
			return
		endif
		//???
		if $constellation == 6
			$result = IsTaskAccept( -1 , 4473 )
			if $result != 0
				AcceptTask( -1 , 4473 )
			endif
			AddPlayerInfo( -1, "item", 64443 , 1 )
			return
		endif
		if $constellation == 7
			$result = IsTaskAccept( -1 , 4473 )
			if $result != 0
				AcceptTask( -1 , 4473 )
			endif
			AddPlayerInfo( -1, "item", 64443 , 1 )
			return
		endif
		if $constellation == 8
			$result = IsTaskAccept( -1 , 4473 )
			if $result != 0
				AcceptTask( -1 , 4473 )
			endif
			AddPlayerInfo( -1, "item", 64443 , 1 )
			return
		endif
		if $constellation == 9
			$result = IsTaskAccept( -1 , 4473 )
			if $result != 0
				AcceptTask( -1 , 4473 )
			endif
			AddPlayerInfo( -1, "item", 64443 , 1 )
			return
		endif
		if $constellation == 10
			$result = IsTaskAccept( -1 , 4473 )
			if $result != 0
				AcceptTask( -1 , 4473 )
			endif
			AddPlayerInfo( -1, "item", 64443 , 1 )
			return
		endif
		if $constellation == 11
			$result = IsTaskAccept( -1 , 4473 )
			if $result != 0
				AcceptTask( -1 , 4473 )
			endif
			AddPlayerInfo( -1, "item", 64443 , 1 )
			return
		endif
		
	}


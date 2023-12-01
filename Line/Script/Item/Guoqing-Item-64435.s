	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/14
	//		Author:???
	//		TaskName:Guoqing-Item-64435.s
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
		$info = SubPlayerInfo( -1, "item", 64435 , 1 )
		if $info != 0
			return
		endif
		$guildid = GetPlayerInfo( -1 , "guildid" )
		$guildid = $guildid % 2
		if $guildid == 1
			$result = IsTaskAccept( -1 , 4468 )
			if $result != 0
				AcceptTask( -1 , 4468 )
			endif
			AddPlayerInfo( -1, "item", 64436 , 1 )
			return
		else
			$result = IsTaskAccept( -1 , 4469 )
			if $result != 0
				AcceptTask( -1 , 4469 )
			endif
			AddPlayerInfo( -1, "item", 64437 , 1 )
			return
		endif
		
	}


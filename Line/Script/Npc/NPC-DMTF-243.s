	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:???
	//		TaskName:NPC-DMTF-243.s
	//		TaskID:243 ????
	//
	//****************************************
	
	function OnRequest(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			DisableNpcOption(0)
		endif
		
		$task1 = IsTaskAccept( -1, 1345 )
		if $task1 != 0
			DisableNpcOption(1)
		endif
	
	}
	
	
	function OnOption0(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$Item0 = GetPlayerInfo( -1, "item", 64154 )
		$Item1 = GetPlayerInfo( -1, "item", 64161 )
		if $Item0 > 19
			if $Item1 > 19
				$Sub0 = SubPlayerInfo( -1, "item", 64154, 20 )
				$Sub1 = SubPlayerInfo( -1, "item", 64161, 20 )
				if $Sub0 != 0
					return
				endif
				if $Sub1 != 0
					return
				endif
				AddPlayerInfo( -1, "item", 12216, 1 )
			else
				BC( "dialogbox", "player", -1, "You want the Blue Key? Good. I'm in dire need of materials for my incantation research. You can have the key if you can bring me 20 Rotten Skulls and 20 Pharaoh's Blood. (Monsters around King's Gorge drop those materials.) " )
				return
			endif	
		else
			BC( "dialogbox", "player", -1, "You want the Blue Key? Good. I'm in dire need of materials for my incantation research. You can have the key if you can bring me 20 Rotten Skulls and 20 Pharaoh's Blood. (Monsters around King's Gorge drop those materials.) " )
			return
		endif
		
	}
	
	function OnOption1(){
		$task1 = IsTaskAccept( -1, 1345 )
		if $task1 != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$Status01 = IsExistStatus( -1, 11584 )
		if $Status01 != 0
			BC( "dialogbox", "player", -1, "Your greedy eyes have revealed your true filthy purpose, outlander. However a scary and disgusting face you make, I don't fear you at all! Now get lost!" )
			return
		endif
		
		AddPlayerInfo( -1, "item", 12405, 1 )
	}
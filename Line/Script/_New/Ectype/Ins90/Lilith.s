	function OnRequest(){
	
		

	}
	
	function OnOption0(){
	
	
		$ectype_ID = GetEctypeID(-1 ,223)
		
		if $ectype_ID > 0
			
			$ectype_type = GetEctypeVar(-1 ,0)
			if $ectype_type != 1
				BC("screen", "player", -1, "Normal difficulty. Unable to summon.")
				return
			endif
		
			$is_summon = GetEctypeVar(-1 ,4)
			if $is_summon == 1
				BC("screen", "player", -1, "Lilith has left here.")
				return
			endif
		
			$ItemID1 = GetPlayerInfo( -1, "item", 63464 )
			if $ItemID1 < 1
				BC("dialogbox", "player", -1, "I don't see my feather...")
				return
			endif
			
			SubPlayerInfo( -1, "item", 63464,1 )
			
			AddMonster( 51186, 1,$ectype_ID, 60, 32, 0 )
			DeleteNPC(1932, -1)
			SetEctypeVar(-1 ,4,1)
			BC("screen", "map", $ectype_ID, "Lilith: Thanks for the help! But, I'm afraid I'm going to need your energy to escape this place.")
	
		endif
		
		

		
	}
	
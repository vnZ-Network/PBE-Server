
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/14
	//		Author:???
	//		TaskName:90-MainLine-Item-12619.s
	//		TaskID:   ???
	//****************************************
	
	function OnUseItem(){
		
		$a = GetPlayerInfo( -1 , "item" , 12633 )
		if $a == 0
			BC( "screen" , "player" , -1 , "You have got a Feather Pen, you can not combine Stamp of the Netherworld." )
			BC( "chat" , "player" , -1 , "You have got a Feather Pen, you can not combine Stamp of the Netherworld." )
		else
			$info = SubPlayerInfo( -1, "item", 12633 , 1  )
			if $info != 0
				return
			endif
			$info = SubPlayerInfo( -1, "item", 12619 , 1  )
			if $info != 0
				return
			endif
			AddPlayerInfo( -1 , "item" , 12642 , 1 )
			
		endif
		
		
	}
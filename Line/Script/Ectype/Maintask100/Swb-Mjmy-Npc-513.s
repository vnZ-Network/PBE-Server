
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/3
	//		Author:???
	//		TaskName:Swb-Mjmy-Npc-513.s
	//		TaskID:  ???
	//****************************************

	function OnRequest(){
		
		$Accept = IsTaskAccept( -1 , 212 )
		if $Accept != 0
			DisableNpcOption(0)
		endif
		
	} 
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 212 )
		if $Accept != 0
			return
		endif
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		$info = GetPlayerInfo ( -1 , "item" , 12786  )
		if $info > 0
			BC( "screen" , "player" , -1 , "You have half of a Parchment now." )
			BC( "chat" , "player" , -1 , "You have half of a Parchment now." )
			return
		endif
		AddPlayerInfo( -1 , "item" , 12786 , 1 )
		BC( "screen" , "player" , -1 , "You got a whole Parchment!" )
		BC( "chat" , "player" , -1 , "You got a whole Parchment!" )
		
		
		
	}
	
//	function OnOption1(){
//		
//		$Accept = IsTaskAccept( -1 , 213 )
//		$Done = IsTaskDone( -1 , 213 )
//		if $Accept != 0
//			if $Done != 0
//				return
//			endif
//		endif
//		
//		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
//		if $no_bag < 1
//			BC( "screen", "player", -1, "GUID:04497000005" )
//			return
//		endif
//		$info = SubPlayerInfo ( -1 , "item" , 12782 , 1 )
//		if $info != 0
//			return
//		endif
//		AddPlayerInfo( -1 , "item" , 12783 , 1 )
//		BC( "screen" , "player" , -1 , "GUID:04497000006" )
//		BC( "chat" , "player" , -1 , "GUID:04497000007" )
//	}
//	
	
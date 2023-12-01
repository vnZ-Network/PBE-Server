	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Minghe-Ectype-Npc-434.s
	//		TaskID: ?? ?????
	//
	//****************************************
	
	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 147 )
		if $Accept != 0
			DisableNpcOption(0)
		endif
		

	}
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 147 )
		if $Accept != 0
			return
		endif
		$item = GetPlayerInfo( -1 , "item" , 12728 )
		if $item > 0
			BC( "dialogbox" , "player" , -1 , "You got [Immortal Heart]." )
			return
		endif
		AddPlayerInfo( -1 , "item" , 12728 ,1 )
		
	}
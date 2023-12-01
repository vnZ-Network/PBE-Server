	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/27
	//		Author:???
	//		TaskName:90-MainLine-Monster-55089.s 
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$Accept = IsTaskAccept( -1 , 1691 )
		if $Accept != 0
			return
		endif
		$n = RandomNumber ( 0 , 5 )
		if $n == 3
			AddPlayerInfo( -1 , "item" , 12698 , 1 )
			return
		endif
		BC( "screen" , "player" , -1 , "Not all of the camels have Force of the Dead, you got nothing." )
		
	}
		
	
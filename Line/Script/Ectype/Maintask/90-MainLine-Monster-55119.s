	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/27
	//		Author:???
	//		TaskName:90-MainLine-Monster-55119.s 
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$Accept = IsTaskAccept( -1 , 150 )
		if $Accept != 0
			return
		endif
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		AddMonsterByFloat( 55123 , 1 , $mapid, $posx , $posy , 0 , -1  )
		BC( "screen" , "player" , -1 , "You have chosen the wrong stone table and released the soul trapped by the tome." )

	}
		
	
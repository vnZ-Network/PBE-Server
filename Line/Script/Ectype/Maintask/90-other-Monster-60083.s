	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/11
	//		Author:??
	//		TaskName:90-other-Monster-60083.s
	//		TaskID:
	//****************************************
 
	
	function OnDead(){
	
	//????????1686??
		$task = IsTaskAccept( -1, 1686 )
		if $task != 0
			return
		endif
		
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		$x = GetPlayerInfo( -1 , "mapposx")
		$y = GetPlayerInfo( -1 , "mapposy")
		$mapid = GetPlayerInfo( -1 , "mapid")
		
	//?1?60082
		AddMonsterByFloat( 55082 , 1 , $mapid , $x , $y , 1 )
		BC( "screen", "player", -1, "You enraged Desert Predator.")
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 1 )
		
	}
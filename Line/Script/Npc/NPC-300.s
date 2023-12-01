	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/22
	//		Author:???
	//		TaskName:NPC-300.s
	//		TaskID:???
	//
	//****************************************
	
	function OnRequest(){
	
		$task = IsTaskAccept( -1,1541 )
		if $task != 0
			DisableNpcOption(0)
		endif	
	}
	
	function OnOption0(){
	
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		
		$del = SubPlayerInfo ( -1 , "item" ,12583,1 )
		if  $del != 0
			return
		endif
		AddMonster( 30221 , 1, $mapid , $x , $y , 1)
		BC( "screen", "player", -1, "Cruel Memphis has come!" )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	}
	
	
    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/27
	//		Author:???
	//		TaskName:Monster40157.s
	//		TaskID:??
	//****************************************
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 600 )
		if $Task1 != 0
			return
		endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		BC( "screen", "player", -1, "Fire falls from the sky! Disaster looms on the horizon..." )
		PlayEffect( -1, "Skill\Monster\boss\molifengbao\fire\tx_molifengbao_fire.ini" )
		AddMonster( 30171, 1, 90, $playerX, $playerY, 1 )
		
	}
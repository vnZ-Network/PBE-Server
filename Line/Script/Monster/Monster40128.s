    //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/03/18
	//		Author�������
	//		TaskName��Monster40128.s
	//		TaskID�����������
	//****************************************
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 19 )
		if $Task1 != 0
			return
		endif
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		
		$Random = RandomNumber( 1, 100 )
		if $Random < 61
			AddMonster( 30169, 1, 86, $playerX, $playerY, 1 )
			return
		else
			AddMonster( 30170, 1, 86, $playerX, $playerY, 1 )
			return
		endif
		
	}
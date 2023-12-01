    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/03
	//		Author:???
	//		TaskName:Monster30173.s
	//		TaskID:???
	//****************************************
	
	function OnDead(){
		//??????:9
		
		$ServerVar1 = GetServerVar( 9 )
		$ServerVar2 = $ServerVar1 + 1
		SetServerVar( 9, $ServerVar2 )
		
		$ServerVar3 = GetServerVar( 9 )
		if $ServerVar3 == 5000
			BC( "screen", "map", 170, "Dragonlair Guardian has been awaken." )
			AddMonster( 30020, 1, 170, 56, 78, 0 )
			SetServerVar( 9, 0 )
			return
		endif		
			
	}
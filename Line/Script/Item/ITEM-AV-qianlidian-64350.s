	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/29
	//		Author:???
	//		TaskName:ITEM-AV-qianlidian-64350.s
	//		TaskID:???
	//
	//****************************************
	
	function OnUseItem(){
		
		$a = GetPlayerVar( -1 , 3703 )
		$b = $a + 1
		
		if $b > 12
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 64350 , 1 )
		if  $info != 0
			return
		endif
		
		AddPotential( -1 , 5 )
		SetPlayerVar( -1 , 3703 , $b )
		BC( "screen", "player", -1, "You gained 5 Potential points!" )
		
	}
	
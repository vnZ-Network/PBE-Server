	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/08/24
	//		Author�����
	//		TaskName��npc-806.s
	//		TaskID�����帱������
	//
	//****************************************

	function OnRequest(){
//		$rank = GetPlayerInfo( -1 , "familyrank" )
//		if $rank != 1
//			DisableNpcOption(0)
//		else
//			DisableNpcOption(1)
//		endif
			
	}
	
	function OnOption0(){
		FlyToMap( -1 , 173 , 64 , 75 , 1 )
	}

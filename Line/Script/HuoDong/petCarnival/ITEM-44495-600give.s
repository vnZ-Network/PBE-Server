	//****************************************
	//		Copyright��PERFECT WORLD
	//		Modified��2012-9
	//		Author��������
	//		TaskName��
	//		TaskID��
	//****************************************

	function OnUseItem(){
		
		$res = SubPlayerInfo(-1,"item",44495,1)
		if $res == 0
			AddPlayerInfo(-1,"givepoint",600)
		endif
		
	}
	

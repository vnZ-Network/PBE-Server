	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/12/19
	//		Author����ԭ��
	//		TaskName��ITEM-59216.s
	//		TaskID��ѩ��
	//
	//****************************************
	
	
	function OnUseItem(){	
	
		$revaluet = UseSkill( -1 , 9824 , 1 )
		if  $revaluet != 0
			return
		endif			
		$del = SubPlayerInfo ( -1 , "item" , 59216 , 1 )

								
	}
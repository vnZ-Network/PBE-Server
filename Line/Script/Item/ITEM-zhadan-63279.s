	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/04/15
	//		Author��˾�Ĳ�
	//		TaskName��ITEM-zhadan-63279.s
	//		TaskID��ը�� 63279
	//
	//****************************************
	
	function OnUseItem(){
	
	
	
		$info = SubPlayerInfo ( -1 , "item" , 63279 , 1 )
		if  $info != 0
			return
		endif
		UseSkill(-1,8527,1)
	
	}
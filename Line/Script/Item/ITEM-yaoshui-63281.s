	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/04/15
	//		Author��˾�Ĳ�
	//		TaskName��ITEM-yaoshui-63281.s
	//		TaskID��ҩˮ 63281
	//
	//****************************************
	
	function OnUseItem(){
	
	
	
		$info = SubPlayerInfo ( -1 , "item" , 63281 , 1 )
		if  $info != 0
			return
		endif
		UseSkill(-1,8529,1)
	
	}
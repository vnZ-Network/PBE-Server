	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/04/15
	//		Author��˾�Ĳ�
	//		TaskName��ITEM-duyao-63280.s
	//		TaskID����ҩ 63280
	//
	//****************************************
	
	function OnUseItem(){
	
	
	
		$info = SubPlayerInfo ( -1 , "item" , 63280 , 1 )
		if  $info != 0
			return
		endif
		UseSkill(-1,8528,1)
	
	}
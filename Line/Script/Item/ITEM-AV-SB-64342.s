 	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/6/25
	//		Author��˾�Ĳ�
	//		TaskName��ITEM-AV-SB-64342.s
	//		TaskID������
	//****************************************
	
	function OnUseItem(){
	
		$info = SubPlayerInfo ( -1 , "item" , 64342 , 1 )
		if  $info != 0
			return
		endif
		AddTitle( -1 , 44 )
	}

	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/3/13
	//		Author��˾�Ĳ�
	//		TaskName��Swb-Mjmy-Item-59266.s
	//		TaskID���߼����֤֮
	//****************************************
	
	function OnUseItem(){
		
		$info = SubPlayerInfo( -1, "item", 59266 , 1 )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1 , "flower",100 )
		
	}
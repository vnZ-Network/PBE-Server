	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/3/12
	//		Author���
	//		TaskName��ITEM-baoxiang63270.s
	//		TaskID�����۵ı���
	//
	//****************************************



	function OnUseItem(){
	

		 $is_revalue = SubPlayerInfo(-1 ,"item" ,63270 , 1)
		 if $is_revalue == 0
			DropMonsterItems(-1 , 60063)
		
		 endif
	}

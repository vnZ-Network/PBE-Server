	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/3/12
	//		Author£ºÆî¾§
	//		TaskName£ºITEM-baoxiang63270.s
	//		TaskID£ºÁúµÛµÄ±¦Ïä
	//
	//****************************************



	function OnUseItem(){
	

		 $is_revalue = SubPlayerInfo(-1 ,"item" ,63270 , 1)
		 if $is_revalue == 0
			DropMonsterItems(-1 , 60063)
		
		 endif
	}

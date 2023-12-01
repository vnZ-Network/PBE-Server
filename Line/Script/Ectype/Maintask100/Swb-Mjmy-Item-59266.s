
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/3/13
	//		Author：司文博
	//		TaskName：Swb-Mjmy-Item-59266.s
	//		TaskID：高级灵魂之证
	//****************************************
	
	function OnUseItem(){
		
		$info = SubPlayerInfo( -1, "item", 59266 , 1 )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1 , "flower",100 )
		
	}
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/08/26
	//		Author：杨海勇
	//		TaskName：GM-60055.s
	//		TaskID：赠点包
	//
	//****************************************
	
	function OnUseItem(){
		
		//1000赠点		
		$result = AddPlayerInfo( -1, "givepoint" , 1000 )
		if $result == 0
			SubPlayerInfo( -1 , "item" , 60055 , 1 )
		endif
		
	}
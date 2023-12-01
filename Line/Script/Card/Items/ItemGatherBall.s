  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/23
	//		Author：张文宇
	//		TaskName：ItemGatherBall
	//		TaskID：采集水晶球
	//
	//****************************************
	
	function OnUseItem(){
		
		$delor = SubPlayerInfo( -1 , "item", 54100 , 1 )
		if $delor == 0
			AddStatus( -1 , 21602, 1 )
		endif
		
	}
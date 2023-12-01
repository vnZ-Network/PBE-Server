 	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/3/1
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºNPC-chuansong-243.s
	//		TaskID£º94  ´«ËÍ
	//****************************************
	
	function OnRequest(){	
	
		$result = IsTaskAccept(-1 , 94)
		if $result != 0
			DisableNpcOption(0)
		endif
	}
	function OnOption0(){
		FlyToMap( -1, 155 , 62 , 27 )
	}
	
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/18
	//		Author：卢鑫
	//		TaskName：Hellgate-area.s
	//		TaskID：地狱之门内的冥界入口
	//
	//****************************************
	
			function OnRequest(){
		}
	
	
	
		function OnOption0(){
			$fly = FlyToMap( -1, 227, 24, 102 )
		//清除地狱之门的BUFF
			AddStatus(-1 , 11812 , 2)	
			AddStatus(-1 , 11815 , 2)
		}
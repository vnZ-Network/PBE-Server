	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Area-150_200.s
	//		TaskID 走到区域移除BUFF
	//
	//****************************************
	
	
	function EnterArea(){

		$hasBuff = IsExistStatus( -1, 6005 )
		if $hasBuff == 0
			AddStatus( -1, 6005, 2 )
		endif
	
	}
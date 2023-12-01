	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-GlamoSword-Item-12789.s
	//		TaskID 使用神剑格拉墨
	//
	//****************************************
	
	function OnUseItem(){
		
		$accept = IsTaskAccept( -1 , 195 )
		if $accept != 0
			return			
		endif
		
		$num = GetPlayerInfo( -1, "item", 12791 )
		if $num == 0
			AddPlayerInfo( -1, "item", 12791, 1 )
		endif
	}

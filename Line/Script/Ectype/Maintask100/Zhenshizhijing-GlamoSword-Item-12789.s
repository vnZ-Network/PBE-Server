	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-GlamoSword-Item-12789.s
	//		TaskID ʹ���񽣸���ī
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

	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/03/16
	//		Author��κ��԰
	//		TaskName��Item-Shengyan-59259.s
	//		TaskID������Ҫ����ʿ���
	//
	//****************************************
	
	function OnUseItem(){
			
		$info = GetPlayerInfo(-1 , "nullitem", 0 )
				if $info == 0
						return
				endif
		
		//ɾ��������Ʒ
		$result = SubPlayerInfo( -1, "item", 59259 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "item", 59255 ,8  )
		endif
	}
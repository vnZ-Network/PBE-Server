	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/03/16
	//		Author��κ��԰
	//		TaskName��Item-Shengyan-59260.s
	//		TaskID������Ҫ����ʿ���
	//
	//****************************************
	
	function OnUseItem(){
			
		$info = GetPlayerInfo(-1 , "nullitem", 0 )
				if $info == 0
						return
				endif
		
		//ɾ��������Ʒ
		$result = SubPlayerInfo( -1, "item", 59260 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "item", 59255 ,6  )
		endif
	}
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/3/24
	//		Author������
	//		TaskName��Battle-Item-51839.s
	//		TaskID����������
	//****************************************
	
	function OnUseItem(){
		
			$result = SubPlayerInfo( -1, "item", 51839 , 1 )
			if	$result != 0
				return
			endif	
				AddPlayerInfo( -1, "item" , 20857, 1 )
				AddPlayerInfo( -1 , "givepoint" , 5000 )
				AddPlayerInfo( -1, "money" , 200000 )

	}
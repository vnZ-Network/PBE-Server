	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/20
	//		Author:???
	//		TaskName:
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
//44097	??????
//44098	?????

		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 2
			BC( "dialogbox", "player", -1, "You must have at least two slots in your bag!")
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 44097 , 1 )
		if $info != 0
			return
			BC( "dialogbox", "player", -1, "Failed!")
		else
			AddPlayerInfo( -1 , "item" , 44098 , 1 )
			AddPlayerInfo( -1 , "item" , 61099 , 1 )
		endif
		
	}

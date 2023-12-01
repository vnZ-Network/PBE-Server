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
		
		$info = SubPlayerInfo ( -1 , "item" , 44098 , 1 )
		if $info != 0
			return
			BC( "dialogbox", "player", -1, "Failed!")
		else
			AddPlayerInfo(-1,"money",10000000)
		endif
		
	}

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/22
	//		Author:???
	//		TaskName:ITEM-zhizunwangzhezhizheng-63310.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		
		$title = HaveTitle( -1, 25 )
		
	
		if $title != 0
			$info = SubPlayerInfo ( -1 , "item" , 63310 , 1 )
			if  $info != 0
				return
			endif
			AddTitle( -1,25)
			BC( "screen", "player", -1, "You have acquired the title, 'Ultimate Supreme'." )
			AddPlayerInfo ( -1 ,"item", 36539, 1 )	
			BC( "screen", "player", -1, "You have acquired Purefire Wheel!" )	
		endif	
	
	}
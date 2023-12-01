	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/22
	//		Author:???
	//		TaskName:ITEM-shiliwangzhezhizheng-63312.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnUseItem(){
	
	
		$title = HaveTitle( -1, 29 )

	
		if $title != 0
			$info = SubPlayerInfo ( -1 , "item" , 63312 , 1 )
			if  $info != 0
				return
			endif
			AddTitle( -1,29)
			BC( "screen", "player", -1, "You have acquired the title 'Mighty Supreme'." )
			AddPlayerInfo ( -1 ,"item", 36539 , 1 )	
			BC( "screen", "player", -1, "You have acquired Purefire Wheel!" )	
		endif	
	
	}
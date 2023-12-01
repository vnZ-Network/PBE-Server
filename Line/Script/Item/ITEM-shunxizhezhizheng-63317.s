	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/22
	//		Author:???
	//		TaskName:ITEM-shunxizhezhizheng-63317.s
	//		TaskID  ????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$title = HaveTitle( -1, 32 )
	

	
		if $title != 0
			$info = SubPlayerInfo ( -1 , "item" , 63317 , 1 )
			if  $info != 0
				return
			endif
			AddTitle( -1,32)
			BC( "screen", "player", -1, "You have acquired the title 'Star of the Moment'." )
			AddPlayerInfo ( -1 ,"item", 36529 , 1 )	
			BC( "screen", "player", -1, "You have acquired Flower of Chrono!" )	
		endif	
	
	}
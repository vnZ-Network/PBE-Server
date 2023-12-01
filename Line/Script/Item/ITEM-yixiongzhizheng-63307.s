	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/22
	//		Author:???
	//		TaskName:ITEM-yixiongzhizheng-63307.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$title = HaveTitle( -1, 22 )
		if $title != 0
			$info = SubPlayerInfo ( -1 , "item" , 63307 , 1 )
			if  $info != 0
				return
			endif
			AddTitle( -1,22)
			BC( "screen", "player", -1, "You have acquired the title 'The Hero'." )
			AddPlayerInfo ( -1 ,"item", 36538 , 1 )	
			BC( "screen", "player", -1, "You have acquired Enflamed Wheel" )	
		endif	
	
	}
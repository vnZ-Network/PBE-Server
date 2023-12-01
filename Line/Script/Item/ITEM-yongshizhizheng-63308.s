	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/22
	//		Author:???
	//		TaskName:ITEM-yongshizhizheng-63308.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		
		$title = HaveTitle( -1, 23 )
	
		if $title != 0
			$info = SubPlayerInfo ( -1 , "item" , 63308 , 1 )
			if  $info != 0
				return
			endif
			AddTitle( -1,23)
			BC( "screen", "player", -1, "You have acquired the title 'The Courageous'." )
			AddPlayerInfo ( -1 ,"item", 36538 , 1 )	
			BC( "screen", "player", -1, "You have acquired Enflamed Wheel" )	
		endif	
	
	}
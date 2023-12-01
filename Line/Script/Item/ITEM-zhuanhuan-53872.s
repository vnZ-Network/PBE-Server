	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/22
	//		Author:??
	//		TaskName:ITEM-zhuanhuan-53872.s
	//		TaskID:????????
	//
	//****************************************
	
	function OnUseItem(){
		//??ID
		$old = 53872
		//?????ID
		$new = 53380
		
		//??????????		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Sorry! Your bag is full!" )
			return
		endif
		
		//?????1?????
		$title_result = HaveTitle( -1 , 7 )
		
		if $title_result != 0
			BC( "screen" , "player" , -1 , "You don't have a proper Master title. Talk to Gallaja in Atlantis to get one." )
			return
		endif
		
		//????
		$del_result = SubPlayerInfo( -1, "item", $old, 1 )
		//????????
		if $del_result == 0
			//????
			$add_result = AddPlayerInfo( -1, "item", $new, 1 )
		endif	
	}
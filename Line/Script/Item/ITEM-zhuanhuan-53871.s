	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/22
	//		Author:??
	//		TaskName:ITEM-zhuanhuan-53871.s
	//		TaskID:??????????
	//
	//****************************************
	
	function OnUseItem(){
		//??ID
		$old = 53871
		//?????ID
		$new = 53376
		
		//??????????		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Sorry! Your Bag is full!" )
			return
		endif
		
		//?????????????
		$gd_count = GetPlayerInfo( -1 , "guildoffer" )
		
		if $gd_count < 175
			BC( "screen", "player", -1, "Sorry! Your Guild Contribution is less than 175." )
			return	
		else
			$gd_result = SubPlayerInfo( -1 , "guildoffer" , 175  )
			BC( "screen", "player", -1, "You consume 175 Guild Contribution." )
		endif
		
		//????
		$del_result = SubPlayerInfo( -1, "item", $old, 1 )
		//????????
		if $del_result == 0
			//????
			$add_result = AddPlayerInfo( -1, "item", $new, 1 )
		endif	
	}
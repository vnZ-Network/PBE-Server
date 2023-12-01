	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61131.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57035 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//?????????350
		$offer = GetPlayerInfo( -1, "guildoffer" )
		if $offer < 525
			BC( "screen", "player", -1, "Your Contribution to your Guild is lower than 525. Can not learn this action." )
			return
		endif	
		$delete_offer = SubPlayerInfo( -1, "guildoffer", 525 )
			$delete_item = SubPlayerInfo( -1, "item", 61131, 1 )
			//??????
			if $delete_item != 0
				return
			endif
		if $delete_offer != 0
			return
		endif
		
		AddEmote( -1, 57035 )
		BC( "screen", "player", -1, "Action learned: Duel" )
	
	}
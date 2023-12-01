	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61114.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57017 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//?????????350
		$offer = GetPlayerInfo( -1, "guildoffer" )
		if $offer < 350
			BC( "screen", "player", -1, "Your Contribution to your Guild is lower than 350. Can not learn this action." )
			return
		endif	
		$delete_offer = SubPlayerInfo( -1, "guildoffer", 350 )
			$delete_item = SubPlayerInfo( -1, "item", 61114, 1 )
			//??????
			if $delete_item != 0
				return
			endif
		if $delete_offer != 0
			return
		endif
		
		AddEmote( -1, 57017 )
		BC( "screen", "player", -1, "Action learned: Think" )
	
	}
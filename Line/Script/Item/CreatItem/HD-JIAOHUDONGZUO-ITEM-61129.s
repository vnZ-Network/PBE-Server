	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61129.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57033 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//?????????700
		$offer = GetPlayerInfo( -1, "guildoffer" )
		if $offer < 700
			BC( "screen", "player", -1, "Your Contribution to your Guild is lower than 700. Can not learn this action." )
			return
		endif	
		$delete_offer = SubPlayerInfo( -1, "guildoffer", 700 )
			$delete_item = SubPlayerInfo( -1, "item", 61129, 1 )
			//??????
			if $delete_item != 0
				return
			endif
		if $delete_offer != 0
			return
		endif
		
		AddEmote( -1, 57033 )
		BC( "screen", "player", -1, "Action learned: Toughen Up" )
	
	}
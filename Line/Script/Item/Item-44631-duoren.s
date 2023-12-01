	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013\1\9
	//		Author:??
	//		TaskName:
	//		TaskID:????????
	//
	//****************************************
	
	
	function OnUseItem(){
//60504	????????
//60505	????????
//60032	????????

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		//????
 		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		AddPlayerInfo( -1, "item", 60505, 11 )
	}

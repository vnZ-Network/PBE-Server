	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/1/22
	//		Author:??
	//		TaskName:ITEM-onetime-44647.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
		if $bag_count2 < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//????
 		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 9 , 100 )
		AddPlayerInfo( -1 , "item" , 2221 , 50 )
		AddPlayerInfo( -1 , "item" , 2401 , 4 )
		
	}
		
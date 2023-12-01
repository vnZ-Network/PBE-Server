	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/1/29
	//		Author:??
	//		TaskName:ITEM-44650.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			return
		endif
		
//		if $bag_count2 < 1
//			BC( "screen", "player", -1, "GUID:06281000001" )
//			return
//		endif
		
		//????
 		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		$sex = GetPlayerInfo(-1, "sex" )
		if $sex == 0
			AddPlayerInfo( -1 , "item" , 37033 , 1 )			
			return
		endif		
		if $sex == 1
			AddPlayerInfo( -1 , "item" , 37034 , 1 )			
			return
		endif				
	}
		
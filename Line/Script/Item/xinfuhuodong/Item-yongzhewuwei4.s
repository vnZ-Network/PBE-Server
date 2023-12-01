  //		Modified:2012-8-8
	//		Author:??
	//		TaskName:
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif		
		
		//????id
		$item_id = 44413
		$result = SubPlayerInfo(-1,"item",$item_id,1)	    
		//????  	
		$givepoint = 3888
//		//????id
//		$item = 36538
//		//????
//		$titleID = 24
		if $result == 0			
			AddPlayerInfo( -1, "givepoint", $givepoint )
			BC( "screen", "player", -1, "Received Salary",$givepoint," points!" )
//			AddTitle( -1, $titleID )
//			BC( "screen", "player", -1, "GUID:07774000003" )
//			AddPlayerInfo( -1, "item", $item, 1 )
//			BC( "screen", "player", -1, "GUID:07774000004" )
		endif		
	}
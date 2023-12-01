  //		Modified:2012-8-8
	//		Author:??
	//		TaskName:
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "GUID:07763000000" )
//			return
//		endif		
		
		//????id
		$item_id = 44417
		$result = SubPlayerInfo(-1,"item",$item_id,1)	    
		//????  	
		$givepoint = 8888
//		//????id
//		$item = 60997
		//????
		$titleID = 30
		if $result == 0			
			AddPlayerInfo( -1, "givepoint", $givepoint )
			BC( "screen", "player", -1, "Received Salary",$givepoint," points!" )
			AddTitle( -1, $titleID )
			BC( "screen", "player", -1, " received the title King of Chrono!" )
//			AddPlayerInfo( -1, "item", $item, 1 )
//			BC( "screen", "player", -1, "GUID:07763000004" )
		endif		
	}
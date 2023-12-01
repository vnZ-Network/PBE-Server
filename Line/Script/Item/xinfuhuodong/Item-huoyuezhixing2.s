  //		Modified:2012-8-8
	//		Author:??
	//		TaskName:
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "GUID:07764000000" )
//			return
//		endif		
		
		//????id
		$item_id = 44418
		$result = SubPlayerInfo(-1,"item",$item_id,1)	    
		//????  	
		$givepoint = 6666
//		//????id
//		$item = 60997
		//????
		$titleID = 31
		if $result == 0			
			AddPlayerInfo( -1, "givepoint", $givepoint )
			BC( "screen", "player", -1, "Received Salary",$givepoint," points!" )
			AddTitle( -1, $titleID )
			BC( "screen", "player", -1, " received the title Chrono Shadow!" )
//			AddPlayerInfo( -1, "item", $item, 1 )
//			BC( "screen", "player", -1, "GUID:07764000004" )
		endif		
	}
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
		$item_id = 44416
		$result = SubPlayerInfo(-1,"item",$item_id,1)	    
//		//????  	
//		$givepoint = 6666
		//????id
		$item = 60997
		//????
		$titleID = 29
		if $result == 0			
//			AddPlayerInfo( -1, "givepoint", $givepoint )
//			BC( "screen", "player", -1, "GUID:07770000001",$givepoint,"GUID:07770000002" )
			AddTitle( -1, $titleID )
			BC( "screen", "player", -1, " received the title Mighty Supreme!" )
			AddPlayerInfo( -1, "item", $item, 1 )
			BC( "screen", "player", -1, " received the pet skill Mighty Supreme!" )
		endif		
	}
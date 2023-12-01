	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-08-03
	//		Author:???
	//		TaskName:
	//		TaskID:59327??????
	//****************************************
	
	function OnUseItem(){
		
		 //??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 59327 )
		if $count < 10
			BC( "screen", "player", -1, "Not enough Oracle Crystal Fragments!" )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 59327, 10)

		//??????
		if $revalue == 0 
			AddPlayerInfo( -1, "item", 59326, 1 )
		endif
      
	}
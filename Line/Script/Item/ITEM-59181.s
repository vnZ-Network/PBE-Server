	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/26
	//		Author:???
	//		TaskName:ITEM-59181.s
	//		TaskID:???????  
	//
	//****************************************
	
	
	function OnUseItem(){
	
		//????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//????
		$del = SubPlayerInfo ( -1 , "item" , 59181 , 1 )
		if  $del != 0
			return
		endif
		
		//????
		AddPlayerInfo( -1, "item", 50026, 5 )

						
	}
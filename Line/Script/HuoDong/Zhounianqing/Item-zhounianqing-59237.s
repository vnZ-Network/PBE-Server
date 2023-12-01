		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59237.s
	//		TaskID:???????-?????
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	
		
	//????????????3?
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 3
			BC( "screen", "player", -1, "You need at least 3 open Bag slots to open the pack.")
			return
		endif
		
	
	//????
		$item = SubPlayerInfo( -1 , "item" , 59237 , 1 )
		if $item != 0
			return
		endif
			
			
	//????
		AddPlayerInfo( -1 , "item" , 59229 , 5 )
		AddPlayerInfo( -1 , "item" , 63691 , 20 )
		AddPlayerInfo( -1 , "item" , 64245 , 2 )
		
	}
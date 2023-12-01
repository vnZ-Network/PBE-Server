		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59240.s
	//		TaskID:???????-?????
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	
		
	//????????????4?
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 5
			BC( "screen", "player", -1, "You need at least 5 open Bag slots to open the pack.")
			return
		endif
		
	
	//????
		$item = SubPlayerInfo( -1 , "item" , 59240 , 1 )
		if $item != 0
			return
		endif
			
			
	//????
		AddPlayerInfo( -1 , "item" , 62063 , 1 )
		AddPlayerInfo( -1 , "item" , 59228 , 12 )
		AddPlayerInfo( -1 , "item" , 2419 , 1 )
		AddPlayerInfo( -1 , "item" , 64248 , 1 )
		AddPlayerInfo( -1 , "item" , 20274 , 1 )
		
	}
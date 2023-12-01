		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59239.s
	//		TaskID:???????-?????
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	
		
	//????????????4?
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 4
			BC( "screen", "player", -1, "You need at least 4 open Bag slots to open the pack.")
			return
		endif
		
	
	//????
		$item = SubPlayerInfo( -1 , "item" , 59239 , 1 )
		if $item != 0
			return
		endif
			
			
	//????
		AddPlayerInfo( -1 , "item" , 59228 , 6 )
		AddPlayerInfo( -1 , "item" , 59142 , 1 )
		AddPlayerInfo( -1 , "item" , 64247 , 1 )
		AddPlayerInfo( -1 , "item" , 20273 , 1 )
		
	}
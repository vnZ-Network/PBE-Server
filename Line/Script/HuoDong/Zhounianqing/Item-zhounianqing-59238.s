		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59238.s
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
		$item = SubPlayerInfo( -1 , "item" , 59238 , 1 )
		if $item != 0
			return
		endif
			
			
	//????
		AddPlayerInfo( -1 , "item" , 59229 , 15 )
		AddPlayerInfo( -1 , "item" , 59122 , 200 )
		AddPlayerInfo( -1 , "item" , 59142 , 1 )
		AddPlayerInfo( -1 , "item" , 64246 , 1 )
		
	}
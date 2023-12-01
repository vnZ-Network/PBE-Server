		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59236.s
	//		TaskID:???????-?????
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	
		
	//????????????1?
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot to open the pack.")
			return
		endif
		
	
	//????
		$item = SubPlayerInfo( -1 , "item" , 59236 , 1 )
		if $item != 0
			return
		endif
			
			
	//????
		AddPlayerInfo( -1 , "item" , 59234 , 2 )
		
	}
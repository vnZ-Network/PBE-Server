		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59230.s
	//		TaskID:?????6????-????
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	
		
	//????????????2?
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 2
			BC( "screen", "player", -1, "You need at least 2 open Bag slots to open the Anniversary Pack.")
			return
		endif
		
	
	//????
		$item = SubPlayerInfo( -1 , "item" , 59230 , 1 )
			if $item != 0
				return
			endif
			
			
	//????
		AddPlayerInfo( -1 , "item" , 59231 , 2 )
		AddPlayerInfo( -1 , "item" , 59232 , 5 )
		
	}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:item-59941.s
	//		TaskID:???????
	//
	//****************************************
	

	function OnUseItem(){

	$result = SubPlayerInfo(-1 , "item" , 59942 , 1)
	
	 //???????
  	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
 	if $bag_count < 1
    	BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the pack!" )
     	return
  	endif
	
	//??????????
 	if $result != 0
     	return
  	endif
  	
  	//????????
  	
  	AddPlayerInfo(-1, "item", 5701, 1 ) 
  	
		
	}																	
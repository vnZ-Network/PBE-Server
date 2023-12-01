	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/11
	//		Author:???
	//		TaskName:Rewards-59971.s
	//		TaskID:???????
	//
	//****************************************
	

	function OnUseItem(){
		
	//????? 5702


		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )	
	 	if $bag_count < 1
	    BC( "chat", "player", -1, "You do not have enough space in your bag." )
	    return
	  endif
	  	
		//??????????
		$result = SubPlayerInfo(-1 , "item" , 59971 , 1)	
	 	if $result != 0
	   	return
	  endif
		
		AddPlayerInfo(-1, "item", 5702, 1 ) 
		
	}																	
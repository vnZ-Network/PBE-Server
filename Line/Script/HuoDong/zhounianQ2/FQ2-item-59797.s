	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??????5??
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
		
//59797	?????????
//59798	???????
//59799	?????
//59800	????
//59801	????
//59802	????
//59804	?????????      
//59805	????????
//59807	?????

		$item1 = GetPlayerInfo( -1, "item", 59797)
		if $item1 < 5
			BC( "screen", "player", -1, "You have less than 5 Icewisp Stone Fragments. You cannot combine them." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59797 ,5)
		if $result == 0
			$result = AddPlayerInfo( -1, "item", 59798 ,1)
			BC( "screen" , "player" , -1 , "It wasn't a perfect combination, so you got a Flawed Icewisp Stone." )
		endif
		
	}
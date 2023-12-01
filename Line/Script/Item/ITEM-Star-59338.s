	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/11
	//		Author:	???
	//		TaskName:ITEM-Star-59338.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	  
	  $a = GetPlayerInfo( -1 , "prestige" , 9 )
		if $a < 8000
			BC( "screen", "player", -1, "Your Expedition Reputation has increased.",$a,". Activation available at 8000 points!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 5
			BC( "screen", "player", -1, "You need at least 5 empty Bag slots." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59338, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 53383, 1 )
		AddPlayerInfo( -1, "item", 53079, 1 )
		AddPlayerInfo( -1, "item", 53082, 1 )
		AddPlayerInfo( -1, "item", 53091, 1 )
		AddPlayerInfo( -1, "item", 2443, 10 )
		
	}

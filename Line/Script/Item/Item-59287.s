	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:Skill-item-59287.s
	//		TaskID:??
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59287, 1 )
		if $result != 0
			return
		endif
		
		$profession = GetPlayerInfo( -1, "profession" )
		if $profession == 1
			AddPlayerInfo( -1, "item", 64256, 1 )
		endif
		if $profession == 2
			AddPlayerInfo( -1, "item", 64257, 1 )
		endif
		if $profession == 3
			AddPlayerInfo( -1, "item", 64258, 1 )
		endif
		if $profession == 4
			AddPlayerInfo( -1, "item", 64259, 1 )
		endif
		if $profession == 5
			AddPlayerInfo( -1, "item", 64260, 1 )
		endif
		if $profession == 6
			AddPlayerInfo( -1, "item", 64299, 1 )
		endif		
	}
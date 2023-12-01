	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/15
	//		Author:???
	//		TaskName:Skill-item-59290.s
	//		TaskID:????
	//
	//****************************************
	
	
	
function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59290, 1 )
		if $result != 0
			return
		endif
		
		$Rnd = RandomNumber( 1, 2 )
		if $Rnd == 1
			AddPlayerInfo( -1, "item", 59252, 1 )
		endif
		if $Rnd == 2
			AddPlayerInfo( -1, "item", 59253, 1 )
		endif
		
	}
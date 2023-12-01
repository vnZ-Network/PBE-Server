	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/12/29
	//		Author:???
	//		TaskName:1.s
	//		TaskID:????
	//
	//****************************************
	//
	
	
	function OnUseItem(){
		
		
		$player_profession = GetPlayerInfo(-1,"profession")
		if $player_profession == 1
			BC( "dialogbox", "player", -1, "Your class does not have Sheild to exchange." )
			return
		endif
		if $player_profession == 3
			BC( "dialogbox", "player", -1, "Your class does not have Sheild to exchange." )
			return
		endif
		if $player_profession == 4
			BC( "dialogbox", "player", -1, "Your class does not have Sheild to exchange." )
			return
		endif
		
		
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You have not enough space in your bag,please fix your bag." )
			return
		endif
		
	 	$result = SubPlayerInfo( -1, "item", 63859, 1)
		if $result == 0
			$player_profession = GetPlayerInfo(-1,"profession")
//1:??-//2:??-//3:??-//4:??-//5:??-//6:???
			if $player_profession == 2
				AddPlayerInfo( -1, "item", 28218, 1)
			endif
			if $player_profession == 5
				AddPlayerInfo( -1, "item", 28248, 1)
			endif
			if $player_profession == 6
				AddPlayerInfo( -1, "item", 31247, 1)
			endif
		endif
		
	}
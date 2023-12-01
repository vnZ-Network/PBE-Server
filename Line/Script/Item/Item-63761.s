	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/22
	//		Author:???
	//		TaskName:Item-63761.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
			
		$n = RandomNumber ( 1000, 5000 )
		$a = GetPlayerVar( -1 , 3879 )
		//??????
		$result = SubPlayerInfo( -1, "item", 63761 , 1 )
		if $result == 0
			$m = $n + $a
			SetPlayerVar( -1 , 3879, $m )
			BC( "screen", "player", -1, "You've received Lucky Points: " ,$n )
		endif
	}
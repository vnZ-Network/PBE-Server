	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/22
	//		Author:???
	//		TaskName:Item-63758.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
			
		$n = RandomNumber ( 1000, 2000 )
		$a = GetPlayerVar( -1 , 3871 )
		//??????
		$result = SubPlayerInfo( -1, "item", 63758 , 1 )
		if $result == 0
			$m = $n + $a
			SetPlayerVar( -1 , 3871, $m )
			BC( "screen", "player", -1, "You've received Lucky Points: " ,$n )
		endif
	}
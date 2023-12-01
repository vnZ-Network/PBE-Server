		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59241.s
	//		TaskID:???????
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	$cont = GetPlayerVar( -1 , 3266 )
	$cont = $cont + 1
	
	//??????????30?
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 30
			BC( "screen", "player", -1, "Use it after reaching LV30.")
			return
		endif
	//??????	
		if $cont > 50
			BC( "screen", "player", -1, "You have reached maximum amount of uses.")
			return
		endif
	
	//????
		$item = SubPlayerInfo( -1 , "item" , 59241 , 1 )
			if $item != 0
				return
			endif
		
		SetPlayerVar( -1 , 3266 , $cont )
		
	//30-79????? 
		if $level < 80
			$n1 = $level - 30
			$n2 = $n1 * 3
			$n3 = $n2 + 80
			$n4 = $n3 * 1000
			
			AddPlayerInfo( -1 , "money" , $n4 )
			return
		endif
		
	//80???????
		$m1 = $level - 80
		$m2 = $m1 + 250
		$m3 = $m2 * 1000
			
		AddPlayerInfo( -1 , "money" , $m3 )
	
		
	}
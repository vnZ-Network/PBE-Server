	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:item-59942.s
	//		TaskID:???????
	//
	//****************************************
	

	function OnUseItem(){

	$result = SubPlayerInfo(-1 , "item" , 59941 , 1)
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	
 	if $bag_count < 1
    	BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the pack!" )
     	return
  	endif
	//??????????
 	if $result != 0
     	return
  	endif
  
	//??????
	$play_level = GetPlayerInfo( -1 , "level" )
	$exp = 0
	if $play_level > 47
		$temp = 6 * $play_level
		$temp = $temp - 220
		$exp = $play_level * $play_level
		$exp = $exp * $temp
		$exp = $exp / 10
	else
		$exp = $play_level * $play_level
		$exp = $exp * 6
	endif
	//??????
	$exp = $exp * 6
	//??????
	AddPlayerInfo( -1 , "exp" , $exp )
	AddPlayerInfo(-1, "item", 59101, 1 ) 
	
	//?????
	//????? = ????^2+0.6*????+1000
	//????? = ????? * 120
	$fieldlevel = GetFieldLevel(-1)
	$godexp = $fieldlevel * $fieldlevel
	$b = $fieldlevel * 6
	$b = $b / 10
	$godexp = $godexp + $b
	$godexp = $godexp + 1000
	$godexp = $godexp * 84
	
	if $fieldlevel > 0
		AddFieldExp( -1 , $godexp )
	endif
		
	}																	
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/16
	//		Author:???
	//		TaskName:item-59955.s
	//		TaskID:???10????
	//
	//****************************************
	

	function OnUseItem(){
		
	//20120?8? ??10?? 10? ???? *1 5701  ???? *5 ?? 59956  money	59101  exp


	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	
 	if $bag_count < 3
    	BC( "chat", "player", -1, "You must have at least 3 free bag spaces." )
     	return
  	endif
	//??????????
	$result = SubPlayerInfo(-1 , "item" , 59955 , 1)	
 	if $result != 0
     	return
  	endif
  
	//??????--??
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
	$exp = $exp * 3
	//??????
	AddPlayerInfo( -1 , "exp" , $exp )
	AddPlayerInfo(-1, "item", 5701, 1 ) 
	AddPlayerInfo(-1, "item", 59956, 5 ) 
	AddPlayerInfo(-1, "item", 59101, 1 ) 
	
	//?????--??
	//????? = ????^2+0.6*????+1000
	//????? = ????? * 120
	$fieldlevel = GetFieldLevel(-1)
	$godexp = $fieldlevel * $fieldlevel
	$b = $fieldlevel * 6
	$b = $b / 10
	$godexp = $godexp + $b
	$godexp = $godexp + 1000
	$godexp = $godexp * 42
	
	if $fieldlevel > 0
		AddFieldExp( -1 , $godexp )
	endif
		
	}																	
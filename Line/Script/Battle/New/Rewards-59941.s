	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:item-59941.s
	//		TaskID:Rewards-59941.s
	//
	//****************************************
	

	function OnUseItem(){
		
	//20120?8? ????? ?? ????? *1 5702  ???? *3 ?? 59956  money	59101  exp  ??????? 


	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	
 	if $bag_count < 3
    	BC( "chat", "player", -1, "You must have at least 3 free bag spaces." )
     	return
  	endif
	//??????????
	$result = SubPlayerInfo(-1 , "item" , 59941 , 1)	
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

	//???? ?? 	
	$Jacky = RandomNumber(1,600)
	$Have = HaveTarot( -1 , 2513 )
		
	//????
	AddPlayerInfo( -1 , "exp" , $exp )
	AddPlayerInfo(-1, "item", 5702, 1 ) 
	AddPlayerInfo(-1, "item", 59956, 3 ) 
	AddPlayerInfo(-1, "item", 59101, 1 ) 	
	if $fieldlevel > 0
		AddFieldExp( -1 , $godexp )
	endif
	if $Have == 0
		if $Jacky == 60
			AddTarotCard( -1 , 2513 )
		endif
	endif
		
	}																	
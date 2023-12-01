	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:Rewards-59970.s
	//		TaskID:???????
	//
	//****************************************
	

	function OnUseItem(){
		
	//20120?8? ????? ??   ???? *1 ?? 59956  exp  ??????? 


	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )	
 	if $bag_count < 1
    	BC( "chat", "player", -1, "You do not have enough space in your bag." )
     	return
  	endif
  	
	//??????????
	$result = SubPlayerInfo(-1 , "item" , 59970 , 1)	
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
	$exp = $exp * 4

	//?????
	//????? = ????^2+0.6*????+1000
	//????? = ????? * 120
	$fieldlevel = GetFieldLevel(-1)
	$godexp = $fieldlevel * $fieldlevel
	$b = $fieldlevel * 6
	$b = $b / 10
	$godexp = $godexp + $b
	$godexp = $godexp + 1000
	$godexp = $godexp * 30	

	//???? ?? 	
	$Jacky = RandomNumber(1,1000)
	$Have = HaveTarot( -1 , 2513 )
		
	//????
	AddPlayerInfo( -1 , "exp" , $exp )
	AddPlayerInfo(-1, "item", 59956, 2 ) 
	
	if $fieldlevel > 0
		AddFieldExp( -1 , $godexp )
	endif
	if $Have == 0
		if $Jacky == 60
			AddTarotCard( -1 , 2513 )
		endif
	endif
		
	}																	
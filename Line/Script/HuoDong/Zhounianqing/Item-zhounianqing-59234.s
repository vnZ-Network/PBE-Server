		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59234.s
	//		TaskID:????(??^2*200)
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	$day = GetPlayerVar( -1, 3952)
	$nowday =  GetSystemTime( "yday" )
	$round = GetPlayerVar( -1, 3262)
	$round = $round + 1
	
	//??????????(??^2*200)
	
	$lv = GetPlayerInfo( -1 , "level" )
	$lv1 = $lv * $lv
	$addexp = $lv1 * 200
	
	//?????
	//????? = ????^2+0.6*????+1000
	//????? = ????? * 2
	$fieldlevel = GetFieldLevel(-1)
	$godexp = $fieldlevel * $fieldlevel
	$b = $fieldlevel * 6
	$b = $b / 10
	$godexp = $godexp + $b
	$godexp = $godexp + 1000
	$godexp = $godexp * 2
	
	if $day != $nowday
		$sub = SubPlayerInfo( -1 , "item" , 59234 , 1 )
		if $sub != 0
			return
		endif
		
		SetPlayerVar(-1,3952,$nowday )
		SetPlayerVar(-1,3262,1 )
		//????
		AddPlayerInfo( -1 , "exp" , $addexp )
		if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
		endif
		BC( "screen", "player", -1, "You will get a lot of EXP for reading the Book of EXP.")
		return
	endif	
	
	if $round > 10
		BC( "screen", "player", -1, "You can only read 10 Books of EXP a day.")
		return
	endif
		
	$sub = SubPlayerInfo( -1 , "item" , 59234 , 1 )
	if $sub != 0
		return
	endif
		
	SetPlayerVar(-1,3262,$round )
	AddPlayerInfo( -1 , "exp" , $addexp )
	if $fieldlevel > 0
		AddFieldExp( -1 , $godexp )
	endif
	BC( "screen", "player", -1, "You will get a lot of EXP for reading the Book of EXP.")
	
}
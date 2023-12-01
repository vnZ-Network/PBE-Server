	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/13
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:44087-Item-BirthdayCandy.s
	//
	//****************************************


	function OnUseItem(){


	//????id ??????? 44087
	
	$item_0 = 44087
  $lv = GetPlayerInfo(-1, "level")  
  
  //???? 
  if $lv < 30
  	BC(screen , player, -1, "You must have reached LV30 before you can use Birthday Candy.")
  	return
  endif
  
  //??????30-39?((????^3)+50*(????^3))/30
  $h = $lv * $lv
  $h = $h * $lv
  $h = $h * 17
  $h = $h / 10
  $exp3 = $h
  
  //??????40-59? 1.5*(186*????*????*????-24421*????*????+1075000*????-15760000)
  $a = $lv * $lv
  $a = $a * $lv
  $a = $a * 186
  $b = $lv * $lv
  $b = $b * 24421
  $c = $a - $b
  $a = $lv * 1075000
  $d = $c + $a
  $d = $d - 15760000
  $d = $d * 3
  $d = $d / 2
  $exp1 = $d
  
  //60??60????????? 1.5*(24/5*(????^3)+308.8*(????^2))*2/5
  $e = $lv * $lv
  $e = $e * $lv
  $e = $e / 5
  $e = $e * 24
  $f = $lv * $lv
  $f = $f / 5
  $f = $f * 1544
  $g = $e + $f
  $g = $g / 5
  $g = $g * 3
  $exp2 = $g
    
  //????
  $del_count = SubPlayerInfo(-1, "item", $item_0, 1)
  if $del_count != 0
     return
  endif
  
  //????
  if $lv >= 30
     if $lv < 40
        AddPlayerInfo(-1, "exp", $exp3)
     endif
  endif
  
  if $lv < 60
     AddPlayerInfo(-1, "exp", $exp1 )
  endif
  
  if $lv >= 60
     AddPlayerInfo(-1, "exp", $exp2 )
  endif
  
	 //?????
	//????? = ????^2+0.6*????+1000
	//????? = ????? * 200
	$fieldlevel = GetFieldLevel(-1)
	$godexp = $fieldlevel * $fieldlevel
	$b = $fieldlevel * 6
	$b = $b / 10
	$godexp = $godexp + $b
	$godexp = $godexp + 1000
	$godexp = $godexp * 200
	if  $fieldlevel > 0
		AddFieldExp( -1 , $godexp )	
	endif
  BC(screen, player, -1, "You have used Birthday Candy.")
  PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
  
  


}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:Tequan-Item-NewExpPill-59770.s
	//		TaskID:4????
	//
	//****************************************


  function OnUseItem(){
  
  $lv = GetPlayerInfo(-1, "level" )
  $number = GetPlayerVar(-1, 3383)
  $Now_Yday = GetSystemTime("yday")
  $day = GetPlayerVar(-1, 4055)
  
  //????????,30???????????
  if $lv < 30
     BC("screen", "player", -1, "The energy of the EXP Orb is too powerful for you to absorb. Try again after reaching LV30.")
     return
  endif

  //????????,????????????????,?????????????????????????3383?????
 // if $day != $Now_Yday
  //   SetPlayerVar(-1, 3383, 0)
  //   SetPlayerVar(-1, 4055, $Now_Yday)
 // endif

  //??????6?
  if $day == $Now_Yday
	  if $number >= 6
	     BC("screen", "player", -1, "The energy of the EXP Orb is too powerful for you to absorb. You can only use 6 Orbs per day.")
	     return
	  endif
  endif
    
  //?????????????30-39?((????^3)+50*(????^3))/30
  $h = $lv * $lv
  $h = $h * $lv
  $h = $h * 17
  $h = $h / 10
  $exp3 = $h
  
  //?????????????40-59? 1.5*(186*????*????*????-24421*????*????+1075000*????-15760000)
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
  $del_count = SubPlayerInfo(-1, "item", 59770, 1)
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

  //??????
   if $day != $Now_Yday
     SetPlayerVar(-1, 3383, 1)
     SetPlayerVar(-1, 4055, $Now_Yday)
  else	
  
     $number = $number + 1
     SetPlayerVar(-1, 3383, $number)
  endif
  

}  
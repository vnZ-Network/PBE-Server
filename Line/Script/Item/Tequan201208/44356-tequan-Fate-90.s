  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:44356-tequan-Fate-90.s
	//		TaskID:8????
	//
	//****************************************


function OnUseItem(){
	//???? ??????? 44234 *10 ???? 6064 *1

  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 90
     BC( "screen", "player", -1, "You must reach LV90 before you can open this Celestial Prestige Chest!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can use the Celestial Prestige Chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44356, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  //????????
//63769	?????(7?)
//44365	????
  AddPlayerInfo(-1, "item", 63769, 1 )
  AddPlayerInfo(-1, "item", 44365, 1 )
	//??90?????
	$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
			AddPlayerInfo( -1, "item", 19807, 1 ) 
		endif
		if $pro == 2
			AddPlayerInfo( -1, "item", 19827, 1 ) 
		endif
		if $pro == 3
			AddPlayerInfo( -1, "item", 19847, 1 ) 
		endif
		if $pro == 4
			AddPlayerInfo( -1, "item", 19867, 1 ) 
		endif
		if $pro == 5
			AddPlayerInfo( -1, "item", 19887, 1 ) 
		endif	
		if $pro == 6
			AddPlayerInfo( -1, "item", 19583, 1 ) 
		endif	  

}
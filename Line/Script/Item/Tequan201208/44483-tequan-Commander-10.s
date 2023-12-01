	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/19
	//		Author:???(??,??,??)
	//		TaskName:?????????
	//		TaskID:44483-tequan-Commander-10.s
	//
	//****************************************


function OnUseItem(){
  
  //????????????,???????0~1?249
  $is_used = GetPlayerVar(-1, 249)
  
  if $is_used == 1
     BC("screen", "player", -1, "You've already received a Fate Guild Deluxe Pack. Can't get it again.")
     BC("chat", "player", -1, "You've already received a Fate Guild Deluxe Pack. Can't get it again.")
     return
  endif
          
  //??????,???10????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You have to be at least LV10 to use the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You have to be at least LV10 to use the Fate Guild Deluxe Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
     BC( "screen", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $mat_count < 1
     BC( "screen", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44483, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //??????
  SetPlayerVar(-1, 249, 1)  

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44484, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59839,3)
  AddPlayerInfo(-1,"item",2211,3)
  AddPlayerInfo(-1,"item",71,1)
	
	AddPlayerInfo(-1,"item",8,100)


}
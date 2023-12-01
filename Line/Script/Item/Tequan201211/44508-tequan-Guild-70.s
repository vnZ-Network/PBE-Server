//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/30
	//		Author:???
	//		TaskName:???????
	//		TaskID:44508-tequan-Commander-10.s
	//
	//****************************************


function OnUseItem(){
  
  //??????????,???????0~1?271
 //$is_used = GetPlayerVar(-1, 271)
 //
 //if $is_used == 1
 //   BC("screen", "player", -1, "GUID:07528000000")
 //   BC("chat", "player", -1, "GUID:07528000001")
 //   return
 //endif
          
  //??????,???50????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 70
     BC( "screen", "player", -1, "You have to be LV70 before you can open the Glory Guild Pack!" )
     BC( "chat", "player", -1, "You have to be LV70 before you can open the Glory Guild Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 4
     BC( "screen", "player", -1, "You need at least 4 empty slots in your bag before you can open the Glory Guild Pack!" )
     BC( "chat", "player", -1, "You need at least 4 empty slots in your bag before you can open the Glory Guild Pack!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $mat_count < 2
     BC( "screen", "player", -1, "You don't have enough space in your materials bag to use the Glory Guild Pack!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag to use the Glory Guild Pack!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44508, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

 
  //---------?????????------------
  
 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59839,1)
  AddPlayerInfo(-1,"item",2221,2)
  AddPlayerInfo(-1,"item",8,100)
  AddPlayerInfo(-1,"item",9,4)
  AddPlayerInfo(-1,"item",50036,90)
  AddPlayerInfo(-1,"item",59557,6)
	
	


}
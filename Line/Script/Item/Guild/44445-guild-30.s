	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/28
	//		Author:???
	//		TaskName:2012?8?????Lv1
	//		TaskID:44445-guild-30.s
	//
	//****************************************


function OnUseItem(){
  
	//???? 242
  $is_used = GetPlayerVar(-1, 242)
  
  if $is_used == 1
     BC("screen", "player", -1, "You've already opened your Guild Pack, you can't open it again.")
     BC("chat", "player", -1, "You've already opened your Guild Pack, you can't open it again.")
     return
  endif
          
  //??????,???3????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 30
     BC( "screen", "player", -1, "You have to be LV30 before you can open the Guild Pack!" )
     BC( "chat", "player", -1, "You have to be LV30 before you can open the Guild Pack!" )
     return
  endif
  
  //???????,10??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "screen", "player", -1, "You don't have enough space in your bag to use that!" )
     BC( "chat", "player", -1, "You don't have enough space in your bag to use that!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $mat_count < 1
     BC( "screen", "player", -1, "You don't have enough space in your materials bag to use that!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag to use that!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44445, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

	//?????? 242  1
  SetPlayerVar(-1, 242, 1)

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44446, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  
  AddPlayerInfo(-1, "item", 59838, 2)
  AddPlayerInfo(-1, "item", 8, 50)
  AddPlayerInfo(-1, "item", 59557, 2) 

}
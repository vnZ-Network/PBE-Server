	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/21
	//		Author:???(??,??,??)
	//		TaskName:7?????????30???
	//		TaskID:Tequan-lv30-44018.s
	//
	//****************************************

function OnUseItem(){

  //??????,???30????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 30
     BC( "screen", "player", -1, "You must have reached LV30 before you can obtain an Eastern Treasure." )
     BC( "chat", "player", -1, "You must have reached LV30 before you can obtain an Eastern Treasure." )
     return
  endif
  
  //???????,30?????3???,?????????3
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
		 BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44018, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //?????????
  
  //?????????
  AddPlayerInfo(-1, "item", 44019, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  BC( "screen", "player", -1, "N/A?????????,???????,??????!" )
  AddPlayerInfo(-1, "item", 21155, 1 )
  AddPlayerInfo(-1, "item", 6060, 1 )
  AddPlayerInfo(-1, "item", 59770, 10 )

}
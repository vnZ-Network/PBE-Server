	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/15
	//		Author:???(??,??,??)
	//		TaskName:2012?8????? Lv2
	//		TaskID:44446-guild-50.s
	//
	//****************************************


function OnUseItem(){

          
  //??????,???20????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 70
     BC( "screen", "player", -1, "You have to be at least LV70 before you can use that!" )
     BC( "chat", "player", -1, "You have to be at least LV70 before you can use that!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
		 BC( "screen", "player", -1, "You don't have enough space in your bag to use that!" )
     BC( "chat", "player", -1, "You don't have enough space in your bag to use that!" )
     return
  endif
  
  $mat_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $mat_count < 2
     BC( "screen", "player", -1, "You don't have enough space in your materials bag to use that!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag to use that!" )
     return
  endif  

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44447, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //----------?????????-----------
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  
  AddPlayerInfo(-1, "item", 59839, 1)
  AddPlayerInfo(-1, "item", 2221, 2)
  AddPlayerInfo(-1, "item", 9, 4)
  AddPlayerInfo(-1, "item", 8, 100) 
  AddPlayerInfo(-1, "item", 50036, 90) 
  AddPlayerInfo(-1, "item", 59557, 6) 

}
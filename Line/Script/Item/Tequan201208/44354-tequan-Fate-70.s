	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???(??,??,??)
	//		TaskName:2012?8??????????
	//		TaskID:44354-tequan-Fate-70.s
	//
	//****************************************

function OnUseItem(){

  //??????,???30????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 70
     BC( "screen", "player", -1, "You must reach LV70 before you can used this Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "You must reach LV70 before you can used this Celestial Prestige Chest!" )
     return
  endif
  
  //???????,30?????3???,?????????3
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44354, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //----------?????????-------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44355, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //???????? ???  ?????  ??????
  AddPlayerInfo(-1, "item", 44361, 10 )
  AddPlayerInfo(-1, "item", 44402, 1 )
  AddPlayerInfo(-1, "item", 59838, 1 )

}
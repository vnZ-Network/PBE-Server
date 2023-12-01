	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/16
	//		Author:???(??,??,??)
	//		TaskName:2012?4??????17173?30???
	//		TaskID:44174-tequan17173-30.s
	//
	//****************************************

function OnUseItem(){

  //??????,???30????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 30
     BC( "screen", "player", -1, "You must reach LV30 before you can use this Prestige Chest!" )
     BC( "chat", "player", -1, "You must reach LV30 before you can use this Prestige Chest!" )
     return
  endif
  
  //???????,30?????3???,?????????3
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Prestige Chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44174, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //----------?????????-------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44175, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_17173.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  AddPlayerInfo(-1, "item", 21168, 1 )
  AddPlayerInfo(-1, "item", 6055, 50 )
  AddPlayerInfo(-1, "item", 6052, 50 )

}
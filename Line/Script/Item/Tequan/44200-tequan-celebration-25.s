	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/13
	//		Author:???(??,??,??)
	//		TaskName:????????????25???
	//		TaskID:44200-tequan-celebration-25.s
	//
	//****************************************

function OnUseItem(){

  //??????,???25????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 25
     BC( "screen", "player", -1, "You must reach LV25 before you can open this Chest!" )
     BC( "chat", "player", -1, "You must reach LV25 before you can open this Chest!" )
     return
  endif
  
  //???????,25??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44200, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //------?????????----------
  
  //?????????
  AddPlayerInfo(-1, "item", 44201, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  AddPlayerInfo(-1, "item",62570 , 1 )


}
  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:44355-tequan-Fate-80.s
	//		TaskID:8????
	//
	//****************************************


function OnUseItem(){

  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 80
     BC( "screen", "player", -1, "You must reach LV80 before you can open this Celestial Prestige Chest!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can use the Celestial Prestige Chest!" )
     return
  endif
  
  //?????????
  $bag_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $bag_count < 1
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     return
  endif  

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44355, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //?????????
  AddPlayerInfo(-1, "item", 44356, 1 ) 
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  //???????? ?????  ????  ???? 
  AddPlayerInfo(-1, "item", 59839, 1 )
  AddPlayerInfo(-1, "item", 71, 1 )
  AddPlayerInfo(-1, "item", 59141, 3 )

}
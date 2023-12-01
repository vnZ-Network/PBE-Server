    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/09
	//		Author:???
	//		TaskName:44319-tequan-celebration-50.s
	//		TaskID:8????
	//
	//****************************************


function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC( "screen", "player", -1, "You must reach LV50 before you can open this Celestial Prestige Chest!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can use the Celestial Prestige Chest!" )
     return
  endif

  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
//  $del_count = SubPlayerInfo( -1, "item", 44319, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
  AddPlayerInfo(-1, "item", 59838, 1 )
  AddPlayerInfo(-1, "item", 64402, 3 )
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
}
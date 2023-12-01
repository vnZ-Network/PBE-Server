  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/13
	//		Author:???
	//		TaskName:44324-tequan-sina-40.s
	//		TaskID:8????
	//
	//****************************************


function OnUseItem(){
	//???? ??????? 44234 *10 ???? 6064 *1

  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 40
     BC( "screen", "player", -1, "You must reach LV40 before you can open this Celestial Prestige Chest!" )
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
//  $del_count = SubPlayerInfo( -1, "item", 44324, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //?????????
  $itemid += 1
  AddPlayerInfo(-1, "item", $itemid, 1 ) 
//  AddPlayerInfo(-1, "item", 44325, 1 ) 
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_Sina.ini" )
  AddStatus(-1, 7583, 1 )
  //????????
  AddPlayerInfo(-1, "item", 44361, 10 )
  AddPlayerInfo(-1, "item", 6064, 1 )

}
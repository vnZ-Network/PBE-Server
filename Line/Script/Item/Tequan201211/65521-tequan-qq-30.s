	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/16
	//		Author:???(??,??,??)
	//		TaskName:2012?8?????????30???
	//		TaskID:44335-tequan-qq-30.s
	//
	//****************************************

function OnUseItem(){

  //??????,???30????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 30
     BC( "screen", "player", -1, "You must reach LV30 before you can used this Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "You must reach LV30 before you can used this Celestial Prestige Chest!" )
     return
  endif
  
  //???????,30?????3???,?????????3
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     return
  endif

  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
//  $del_count = SubPlayerInfo( -1, "item", 44335, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //----------?????????-------------
  
  //?????????
  $itemid += 1
  AddPlayerInfo(-1, "item", $itemid, 1 ) 
//  AddPlayerInfo(-1, "item", 44336, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_TenXun.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  AddPlayerInfo(-1, "item", 21204, 1 )

}
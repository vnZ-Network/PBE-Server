	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/13
	//		Author:???(??,??,??)
	//		TaskName:8?????????25????????
	//		TaskID:44322-tequan-sina-25.s
	//
	//****************************************

function OnUseItem(){

  //??????,???25????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 25
     BC( "screen", "player", -1, "You must reach LV25 before you can open this Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "You must reach LV25 before you can open this Celestial Prestige Chest!" )
     return
  endif
  
  //???????,25??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     return
  endif

  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
//  $del_count = SubPlayerInfo( -1, "item", 44322, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //------?????????----------
  
  //?????????
  $itemid += 1
  AddPlayerInfo(-1, "item", $itemid, 1 ) 
//  AddPlayerInfo(-1, "item", 44323, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_Sina.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  AddPlayerInfo(-1, "item",62570 , 1 )


}
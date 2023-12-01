    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/09
	//		Author:???
	//		TaskName:44306-tequan-duowan-noble50.s
	//		TaskID:8????
	//
	//****************************************


function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC( "screen", "player", -1, "You must reach LV50 before you can open this Chest!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
     return
  endif

  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
//  $del_count = SubPlayerInfo( -1, "item", 44306, 1 )
  //??????????
  if $del_count != 0
     return
  endif

//  //?????????
//  $itemid += 1
//  AddPlayerInfo(-1, "item", $itemid, 1 ) 
////  AddPlayerInfo(-1, "item", 44307, 1 ) 

  //??????
  AddPlayerInfo(-1, "item", 59838, 1 )
  AddPlayerInfo(-1, "item", 64402, 3 )
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_DuoWan.ini" )
  AddStatus(-1, 7583, 1 )
  
}
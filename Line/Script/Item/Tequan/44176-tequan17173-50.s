    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:44176-tequan17173-50.s
	//		TaskID:4????
	//
	//****************************************


function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC( "screen", "player", -1, "You must reach LV40 before you can open this Chest!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44176, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //?????????
  AddPlayerInfo(-1, "item", 44177, 1 ) 

  //??????
  AddPlayerInfo(-1, "item", 59838, 1 )
  AddPlayerInfo(-1, "item", 64402, 3 )
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_17173.ini" )
  AddStatus(-1, 7583, 1 )
  
}
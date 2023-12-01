    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/13
	//		Author:???
	//		TaskName:44189-tequan-duowan-noble40.s
	//		TaskID:4????
	//
	//****************************************


function OnUseItem(){
	//???? ??????? 44234 *10 ???? 6064 *1 ????? 59838 *1

  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 40
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
  $del_count = SubPlayerInfo( -1, "item", 44189, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //?????????
  AddPlayerInfo(-1, "item", 44190, 1 ) 
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_DuoWan.ini" )
  AddStatus(-1, 7583, 1 )
  //????????
  AddPlayerInfo(-1, "item", 44234, 10 )
  AddPlayerInfo(-1, "item", 6064, 1 )

}
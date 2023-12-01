    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/23
	//		Author:???
	//		TaskName:44363-tequan-Fate.s
	//		TaskID:8??????????
	//
	//****************************************


function OnUseItem(){

	//???????
	$used = GetPlayerVar(-1, 197)
  if $used == 1
     BC("screen", "player", -1, "The Goddess of Fate has already arrived once today.")
     BC("chat", "player", -1, "The Goddess of Fate has already arrived once today.")
     return
  endif  	
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 5
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can use that Fate Prestige Card!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44363, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
  AddPlayerInfo(-1, "item", 21186, 1 )
  AddPlayerInfo(-1, "item", 62600, 1 )
  AddPlayerInfo(-1, "item", 44361, 10 )
  AddPlayerInfo(-1, "item", 60494, 1 )
  AddPlayerInfo(-1, "item", 59141, 1 )
  AddPlayerInfo(-1, "item", 59838, 2 )
  
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  SetPlayerVar(-1, 197, 1)
  
}
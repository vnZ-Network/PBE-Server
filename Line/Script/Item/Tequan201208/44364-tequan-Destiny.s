    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/23
	//		Author:???
	//		TaskName:44364-tequan-Destiny.s
	//		TaskID:8????????
	//
	//****************************************


function OnUseItem(){

	//???????
	$used = GetPlayerVar(-1, 198)
  if $used == 1
     BC("screen", "player", -1, "You've already used Fate Revelation Card once, you can't use it again.")
     BC("chat", "player", -1, "You've already used Fate Revelation Card once, you can't use it again.")
     return
  endif  	
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 4
     BC( "chat", "player", -1, "You need at least 5 empty slots in your bag before you can use that Fate Revelation Card!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44364, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
  //??????,??????,0??,1??
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36109, 1)
  else 
     AddPlayerInfo(-1, "item", 36108, 1)
  endif
  AddPlayerInfo(-1, "item", 71, 1 )
  AddPlayerInfo(-1, "item", 62570, 1 )
  AddPlayerInfo(-1, "item", 64402, 3 )
  AddPlayerInfo(-1, "item", 6064, 1 )
  
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  SetPlayerVar(-1, 198, 1)
  
}
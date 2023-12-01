    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/13
	//		Author:???
	//		TaskName:44431-tequan-Feather.s
	//		TaskID:??????
	//
	//****************************************


function OnUseItem(){
	//???????
	$used = GetPlayerVar(-1, 208)
  if $used == 1
     BC("screen", "player", -1, "You've already used a Feather of the Guardian Angel.")
     BC("chat", "player", -1, "You've already used a Feather of the Guardian Angel.")
     return
  endif 

  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can use that!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44431, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????

  AddPlayerInfo(-1, "item", 64402, 2 )
  AddPlayerInfo(-1, "item", 6064, 2 )
  AddPlayerInfo(-1, "item", 59838, 2 )
 //????
  SetPlayerVar(-1, 208, 1)

  
}

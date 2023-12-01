	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/19
	//		Author:???(??,??,??)
	//		TaskName:?????????
	//		TaskID:44493-tequan-Commander-F10.s
	//
	//****************************************


function OnUseItem(){
          
  //??????,?????10????????
  $fieldlevel = GetFieldLevel(-1)
  if $fieldlevel < 10
     BC( "screen", "player", -1, "You have to be at least LV10 to use the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You have to be at least LV10 to use the Fate Guild Deluxe Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 4
     BC( "screen", "player", -1, "You need at least 4 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 4 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

//  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
//  if $mat_count < 1
//     BC( "screen", "player", -1, "GUID:07524000004" )
//     BC( "chat", "player", -1, "GUID:07524000005" )
//     return
//  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44493, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44494, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59841,2)
  AddPlayerInfo(-1,"item",5631,1)
  AddPlayerInfo(-1,"item",2211,2)
	AddPlayerInfo(-1,"item",59557,8)

}
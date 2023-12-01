	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/19
	//		Author:???(??,??,??)
	//		TaskName:?????????
	//		TaskID:44484-tequan-Commander-30.s
	//
	//****************************************


function OnUseItem(){
          
  //??????,???30????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 30
     BC( "screen", "player", -1, "You have to be at least LV30 to use the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You have to be at least LV30 to use the Fate Guild Deluxe Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 4
     BC( "screen", "player", -1, "You need at least 4 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 4 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $mat_count < 1
     BC( "screen", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44484, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44485, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59839,3)
  AddPlayerInfo(-1,"item",2211,3)
	AddPlayerInfo(-1,"item",59557,4)
  AddPlayerInfo(-1,"item",71,1)
	
	AddPlayerInfo(-1,"item",8,50)


}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/19
	//		Author:???(??,??,??)
	//		TaskName:?????????
	//		TaskID:44487-tequan-Commander-70.s
	//
	//****************************************


function OnUseItem(){
          
  //??????,???70????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 70
     BC( "screen", "player", -1, "You have to be at least LV70 to use the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You have to be at least LV70 to use the Fate Guild Deluxe Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 7
     BC( "screen", "player", -1, "You need at least 7 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 7 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $mat_count < 2
     BC( "screen", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44487, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44488, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59839,6)
  AddPlayerInfo(-1,"item",59840,2)
  AddPlayerInfo(-1,"item",2211,8)
  AddPlayerInfo(-1,"item",2221,20)
	AddPlayerInfo(-1,"item",59557,4)
//  AddPlayerInfo(-1,"item",71,1)
  AddPlayerInfo(-1,"item",2337,1)
  AddPlayerInfo(-1,"item",50036,90)
	
	AddPlayerInfo(-1,"item",8,100)
	AddPlayerInfo(-1,"item",9,50)


}
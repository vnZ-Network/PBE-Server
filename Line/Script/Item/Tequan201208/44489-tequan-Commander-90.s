	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/09/19
	//		Author:???(??,??,??)
	//		TaskName:?????????
	//		TaskID:44489-tequan-Commander-90.s
	//
	//****************************************


function OnUseItem(){
          
  //??????,???90????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 90
     BC( "screen", "player", -1, "You have to be at least LV90 to use the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You have to be at least LV90 to use the Fate Guild Deluxe Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 6
     BC( "screen", "player", -1, "You need at least 6 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 6 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $mat_count < 1
     BC( "screen", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can open the Fate Guild Deluxe Pack!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44489, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44490, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59840,2)
  AddPlayerInfo(-1,"item",2211,2)
  AddPlayerInfo(-1,"item",2221,20)
	AddPlayerInfo(-1,"item",59557,4)
  AddPlayerInfo(-1,"item",2337,1)
  AddPlayerInfo(-1,"item",2338,1)
	
	AddPlayerInfo(-1,"item",8,200)
	AddPlayerInfo(-1,"item",9,100)


}
    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/09
	//		Author:???
	//		TaskName:44351-tequan-Fate-40.s
	//		TaskID:8????
	//
	//****************************************


function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 40
     BC( "screen", "player", -1, "You must reach LV40 before you can open this Celestial Prestige Chest!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
     BC( "chat", "player", -1, "You need at least 3 empty slots in your bag before you can use the Celestial Prestige Chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44351, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44352, 1 ) 

  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )

  //?????? ????? 6455  ?? 6457  ???? 71  ??  21180
  AddPlayerInfo(-1,"item",71,1)
//  AddPlayerInfo(-1,"item",21180,1)
//  36810	????
	AddPlayerInfo(-1, "item", 36810, 1 )
 
  $pro = GetPlayerInfo(-1,"profession")
  if $pro <= 3
  	AddPlayerInfo(-1,"item",6455,1)
  else
  	AddPlayerInfo(-1,"item",6457,1)
  endif 
  
}
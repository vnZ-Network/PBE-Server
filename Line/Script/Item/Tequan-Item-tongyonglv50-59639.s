    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:Tequan-Item-tongyonglv50-59639.s
	//		TaskID:4????
	//
	//****************************************



function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC ( "screen", "player", -1, "You must reach LV50 before you can open this pack." )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC ( "chat", "player", -1, "You must have at least 2 free bag spaces." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 59639, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
  AddPlayerInfo(-1, "item", 59771, 1 )
  AddPlayerInfo(-1, "item", 64402, 2 )
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )

}
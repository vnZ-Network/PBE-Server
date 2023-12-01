    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:Tequan-Item-163lv30-59667.s
	//		TaskID:4????
	//
	//****************************************



function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 30
     BC( "screen", "player", -1, "You must reach LV30 before you can open this pack." )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 3
     BC( "chat", "player", -1, "You must have at least 3 free bag spaces." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 59667, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //?????????
  AddPlayerInfo(-1, "item", 59668, 1 ) 
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_163.ini" )
  AddStatus(-1, 7583, 1 )
  //????????
  AddPlayerInfo(-1, "item", 21152, 1 )
  AddPlayerInfo(-1, "item", 6060, 1 )
  AddPlayerInfo(-1, "item", 59770, 10 )

}
    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:Tequan-Item-17173lv60-59628.s
	//		TaskID:4????
	//
	//****************************************


function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "You must reach LV60 before you can open this pack." )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //????
  $del_count = SubPlayerInfo( -1, "item", 59628, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
  AddPlayerInfo(-1, "item", 59773, 1 )
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_17173.ini" )
  AddStatus(-1, 7583, 1 )

}
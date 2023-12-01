    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:44293-tequan17173-60.s
	//		TaskID:2012?8????
	//
	//****************************************



function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "You have to be at least LV60 to use that Fate Prestige Card!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "chat", "player", -1, "You need to clear some space in your bag before you can use that Fate Prestige Card!" )
     return
  endif

  //????
  $del_count = SubPlayerInfo( -1, "item", 44293, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //??????
  AddPlayerInfo(-1, "item", 44358, 1 )
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_17173.ini" )
  AddStatus(-1, 7583, 1 )
  
}
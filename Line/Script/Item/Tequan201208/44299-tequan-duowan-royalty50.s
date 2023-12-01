    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/09
	//		Author:???
	//		TaskName:44299-tequan-duowan-royalty50.s
	//		TaskID:8????
	//
	//****************************************


function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC( "screen", "player", -1, "You have to be at least LV50 to use that Fate Prestige Card!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can use the Fate Prestige Card!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44299, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //?????????
  AddPlayerInfo(-1, "item", 44300, 1 ) 

  //??????
  AddPlayerInfo(-1, "item", 59838, 1 )
  AddPlayerInfo(-1, "item", 64402, 3 )
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_DuoWan.ini" )
  AddStatus(-1, 7583, 1 )
  
}
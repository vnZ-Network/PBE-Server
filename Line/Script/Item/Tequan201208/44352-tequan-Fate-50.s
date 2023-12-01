	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???(??,??,??)
	//		TaskName:2012?8??????????
	//		TaskID:44352-tequan-Fate-50.s
	//
	//****************************************


function OnUseItem(){

          
  //??????,???20????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC( "screen", "player", -1, "You must reach LV50 before you can used this Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "You must reach LV50 before you can used this Celestial Prestige Chest!" )
     return
  endif
  
  //???????,20??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44352, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //----------?????????-----------
  
  //?????????
  AddPlayerInfo(-1, "item", 44353, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
//	AddPlayerInfo(-1, "item", 62607, 1 )
	AddPlayerInfo(-1, "item", 59771, 1 )

}
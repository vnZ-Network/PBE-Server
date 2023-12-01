	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???(??,??,??)
	//		TaskName:8??????????
	//		TaskID:44353-tequan-Fate-60.s
	//
	//****************************************

function OnUseItem(){

  //??????,???25????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "You must reach LV60 before you can open this Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "You must reach LV60 before you can open this Celestial Prestige Chest!" )
     return
  endif
  
  //???????,25??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 1 )
  if $mat_count < 1
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     return
  endif  
  

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44353, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //------?????????----------
  
  //?????????
  AddPlayerInfo(-1, "item", 44354, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  AddPlayerInfo(-1, "item",62128 , 1 )
  AddPlayerInfo(-1, "item",6463 , 1 )
	AddPlayerInfo(-1, "item",9 , 6 )

}
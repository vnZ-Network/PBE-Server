 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName: ??????(??) 
 //****************************  
 
function OnUseItem(){ 
	
  //??????,???10????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC( "screen", "player", -1, "You must reach LV50 before you can use this Divine Deity Chest!" )
     BC( "chat", "player", -1, "You must reach LV50 before you can use this Divine Deity Chest!" )
     return
  endif
  
  //???????,10??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 5
     BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Divine Deity Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Divine Deity Chest!" )
     return
  endif

  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
//  $del_count = SubPlayerInfo( -1, "item", 44338, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //---------?????????------------
  
	//?????????
//  AddPlayerInfo(-1, "item", 44587, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  

//64402	?????
//6067	??????

  AddPlayerInfo(-1, "item", 64402, 3)
  AddPlayerInfo(-1, "item", 6067, 4)
  
  
} 

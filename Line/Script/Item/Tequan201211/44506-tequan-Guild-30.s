//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/30
	//		Author:???
	//		TaskName:???????
	//		TaskID:44506-tequan-Commander-10.s
	//
	//****************************************


function OnUseItem(){
  
  //??????????,???????0~1?271
  $is_used = GetPlayerVar(-1, 271)
  
  if $is_used == 1
     BC("screen", "player", -1, "You've already opened a Glory Guild Pack or Glory Guild Deluxe Pack. Can't use it again.")
     BC("chat", "player", -1, "You've already opened a Glory Guild Pack or Glory Guild Deluxe Pack. Can't use it again.")
     return
  endif
//
//  //????????????,???????0~1? 285
//  //????????????,???????0~255?3424
//  //2012?8?--??11??17173,12??????,13??????,14??????,15????,16????,17????,18????,19??360
//  $value = GetPlayerVar(-1, 3424)
//  $is_rookie = GetPlayerVar(-1, 285)
//  
//  if $is_rookie == 1
//     BC("screen", "player", -1, "GUID:07526000002")
//     BC("chat", "player", -1, "GUID:07526000003")
//     return
//  endif
//  	
//  if $value == 11
//     BC("screen", "player", -1, "GUID:07526000004")
//     BC("chat", "player", -1, "GUID:07526000005")
//     return
//  endif
//  
//  if $value == 12
//     BC("screen", "player", -1, "GUID:07526000006")
//     BC("chat", "player", -1, "GUID:07526000007")     
//     return
//  endif
//
//  if $value == 13
//     BC("screen", "player", -1, "GUID:07526000008")
//     BC("chat", "player", -1, "GUID:07526000009")     
//     return
//  endif
//  
//  if $value == 14
//     BC("screen", "player", -1, "GUID:07526000010")
//     BC("chat", "player", -1, "GUID:07526000011")     
//     return
//  endif
//  
//  if $value == 15
//     BC("screen", "player", -1, "GUID:07526000012")
//     BC("chat", "player", -1, "GUID:07526000013")
//     return
//  endif
//   
//  if $value == 16
//     BC("screen", "player", -1, "GUID:07526000014")
//     BC("chat", "player", -1, "GUID:07526000015")
//     return
//  endif
//  
//  if $value == 17
//     BC("screen", "player", -1, "GUID:07526000016")
//     BC("chat", "player", -1, "GUID:07526000017")
//     return
//  endif
//
//  if $value == 18
//     BC("screen", "player", -1, "GUID:07526000018")
//     BC("chat", "player", -1, "GUID:07526000019")
//     return
//  endif
//   
//  if $value == 19
//     BC("screen", "player", -1, "GUID:07526000020")
//     BC("chat", "player", -1, "GUID:07526000021")
//     return
//  endif
//  
//  if $value == 20
//     BC("screen", "player", -1, "GUID:07526000022")
//     BC("chat", "player", -1, "GUID:07526000023")
//     return
//  endif 
          
  //??????,???30????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 30
     BC( "screen", "player", -1, "You have to be LV30 before you can open the Glory Guild Pack!" )
     BC( "chat", "player", -1, "You have to be LV30 before you can open the Glory Guild Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "screen", "player", -1, "You need at least 2 empty slots in your bag before you can open the Glory Guild Pack!" )
     BC( "chat", "player", -1, "You need at least 2 empty slots in your bag before you can open the Glory Guild Pack!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $mat_count < 1
     BC( "screen", "player", -1, "You don't have enough space in your materials bag to use the Glory Guild Pack!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag to use the Glory Guild Pack!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44506, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //??????
  SetPlayerVar(-1, 271, 1)  

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44507, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59838,2)
  AddPlayerInfo(-1,"item",8,50)
  AddPlayerInfo(-1,"item",59557,2)
	
	


}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/15
	//		Author:???(??,??,??)
	//		TaskName:2012?8?????????10???
	//		TaskID:44320-tequan-sina-10.s
	//
	//****************************************


function OnUseItem(){
  
  //????????????,???????0~1?285
  //????????????,???????0~255?3424
  //2012?8?--??11??17173,12??????,13??????,14??????,15????,16????,17????,18????,19??360
  $value = GetPlayerVar(-1, 3424)
  $is_rookie = GetPlayerVar(-1, 285)
  //??????????,???????0~1?271
//  $is_used_guild = GetPlayerVar(-1, 271)
//  if $is_used_guild == 1
//     BC("screen", "player", -1, "GUID:07563000000")
//     BC("chat", "player", -1, "GUID:07563000001")
//     return
//  endif
  
  if $is_rookie == 1
     BC("screen", "player", -1, "You've already received a BOI Rookie Card Celestial Prestige Chest. You can only use once.")
     BC("chat", "player", -1, "You've already received a BOI Rookie Card Celestial Prestige Chest. You can only use once.")
     return
  endif
  	
  if $value == 11
     BC("screen", "player", -1, "You've already received a 17173 Celestial Prestige Chest. Can't get it again.")
     BC("chat", "player", -1, "You've already received a 17173 Celestial Prestige Chest. Can't get it again.")
     return
  endif
  
  if $value == 12
     BC("screen", "player", -1, "You've already received a Duowan Royal Celestial Prestige Chest. You can only receive one!")
     BC("chat", "player", -1, "You've already received a Duowan Royal Celestial Prestige Chest. You can only receive one!")     
     return
  endif

  if $value == 13
     BC("screen", "player", -1, "You've already received a Duowan Noble Celestial Prestige Chest. You can only receive one!")
     BC("chat", "player", -1, "You've already received a Duowan Noble Celestial Prestige Chest. You can only receive one!")     
     return
  endif
  
  if $value == 14
     BC("screen", "player", -1, "You've already received a Duowan Celestial Prestige Chest. You can only receive one!")
     BC("chat", "player", -1, "You've already received a Duowan Celestial Prestige Chest. You can only receive one!")     
     return
  endif
  
  if $value == 15
     BC("screen", "player", -1, "You've already received a Celestial Prestige Chest. Can't get it again.")
     BC("chat", "player", -1, "You've already received a Celestial Prestige Chest. Can't get it again.")
     return
  endif
   
  if $value == 16
     BC("screen", "player", -1, "You've already received a Sina Celestial Prestige Chest. Can't get it again.")
     BC("chat", "player", -1, "You've already received a Sina Celestial Prestige Chest. Can't get it again.")
     return
  endif
  
  if $value == 17
     BC("screen", "player", -1, "You've already received a 163 Celestial Prestige Chest. Can't get it again.")
     BC("chat", "player", -1, "You've already received a 163 Celestial Prestige Chest. Can't get it again.")
     return
  endif

  if $value == 18
     BC("screen", "player", -1, "You've already received a Tecent Celestial Prestige Chest. Can't get it again.")
     BC("chat", "player", -1, "You've already received a Tecent Celestial Prestige Chest. Can't get it again.")
     return
  endif
   
  if $value == 19
     BC("screen", "player", -1, "You've already received a 360 Celestial Prestige Chest. Can't get it again.")
     BC("chat", "player", -1, "You've already received a 360 Celestial Prestige Chest. Can't get it again.")
     return
  endif
  
  if $value == 20
     BC("screen", "player", -1, "You've already received a Advanced Divine Deity Chest. Can't get it again.")
     BC("chat", "player", -1, "You've already received a Advanced Divine Deity Chest. Can't get it again.")
     return
  endif 
 
          
  //??????,???10????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You must reach LV10 before you can used this Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "You must reach LV10 before you can used this Celestial Prestige Chest!" )
     return
  endif
  
  //???????,10??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Celestial Prestige Chest!" )
     return
  endif

  //???????
  $itemid = GetItemID()
  $del_count = SubPlayerInfo( -1, "item", $itemid, 1 )
//  $del_count = SubPlayerInfo( -1, "item", 44320, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //???????????,???????3424?
  //??1??17173,2????,3????,4????,5????,6????,7????
  //2012?4?--??11??17173,12??????,13??????,14??????,15????,16????,17????,18????,19??360
  //???2012?17173,??11
  SetPlayerVar(-1, 3424, 16)

  //---------?????????------------
  
  //?????????
  $itemid += 1
  AddPlayerInfo(-1, "item", $itemid, 1 ) 
//  AddPlayerInfo(-1, "item", 44321, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_Sina.ini" )
  AddStatus(-1, 7583, 1 )
  
  //??????,??????,0??,1??
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36153, 1)
  else 
     AddPlayerInfo(-1, "item", 36152, 1)
  endif

}
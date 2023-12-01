	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/13
	//		Author:???(??,??,??)
	//		TaskName:2012??????????
	//		TaskID:44344-tequan-pet-10.s
	//
	//****************************************

function OnUseItem(){

  //????????????,???????0~1?196
  //????????????,???????0~255?3381
  //2012?8?--??11??17173,12??????,13??????,14??????,15????,16????,17????,18????,19??360
  $value = GetPlayerVar(-1, 3381)
  $is_rookie = GetPlayerVar(-1, 196)
  
  if $is_rookie == 1
     BC("screen", "player", -1, "You've already received a BOI Rookie Card Goddess of Fate Pack, you can't use another Media Card.")
     BC("chat", "player", -1, "You've already received a BOI Rookie Card Goddess of Fate Pack, you can't use another Media Card.")
     return
  endif
  	
  if $value == 11
     BC("screen", "player", -1, "You've already received a  17173 Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  17173 Fate Prestige Card, you can only receive one!")
     return
  endif
  
  if $value == 12
     BC("screen", "player", -1, "You've already received a  Duowan Royal Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  Duowan Royal Fate Prestige Card, you can only receive one!")     
     return
  endif

  if $value == 13
     BC("screen", "player", -1, "You've already received a  Duowan Noble Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  Duowan Noble Fate Prestige Card, you can only receive one!")     
     return
  endif
  
  if $value == 14
     BC("screen", "player", -1, "You've already received a  Duowan Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  Duowan Fate Prestige Card, you can only receive one!")     
     return
  endif
  
  if $value == 15
     BC("screen", "player", -1, "You've already received a Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a Fate Prestige Card, you can only receive one!")
     return
  endif
   
  if $value == 16
     BC("screen", "player", -1, "You've already received a  Sina Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  Sina Fate Prestige Card, you can only receive one!")
     return
  endif
  
  if $value == 17
     BC("screen", "player", -1, "You've already received a  163 Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  163 Fate Prestige Card, you can only receive one!")
     return
  endif

  if $value == 18
     BC("screen", "player", -1, "You've already received a  Tencent Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  Tencent Fate Prestige Card, you can only receive one!")
     return
  endif
   
  if $value == 19
     BC("screen", "player", -1, "You've already received a  360 Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  360 Fate Prestige Card, you can only receive one!")
     return
  endif
  
  if $value == 20
     BC("screen", "player", -1, "You've already received a  Favored Fate Prestige Card, you can only receive one!")
     BC("chat", "player", -1, "You've already received a  Favored Fate Prestige Card, you can only receive one!")
     return
  endif 

  //??????,???10????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You have to be at least LV10 to use that Fate Prestige Card!" )
     BC( "chat", "player", -1, "You have to be at least LV10 to use that Fate Prestige Card!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "You need to clear some space in your bag before you can use that Fate Prestige Card!" )
     BC( "chat", "player", -1, "You need to clear some space in your bag before you can use that Fate Prestige Card!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44228, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif
  
  //????????????,???????0~1?3381
  //???????????,???????3381?
  //2012?8?--??11??17173,12??????,13??????,14??????,15????,16????,17????,18????,19??360
  //???2012???,??20
  SetPlayerVar(-1, 3381, 20)  

  //------?????????----------

  //?????????
  AddPlayerInfo(-1, "item", 44288, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //??????,??????,0??,1??
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36129, 1)
  else 
     AddPlayerInfo(-1, "item", 36128, 1)
  endif



//  
//  //????????
//	//1?????,10??????,1???,50??????,50??????
//  AddPlayerInfo(-1, "item",62600 , 1 )
//  AddPlayerInfo(-1, "item", 6055, 50 )
//  AddPlayerInfo(-1, "item", 6052, 50 )
//  AddPlayerInfo(-1, "item", 64402, 1 )
//  AddPlayerInfo(-1, "item", 44234, 10 )  

}
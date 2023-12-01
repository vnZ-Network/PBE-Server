	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/15
	//		Author:???(??,??,??)
	//		TaskName:2012?4???????????10???
	//		TaskID:44185-tequan-duowan-noble10.s
	//
	//****************************************


function OnUseItem(){
  
  //????????????,???????0~255?3371
  //2011?7?--?????:1??17173,2????,3????,4????,5????,6????,7????
  //-----??11??????? 10 + 1??,????????2012?????,??????????1-----
  //2012?4?--?????:110??17173,120??????,130??????,140??????,150????,160????,170????,180????,190??360

	//-------------------------?????2012?????,???11~~19,????????????-----------------------------
	$value = GetPlayerVar(-1, 3371)
	if $value == 11
		SetPlayerVar(-1,3371,110)
	endif
	if $value == 12
		SetPlayerVar(-1,3371,120)
	endif
	if $value == 13
		SetPlayerVar(-1,3371,130)
	endif
	if $value == 14
		SetPlayerVar(-1,3371,140)
	endif
	if $value == 15
		SetPlayerVar(-1,3371,150)
	endif
	if $value == 16
		SetPlayerVar(-1,3371,160)
	endif
	if $value == 17
		SetPlayerVar(-1,3371,170)
	endif
	if $value == 18
		SetPlayerVar(-1,3371,180)
	endif
	if $value == 19
		SetPlayerVar(-1,3371,190)
	endif
	//-------------------------???2012?????????????-----------------------------

  $value = GetPlayerVar(-1, 3371)
  $value = $value / 10
  
  if $value == 11
     BC("screen", "player", -1, "You've already received a 17173 Prestige Relic Chest, can't get it again. ")
     BC("chat", "player", -1, "You've already received a 17173 Prestige Relic Chest, can't get it again. ")
     return
  endif
  
  if $value == 12
     BC("screen", "player", -1, "You've already received a Duowan Royal Prestige Relic Chest, can't get it again.")
     BC("chat", "player", -1, "You've already received a Duowan Royal Prestige Relic Chest, can't get it again.")     
     return
  endif

  if $value == 13
     BC("screen", "player", -1, "You've already received a Duowan Highborn Prestige Relic Chest, can't get it again.")
     BC("chat", "player", -1, "You've already received a Duowan Highborn Prestige Relic Chest, can't get it again.")     
     return
  endif
  
  if $value == 14
     BC("screen", "player", -1, "You've already received a Duowan Citizen Prestige Relic Chest, can't get it again.")
     BC("chat", "player", -1, "You've already received a Duowan Citizen Prestige Relic Chest, can't get it again.")     
     return
  endif
  
  if $value == 15
     BC("screen", "player", -1, "You've already received a Relic Chest, can't get it again.")
     BC("chat", "player", -1, "You've already received a Relic Chest, can't get it again.")
     return
  endif
   
  if $value == 16
     BC("screen", "player", -1, "You've already received a Sina Prestige Relic Chest, can't get it again.")
     BC("chat", "player", -1, "You've already received a Sina Prestige Relic Chest, can't get it again.")
     return
  endif
  
  if $value == 17
     BC("screen", "player", -1, "You've already received a 163 Prestige Relic Chest, can't get it again.")
     BC("chat", "player", -1, "You've already received a 163 Prestige Relic Chest, can't get it again.")
     return
  endif

  if $value == 18
     BC("screen", "player", -1, "You've already received a Tencent Prestige Relic Chest, can't get it again.")
     BC("chat", "player", -1, "You've already received a Tencent Prestige Relic Chest, can't get it again.")
     return
  endif
   
  if $value == 19
     BC("screen", "player", -1, "You've already received a 360 Prestige Relic Chest, can't get it again.")
     BC("chat", "player", -1, "You've already received a 360 Prestige Relic Chest, can't get it again.")
     return
  endif
 
          
  //??????,???10????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You must reach LV10 before you can open this Prestige Chest!" )
     BC( "chat", "player", -1, "You must reach LV10 before you can open this Prestige Chest!" )
     return
  endif
  
  //???????,10??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the Prestige Chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Prestige Chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44185, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //???????????,???????3371?
  //2011?7?--?????:1??17173,2????,3????,4????,5????,6????,7????
  //2012?4?--?????:10??17173,20??????,30??????,40??????,50????,60????,70????,80????,90??360
  //???2012?17173,??11
//  SetPlayerVar(-1, 3371, 13)
	$value = GetPlayerVar(-1,3371)
	$value = $value + 130
	SetPlayerVar(-1,3371,$value)


  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44186, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_DuoWan.ini" )
  AddStatus(-1, 7583, 1 )
  
  //??????,??????,0??,1??
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36959, 1)
  else 
     AddPlayerInfo(-1, "item", 36966, 1)
  endif

}
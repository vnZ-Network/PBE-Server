	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/21
	//		Author:???(??,??,??)
	//		TaskName:7?????????10???
	//		TaskID:Tequan-163-lv10-44033.s
	//
	//****************************************


function OnUseItem(){
  
  //????????????,???????0~255?3371
  //??1??17173,2????,3????,4????,5????,6????,7????

	//-------------------------?????2012?????,???11~~19,????????????-----------------------------
  //-----??11??????? 10 + 1??,????????2012?????,??????????1-----
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
  $value = $value % 10  
  
  if $value == 1
     BC("screen", "player", -1, "N/A????,??????17173??????,????????")
     BC("chat", "player", -1, "N/A????,??????17173??????,????????")
     return
  endif
  
  if $value == 2
     BC("screen", "player", -1, "N/A????,??????????????,????????")
     BC("chat", "player", -1, "N/A????,??????????????,????????")     
     return
  endif
  
  if $value == 3
     BC("screen", "player", -1, "N/A????,??????????????,????????")
     BC("chat", "player", -1, "N/A????,??????????????,????????")
     return
  endif
  
  if $value == 4
     BC("screen", "player", -1, "N/A????,??????????????,????????")
     BC("chat", "player", -1, "N/A????,??????????????,????????")
     return
  endif
  
  if $value == 5
     BC("screen", "player", -1, "N/A????,??????????????,????????")
     BC("chat", "player", -1, "N/A????,??????????????,????????")
     return
  endif
  
  if $value == 6
     BC("screen", "player", -1, "N/A????,??????????????,????????")
     BC("chat", "player", -1, "N/A????,??????????????,????????")
     return
  endif
  
  if $value == 7
     BC("screen", "player", -1, "N/A????,??????????????,????????")
     BC("chat", "player", -1, "N/A????,??????????????,????????")
     return
  endif
 
          
  //??????,???10????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You must have reached LV10 before you can obtain an Eastern Treasure." )
     BC( "chat", "player", -1, "You must have reached LV10 before you can obtain an Eastern Treasure." )
     return
  endif
  
  //???????,10??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44033, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //???????????,???????3371?
  //??1??17173,2????,3????,4????,5????,6????,7??????????,??6
	$value = GetPlayerVar(-1, 3371)
	$value = $value + 6
  SetPlayerVar(-1, 3371, $value)

  //?????????
  
  //?????????
  AddPlayerInfo(-1, "item", 44034, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_163.ini" )
  AddStatus(-1, 7583, 1 )
  
  //??????,??????,0??,1??
	BC( "screen", "player", -1, "N/A???????????,???????,??????!" )
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36687, 1)
  else 
     AddPlayerInfo(-1, "item", 36686, 1)
  endif

}
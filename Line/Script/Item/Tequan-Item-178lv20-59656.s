    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:Tequan-Item-178lv20-59656.s
	//		TaskID:4????
	//
	//****************************************


function OnUseItem(){
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 20
     BC( "screen", "player", -1, "You must reach LV20 before you can open this pack." )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "You must have at least 2 free bag spaces." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 59656, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //?????????
  AddPlayerInfo(-1, "item", 59657, 1 ) 
  //????????
  AddPlayerInfo(-1, "item", 62570, 1 )
   //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_178.ini" )
  AddStatus(-1, 7583, 1 )
  //??????
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36661, 1)
  else 
     AddPlayerInfo(-1, "item", 36660, 1)
  endif

}
//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/30
	//		Author:???
	//		TaskName:???????
	//		TaskID:44512-tequan-Commander-10.s
	//
	//****************************************


function OnUseItem(){
  
 
          
  //??????,???100????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 100
     BC( "screen", "player", -1, "You have to be LV100 before you can open the Glory Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You have to be LV100 before you can open the Glory Guild Deluxe Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 4
     BC( "screen", "player", -1, "You need at least 4 empty slots in your bag before you can open the Glory Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 4 empty slots in your bag before you can open the Glory Guild Deluxe Pack!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $mat_count < 2
     BC( "screen", "player", -1, "You don't have enough space in your materials bag to use the Glory Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag to use the Glory Guild Deluxe Pack!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44512, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

 

  //---------?????????------------
  
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59840,1)
  AddPlayerInfo(-1,"item",8,200)
   AddPlayerInfo(-1,"item",9,8)
  AddPlayerInfo(-1,"item",59557,10)
	AddPlayerInfo(-1,"item",2211,1)
	AddPlayerInfo(-1,"item",2221,10)
	


}
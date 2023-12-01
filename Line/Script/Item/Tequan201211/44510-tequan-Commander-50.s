//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/30
	//		Author:???
	//		TaskName:???????
	//		TaskID:44510-tequan-Commander-10.s
	//
	//****************************************


function OnUseItem(){
  
 
          
  //??????,???50????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC( "screen", "player", -1, "You have to be LV50 before you can open the Glory Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You have to be LV50 before you can open the Glory Guild Deluxe Pack!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 5
     BC( "screen", "player", -1, "You need at least 5 empty slots in your bag before you can open the Glory Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You need at least 5 empty slots in your bag before you can open the Glory Guild Deluxe Pack!" )
     return
  endif

  $mat_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $mat_count < 2
     BC( "screen", "player", -1, "You don't have enough space in your materials bag to use the Glory Guild Deluxe Pack!" )
     BC( "chat", "player", -1, "You don't have enough space in your materials bag to use the Glory Guild Deluxe Pack!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44510, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

 

  //---------?????????------------
  
  //?????????
  AddPlayerInfo(-1, "item", 44511, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????
  AddPlayerInfo(-1,"item",59838,5)
  AddPlayerInfo(-1,"item",8,200)
   AddPlayerInfo(-1,"item",9,8)
  AddPlayerInfo(-1,"item",59557,8)
	AddPlayerInfo(-1,"item",2211,5)
	AddPlayerInfo(-1,"item",61073,100)
	AddPlayerInfo(-1,"item",2221,5)
	


}
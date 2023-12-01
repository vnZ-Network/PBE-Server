	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/13
	//		Author:???(??,??,??)
	//		TaskName:?????????
	//		TaskID:44228-tequan-pet-10.s
	//
	//****************************************

function OnUseItem(){

//  //??????,???25????????
//  $level = GetPlayerInfo( -1, "level" )
//  if $level < 25
//     BC( "screen", "player", -1, "GUID:07662000000" )
//     BC( "chat", "player", -1, "GUID:07662000001" )
//     return
//  endif
  
  //???????,??6???,?????????6
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 5
		 BC( "screen", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44228, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //------?????????----------
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
	//1?????,10??????,1???,50??????,50??????
  AddPlayerInfo(-1, "item",62600 , 1 )
  AddPlayerInfo(-1, "item", 6055, 50 )
  AddPlayerInfo(-1, "item", 6052, 50 )
  AddPlayerInfo(-1, "item", 64402, 1 )
  AddPlayerInfo(-1, "item", 44234, 10 )  

}
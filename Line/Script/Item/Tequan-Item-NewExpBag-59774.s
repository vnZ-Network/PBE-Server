	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:Tequan-Item-NewExpBag-59774.s
	//		TaskID:4????
	//
	//****************************************

function OnUseItem(){
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  //??????????
  if $bag_count < 1
     BC( "screen", "player", -1, "You do not have enough space in your bag." )
     return
  endif
  
  //????
  $del_count = SubPlayerInfo( -1, "item", 59774, 1 )
  //??????????
  if $del_count == 0
     AddPlayerInfo( -1, "item", 59122, 100 )
  endif

}
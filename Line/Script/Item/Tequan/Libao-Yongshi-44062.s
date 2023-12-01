	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/16
	//		Author:???(??,??,??)
	//		TaskName:??????????
	//		TaskID:Libao-Yongshi-44062.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? ?? 3370 
	//??id ?????? 44060 ???????? 44061 ???????? 44062          
	//??ID ?? 6394  ???? 6605  ???? 6668   
	//??id ??	6390 ???? 6602 ???? 6667
	//??ID ?? 9  
	//??id 2???? 59838 3???? 59839 ????? 2487 
	//??ID 2?????? 2141  3?????? 2147
	//??id ????	44070
	
	$item_0 = 44062
	$item_1 = 6605
	$item_2 = 6602
	$item_3 = 9
	$item_4 = 2487
	$item_5 = 59839
	$item_6 = 44070
	
	//???????
	$is_get = GetPlayerVar(-1, 3370)
	if $is_get == 1
		BC("screen","player",-1,"You have already used an Eastern Warrior Pack.")
		BC("chat","player",-1,"You have already used an Eastern Warrior Pack.")
		return
	endif
	
	if $is_get == 2
		BC("screen","player",-1,"You have already used an Eastern Warrior Pack.")
		BC("chat","player",-1,"You have already used an Eastern Warrior Pack.")
		return
	endif
	
	if $is_get == 3
		BC("screen","player",-1,"You have already used an Eastern Warrior Pack.")
		BC("chat","player",-1,"You have already used an Eastern Warrior Pack.")
		return
	endif
	
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 6
		BC("screen","player",-1,"You must have at least 7 free bag spaces.")
		BC("chat","player",-1,"You must have at least 7 free bag spaces.")		
		return
	endif
	
  //????????
  $bag_count_1 = GetPlayerInfo(-1, "nullitem", 1)
  if $bag_count_1 < 1
     BC("screen", "player", -1, "You do not have enough space in your Materials bag.")
     BC("chat", "player", -1, "You do not have enough space in your Materials bag.")
     return
  endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif

  //??????
  SetPlayerVar(-1, 3370, 3)
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 2)
	AddPlayerInfo(-1, "item", $item_2, 2)
	AddPlayerInfo(-1, "item", $item_3, 5)
	AddPlayerInfo(-1, "item", $item_4, 1)
	AddPlayerInfo(-1, "item", $item_5, 1)
	AddPlayerInfo(-1, "item", $item_6, 10)
	BC("screen","player",-1,"Congratulations, you have obtained an Eastern Warrior Prize.")
	BC("chat","player",-1,"Congratulations, you have obtained an Eastern Warrior Prize.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
	
	
}	
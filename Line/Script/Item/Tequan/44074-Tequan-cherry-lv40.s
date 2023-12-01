	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/17
	//		Author:???(??,??,??)
	//		TaskName:Cherry??????
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
	//???? 
	//??id ???????? 60510	
	//??id ??????	6060	
	//??ID ?? 9
	//??ID ???? 6602
	//??id 59929	????????
	//4???ID 10? 44071 20? 44072 30? 44073 40? 44074
	
	$lv = GetPlayerInfo(-1, "level")
	$n = 40
	$null = GetPlayerInfo(-1, "nullitem", 0)
	$bag_1 = 44074
//	$bag_2 = 
	$item_1 = 6602
	$item_2 = 59929
	
	//????
	if $lv < $n
		BC("screen","player",-1,"You must have reached LV" , $n , " before you can open the pack.")
		BC("chat","player",-1,"You must have reached LV" , $n , " before you can open the pack.")
		return
	endif
	
	//?????
	if $null < 2
		BC("screen","player",-1,"You do not have enough space in your bag.")
		BC("chat","player",-1,"You do not have enough space in your bag.")
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item", $bag_1 ,1)
	if $revaluet != 0
		return
	endif
	
	//????
//	AddPlayerInfo(-1,"item",$bag_2,1)

	AddPlayerInfo(-1,"item",$item_1, 1)
	AddPlayerInfo(-1,"item",$item_2, 1)
	
	BC("screen","map",$id,"Congratulations, you have obtained an Expedition Pack from Cherry.")
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
		
	
	
}
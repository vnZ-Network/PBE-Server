	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/13
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:44089-Item-FestivalPresent.s
	//
	//****************************************
	
	
	function OnUseItem(){

	//??id ??????? 44089	
	//??id ???? 44091 ???? 44090     
	//??id ?????888 59557
	//??id ???????? 9 
	//??id ???? 63673
			//2011-11-23? 63673 ?? 60029 ??
		
	$item_0 = 44089
	$item_1 = 44091
	$item_2 = 9
	$item_3 = 60029
	$item_4 = 44090
	$item_5 = 59557
	
	//???????????

	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 4
		BC("screen","player",-1,"You must have at least 5 free bag spaces.")
		BC("chat","player",-1,"You must have at least 5 free bag spaces.")		
		return
	endif
	
	$null_mtrl = GetPlayerInfo(-1, "nullitem", 1)
	if $null_mtrl < 1
		BC("screen","player",-1,"You do not have enough space in your Materials bag.")
		BC("chat","player",-1,"You do not have enough space in your Materials bag.")
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 1)
	AddPlayerInfo(-1, "item", $item_2, 5)
	AddPlayerInfo(-1, "item", $item_3, 2)
	AddPlayerInfo(-1, "item", $item_4, 1)
	AddPlayerInfo(-1, "item", $item_5, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a Festival Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Festival Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
	
	
}	
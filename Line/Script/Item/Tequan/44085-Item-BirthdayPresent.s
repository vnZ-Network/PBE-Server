	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/13
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:44085-Item-BirthdayPresent.s
	//
	//****************************************
	
	
	function OnUseItem(){

	//??id ??????? 44085	
	//??id ???? 44086 ???? 44087 ???? 44088          
	//??id ?????888 59557
	//??id ???? 9 
	//??id ???? 61043
		
	$item_0 = 44085
	$item_1 = 61043
	$item_2 = 44086
	$item_3 = 44087
	$item_4 = 44088
	$item_5 = 59557
	$item_6 = 9
	
	//???????????

	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 5
		BC("screen","player",-1,"You must have at least 6 free bag spaces.")
		BC("chat","player",-1,"You must have at least 6 free bag spaces.")		
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
	AddPlayerInfo(-1, "item", $item_2, 1)
	AddPlayerInfo(-1, "item", $item_3, 2)
	AddPlayerInfo(-1, "item", $item_4, 1)
	AddPlayerInfo(-1, "item", $item_5, 2)
	AddPlayerInfo(-1, "item", $item_6, 10)

	BC("screen","player",-1,"Congratulations, you have obtained a Birthday Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Birthday Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
	
	
}	
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/12
	//		Author:???(??,??,??)
	//		TaskName:VIP??????
	//		TaskID:44113-VIP-Recur-Longdi.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//??id ????? 44111 ?? 44112 ?? 44113          
	//??id ????	44070
	//??id ????? 64402
	//??id ????? 59311
	//??id ;??????? 44110
	//??id 6628	??????????  6630	????????   6626	??????
		
	$item_0 = 44113
	$item_1 = 44070
	$item_2 = 64402
	$item_3 = 59311
	$item_4 = 44110


	
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 4
		BC("screen","player",-1,"You must have at least 4 free bag spaces.")
		BC("chat","player",-1,"You must have at least 4 free bag spaces.")		
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif
	

	//????
	AddPlayerInfo(-1, "item", $item_1, 24)
	AddPlayerInfo(-1, "item", $item_2, 12)
	AddPlayerInfo(-1, "item", $item_3, 12)
	AddPlayerInfo(-1, "item", $item_4, 3)


	BC("screen","player",-1,"BOI welcomes Emperor to come back! Give the a warm regard!")
	BC("chat","player",-1,"BOI welcomes Emperor to come back! Give the a warm regard!")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}
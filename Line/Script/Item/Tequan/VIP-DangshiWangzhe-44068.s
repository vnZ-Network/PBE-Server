	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/17
	//		Author:???(??,??,??)
	//		TaskName:VIP????????
	//		TaskID:VIP-DangshiWangzhe-44068.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 167	168  169
	//??id ???? 44067 ?? 44068 ?? 44069          
	//??id ????? 2487 
	//??id ??????? 2450
	//??id ???? 6667
		
	$item_0 = 44068
	$item_1 = 2487
	$item_2 = 2450
	$item_3 = 6667
	$item_4 = 5631
	
	//???????
	$is_get_1 = GetPlayerVar(-1, 167)
	$is_get_2 = GetPlayerVar(-1, 168)
	$is_get_3 = GetPlayerVar(-1, 169)
	if $is_get_1 == 1
		BC("screen","player",-1,"You have already used a Carnival Feast Silver Pack.")
		BC("chat","player",-1,"You have already used a Carnival Feast Silver Pack.")
		return
	endif
	
	if $is_get_2 == 1
		BC("screen","player",-1,"You have already used a Carnival Feast Platinum Pack.")
		BC("chat","player",-1,"You have already used a Carnival Feast Platinum Pack.")
		return
	endif
	
	if $is_get_3 == 1
		BC("screen","player",-1,"You have already used a Carnival Feast Diamond Pack.")
		BC("chat","player",-1,"You have already used a Carnival Feast Diamond Pack.")
		return
	endif
	
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
	
  //??????
  SetPlayerVar(-1, 168, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 1)
	AddPlayerInfo(-1, "item", $item_2, 1)
	AddPlayerInfo(-1, "item", $item_3, 1)
	AddPlayerInfo(-1, "item", $item_4, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a Carnival Feast Platinum Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Carnival Feast Platinum Pack.")			
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
	
}
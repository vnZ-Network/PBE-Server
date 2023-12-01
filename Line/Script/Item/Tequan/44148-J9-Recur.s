	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/12
	//		Author:???(??,??,??)
	//		TaskName:??????J9
	//		TaskID:44148-J9-Recur.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//??id ??     44148
	//??id ???? 21163         
	//??		
		
	$item_0 = 44148
	$item_1 = 21163


	$exclusive = GetPlayerVar(-1, 79)
	//??????
	if $exclusive == 1
		BC("screen","player",-1,"Respected Warrior, you have already used a Warrior's Return Pack. You can't use it again now.")
		BC("chat","player",-1,"Respected Warrior, you have already used a Warrior's Return Pack. You can't use it again now.")
		return
	endif
		
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 1
		BC("screen","player",-1,"There is not enough space in your bag.")
		BC("chat","player",-1,"There is not enough space in your bag.")		
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif

	//????
	SetPlayerVar(-1, 79, 1)	

	//????
	AddPlayerInfo(-1, "item", $item_1, 1)

	BC("screen","player",-1,"True warriors have ambitions. Bless you!")
	BC("chat","player",-1,"True warriors have ambitions. Bless you!")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}
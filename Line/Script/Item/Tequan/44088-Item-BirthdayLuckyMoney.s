	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/13
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:44088-Item-BirthdayLuckyMoney.s
	//
	//****************************************

	function OnUseItem(){

	//????id ???? 44088
	$item_0 = 44088
	
	//????	
	$sub = SubPlayerInfo( -1 , "item" , $item_0 , 1 )
	if $sub != 0
		return
	endif
	
	//????
	AddPlayerInfo( -1 , "money" , 200000 )
	BC("screen","player",-1,"Congratulations, you have obtained 20W Birthday Coins.")
	BC("chat","player",-1,"Congratulations, you have obtained 20W Birthday Coins.")	
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )

}
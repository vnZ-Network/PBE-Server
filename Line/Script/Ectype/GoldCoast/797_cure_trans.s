	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/04/05
	//		Author:???(??,??,??)
	//		TaskName:??????????
	//		TaskID:797_cure_trans.s
	//
	//****************************************
	
	//??????
	function OnRequest(){
		
}

	function OnOption0(){

	$level = GetPlayerInfo( -1, "level")
	$max_hp = GetPlayerInfo( -1, "maxhp")
	$max_mp = GetPlayerInfo( -1, "maxmp")
	$hp = GetPlayerInfo( -1, "hp")
	$mp = GetPlayerInfo( -1, "mp")
	//30??????
	if $level > 30
		//???
		call CostMoney()
		//?????
		$money = GetPlayerInfo( -1, "money")
		//?????
		if $money >= $cost_money
			SubPlayerInfo( -1, "money", $cost_money)
		else
			BC( "screen", "player", -1, "Insufficient Coins!" )
			return
		endif
	else
		BC( "screen", "player", -1, "You are not LV30 yet. Healing is free for you." )
	endif
	
	$add_hp = $max_hp - $hp
	$add_mp = $max_mp - $mp
 	AddPlayerInfo( -1, "hp", $add_hp)
	AddPlayerInfo( -1, "mp", $add_mp)
	HealAllPet(-1)   	
	PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")

	BC( "chat", "player", -1, "Coins Cost: ", $cost_money)
	
	
}

// function OnOption1(){
// 	
// 	$ectype_id = GetEctypeID(-1, 540)
// 	$progress = GetEctypeVar(-1,95)
// 	
// 	if $progress == 1
//		$south_x = 48
//		$south_y = 64			
// 		FlyToMap(-1, $ectype_id, $south_x, $south_y)
// 	endif
// 	
// 	if $progress == 2
//		$south_x = 44
//		$south_y = 98
//		FlyToMap(-1, $ectype_id, $south_x, $south_y) 		
// 	endif
// 
// 	if $progress == 3
//		$south_x = 96
//		$south_y = 85
//		FlyToMap(-1, $ectype_id, $south_x, $south_y)
//	endif
//
// 	if $progress == 4
//		$south_x = 89
//		$south_y = 53
//		FlyToMap(-1, $ectype_id, $south_x, $south_y)
//	endif			
// 
//	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" ) 
// 
// 
//} 	



function CostMoney(){

	$max_hp = GetPlayerInfo( -1, "maxhp")
	$max_mp = GetPlayerInfo( -1, "maxmp")
	$hp = GetPlayerInfo( -1, "hp")
	$mp = GetPlayerInfo( -1, "mp")
	$level = GetPlayerInfo( -1, "level")
	
	$a = $max_hp - $hp
	$b = $max_mp - $mp
	$c = $a + $b
	$d = $level + 15
	$e = $c * $d
	$cost_money = $e / 1350
	//???????,???????,????*2
	$cost_money = $cost_money * 3
	$cost_money = $cost_money / 2
}
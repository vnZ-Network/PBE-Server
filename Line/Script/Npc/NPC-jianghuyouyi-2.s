//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2008/10/16
//		Author:??
//		TaskName:????
//		TaskID:NPC-jianghuyouyi.s
//
//****************************************
//??????
function OnRequest(){
	
		$istask = IsTaskAccept(-1,1868)
		$getitem = GetPlayerInfo(-1,"item",12853)
		if $istask == 0
			if $getitem == 0
				AddPlayerInfo(-1,"item",12853,1)
				BC("screen","player",-1,"Healers must have the desire to help people!")
			endif
		endif
		
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
}
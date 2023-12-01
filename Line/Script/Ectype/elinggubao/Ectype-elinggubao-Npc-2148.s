	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/05
	//		Author：杨原林
	//		TaskName：Ectype-elinggubao-Npc-2148.s
	//		TaskID：能量晶体
	//
	//****************************************
	
	
	function OnRequest(){
	
	}

	function OnOption0(){

		$level = GetPlayerInfo( -1, "level")
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
	 	AddPlayerInfo( -1, "hp", $add_hp)
		AddPlayerInfo( -1, "mp", $add_mp)
		HealAllPet(-1)   	
		PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")

	
	}

//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2009/8/16
//		Author:???
//		TaskName:????
//		TaskID:Frozen-NPC-2022.s
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
		BC( "screen", "player", -1, "As a fighter of Glacier City, you can enjoy healing for free." )
	
	}


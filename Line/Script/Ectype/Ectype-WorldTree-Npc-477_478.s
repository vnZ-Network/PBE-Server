	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/11/19
	//		Author£ºÁõÏþè´
	//		TaskName£ºEctype-WorldTree-Npc-477_478.s
	//		TaskID£ºÉúÃüÖ®Èª
	//
	//****************************************
	//
	function OnRequest(){
		$max_hp = GetPlayerInfo( -1, "maxhp" )
		$max_mp = GetPlayerInfo( -1, "maxmp" )
		$hp = GetPlayerInfo( -1, "hp" )
		$mp = GetPlayerInfo( -1, "mp" )
		
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
 		AddPlayerInfo( -1, "hp", $add_hp )
		AddPlayerInfo( -1, "mp", $add_mp )
		HealAllPet(-1)   	
		PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
	}
	
	function OnOption0(){
		
	}	
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/11
	//		Author:???
	//		TaskName:Ectype-Titan-Npc-740_743.s
	//		TaskID:????
	//
	//****************************************
	//
	function OnRequest(){
		
	}
	

	function OnOption0(){
		
		$Money = GetPlayerInfo( -1, "money" )
		if $Money < 5000
			BC( "dialogbox", "player", -1, "5000 coins are required to use the Fountain of Happiness. " )
			return
		endif
		
		$max_hp = GetPlayerInfo( -1, "maxhp" )
		$max_mp = GetPlayerInfo( -1, "maxmp" )
		$hp = GetPlayerInfo( -1, "hp" )
		$mp = GetPlayerInfo( -1, "mp" )
		
		$submoney = SubPlayerInfo( -1, "money", 5000 )
		if $submoney != 0
			return
		endif
		
		$add_hp = $max_hp - $hp
		$add_mp = $max_mp - $mp
 		AddPlayerInfo( -1, "hp", $add_hp )
		AddPlayerInfo( -1, "mp", $add_mp )
		HealAllPet(-1)   	
		PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
		BC("screen", "player", -1, "Your HP and MP have been fully recovered by the Fountain of Happiness. " )
		BC("chat", "player", -1, "Your HP and MP have been fully recovered by the Fountain of Happiness. " )
		
	}
	
	function OnOption1(){
		$gold = GetPlayerInfo( -1 , "item" , 64113 )
		if $gold > 49
		 	$result = SubPlayerInfo( -1, "item", 64113, 50)
			if $result == 0
				$randbuff = RandomNumber( 1 , 5 )
				if $randbuff == 1
					UseSkill( -1, 2068, 1 )
					BC("screen", "player", -1, "You gained the Valiant status. " )
				endif
				if $randbuff == 2
					UseSkill( -1, 2069, 1 )
					BC("screen", "player", -1, "You gained the Firmness status. " )
				endif
				if $randbuff == 3
					UseSkill( -1, 2070, 1 )
					BC("screen", "player", -1, "You gained the Giant status. " )
					$max_hp = GetPlayerInfo( -1, "maxhp" )
					$add_hp = $max_hp * 0.2
			 		AddPlayerInfo( -1, "hp", $add_hp )
				endif
				if $randbuff == 4
					UseSkill( -1, 2071, 1 )
					BC("screen", "player", -1, "You gained the Magic Spring status. " )
					$max_mp = GetPlayerInfo( -1, "maxmp" )
					$add_mp = $max_mp * 0.2
					AddPlayerInfo( -1, "mp", $add_mp )
				endif
				if $randbuff == 5
					UseSkill( -1, 2072, 1 )
					BC("screen", "player", -1, "You gained the Windwalk status. " )
				endif
			endif
		else
			BC( "dialogbox", "player", -1, "You do not have 50 Ancient Golds. " )
		endif
	}	
	
	
	function OnOption2(){
		
		$player_id_op2 = GetPlayerID()		
		$time = GetPlayerVar( -1 , 4098 )
		$yday = GetSystemTime( "yday" )
		
		if $time == $yday
			BC( "dialogbox", "player", -1, "You can only pray once a day. " )
			return
		endif
		
		$gold = GetPlayerInfo( -1 , "item" , 64113 )
		if $gold > 9
			$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
			if $bag_count < 1
				BC( "dialogbox", "player", -1, "You have not enough space in your bag,please fix your bag." )
				return
			endif
		 	$result = SubPlayerInfo( -1, "item", 64113, 10)
			if $result == 0
//---------------------------------------------------------
				SetPlayerVar( -1 , 4098 , $yday )
				$randbuff = RandomNumber( 1 , 10000 )
//----------------------------------------------------------
				if $randbuff > 9861
					AddPlayerInfo( -1, "item", 63861, 1)
				else
					if $randbuff > 9028
						AddPlayerInfo( -1, "item", 63862, 1)
					else
						if $randbuff > 5695
							AddPlayerInfo( -1, "item", 63863, 1)
						else
							if $randbuff > 1814
								AddPlayerInfo( -1, "item", 63864, 1)
							else
								if $randbuff > 147
									AddPlayerInfo( -1, "item", 63865, 1)
								else
									if $randbuff > 8
										AddPlayerInfo( -1, "item", 63866, 1)
									else
										AddPlayerInfo( -1, "item", 63867, 1)
										#name = GetPlayerInfo( -1 , "name" )
										BC("screen", "server", -1, "The hero ",#name, " has found the real Titan's Archaic Remains after praying to the Fountain of Happiness. " )
										BC("chat", "server", -1, "The hero ",#name, " has found the real Titan's Archaic Remains after praying to the Fountain of Happiness. " )
									endif
								endif
							endif
						endif
					endif
				endif	
//----------------------------------------------------------
			endif
		else
			BC( "dialogbox", "player", -1, "You don't have 10 Ancient Golds. Come back when you do. " )
		endif
		
	}
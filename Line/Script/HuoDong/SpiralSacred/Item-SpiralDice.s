  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/21
	//		Author:???
	//		TaskName:????
	//		TaskID:SpiralDice.s
	//
	//****************************************
	
	function OnUseItem(){
	
		$ectype_ID = GetPlayerInfo( -1, "mapid" )
		if $ectype_ID < 26221
			SubPlayerInfo( -1, "item", 44543,1 )
			SubPlayerInfo( -1, "item", 44544,1 )
			SubPlayerInfo( -1, "item", 44545,1 )
			SubPlayerInfo( -1, "item", 44546,1 )
			SubPlayerInfo( -1, "item", 44547,1 )
			SubPlayerInfo( -1, "item", 44548,1 )
			SubPlayerInfo( -1, "item", 44549,1 )
			SubPlayerInfo( -1, "item", 44550,1 )
			SubPlayerInfo( -1, "item", 44551,1 )
			SubPlayerInfo( -1, "item", 44552,1 )
			RemoveStatusByID( -1, 6483 )
			RemoveStatusByID( -1, 6484 )
			RemoveStatusByID( -1, 6485 )
			RemoveStatusByID( -1, 6486 )
			return
		endif
		if $ectype_ID > 26320
			SubPlayerInfo( -1, "item", 44543,1 )
			SubPlayerInfo( -1, "item", 44544,1 )
			SubPlayerInfo( -1, "item", 44545,1 )
			SubPlayerInfo( -1, "item", 44546,1 )
			SubPlayerInfo( -1, "item", 44547,1 )
			SubPlayerInfo( -1, "item", 44548,1 )
			SubPlayerInfo( -1, "item", 44549,1 )
			SubPlayerInfo( -1, "item", 44550,1 )
			SubPlayerInfo( -1, "item", 44551,1 )
			SubPlayerInfo( -1, "item", 44552,1 )
			RemoveStatusByID( -1, 6483 )
			RemoveStatusByID( -1, 6484 )
			RemoveStatusByID( -1, 6485 )
			RemoveStatusByID( -1, 6486 )
			return
		endif
		
		$tingliu = GetPlayerVar(-1,3551)
		if $tingliu > 0
			BC( "chat", "player", -1, "You have been stunned. Can not cast the dice. There are ",$tingliu, " turns left.")
			BC( "screen", "player", -1, "You have been stunned. Can not cast the dice. There are ",$tingliu, " turns left.")
			return
		endif
		
		$weizhi = GetPlayerVar(-1,3547)
		
		if $weizhi == 46
			BC( "chat", "player", -1, "You've already arrived at the final destination. Now open your treasure chest!")
			BC( "screen", "player", -1, "You've already arrived at the final destination. Now open your treasure chest!")
			return
		endif
		
		if $weizhi == 4
			$renyuwan = GetEctypeVar($ectype_ID,95)
			if $renyuwan == 0
				$rolled = GetPlayerVar(-1,3546)
				if $rolled > 0
					$dicenum = GetPlayerVar(-1,3548)
					if $dicenum > 0
						BC( "chat", "player", -1, "You cast a: ",$dicenum)
						BC( "screen", "player", -1, "You cast a: ",$dicenum)
					else
						BC( "chat", "player", -1, "In the Mermaids Bay, only the first player who cast the dice can move.")
						BC( "screen", "player", -1, "In the Mermaids Bay, only the first player who cast the dice can move.")
					endif
					return
				endif
				if $rolled == 0
					$rolldice = RandomNumber ( 1 , 6 )
					SetPlayerVar(-1,3546,1)
					SetPlayerVar(-1,3548,$rolldice)
					$mondice = 52300 + $rolldice
					$Playerxuhao = GetPlayerVar(-1,3553)
					$monbaoshu = 32339 + $Playerxuhao
					$PlayerX = GetPlayerInfo( -1, "mapposx" )
					$PlayerY = GetPlayerInfo( -1, "mapposy" )
					AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
					AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				endif
				SetEctypeVar($ectype_ID,95,1)
			else
				BC( "chat", "player", -1, "In the Mermaids Bay, only the first player who cast the dice can move.")
				BC( "screen", "player", -1, "In the Mermaids Bay, only the first player who cast the dice can move.")
				SetPlayerVar(-1,3546,1)
			endif
			return
		endif
		
		if $weizhi == 8
			$rolled = GetPlayerVar(-1,3546)
			if $rolled > 0
				$dicenum = GetPlayerVar(-1,3548)
				if $dicenum > 0
					BC( "chat", "player", -1, "You cast a: ",$dicenum)
					BC( "screen", "player", -1, "You cast a: ",$dicenum)
				else
					BC( "chat", "player", -1, "In Seaside Cliffs, only a player casts a 3 or less can keep moving.")
					BC( "screen", "player", -1, "In Seaside Cliffs, only a player casts a 3 or less can keep moving.")
				endif
				return
			endif
			if $rolled == 0
				$rolldice = RandomNumber ( 1 , 6 )
				SetPlayerVar(-1,3546,1)
				SetPlayerVar(-1,3548,$rolldice)
				$mondice = 52300 + $rolldice
				$Playerxuhao = GetPlayerVar(-1,3553)
				$monbaoshu = 32339 + $Playerxuhao
				$PlayerX = GetPlayerInfo( -1, "mapposx" )
				$PlayerY = GetPlayerInfo( -1, "mapposy" )
				AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
			endif
			if $rolldice > 3
				SetPlayerVar(-1,3546,1)
				SetPlayerVar(-1,3548,0)
				BC( "chat", "player", -1, "In Seaside Cliffs, only a player casts a 3 or less can keep moving.")
				BC( "screen", "player", -1, "In Seaside Cliffs, only a player casts a 3 or less can keep moving.")
			endif
			return
		endif
		
		if $weizhi == 10
			$rolled = GetPlayerVar(-1,3546)
			if $rolled > 0
				$dicenum = GetPlayerVar(-1,3548)
				BC( "chat", "player", -1, "The number you cast +2:",$dicenum)
				BC( "screen", "player", -1, "The number you cast +2:",$dicenum)
				return
			endif
			if $rolled == 0
				$rolldice = RandomNumber ( 1 , 6 )
				SetPlayerVar(-1,3546,1)
				$rollplus = $rolldice + 2
				SetPlayerVar(-1,3548,$rollplus)
				$mondice = 52300 + $rolldice
				$Playerxuhao = GetPlayerVar(-1,3553)
				$monbaoshu = 32339 + $Playerxuhao
				$PlayerX = GetPlayerInfo( -1, "mapposx" )
				$PlayerY = GetPlayerInfo( -1, "mapposy" )
				AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
			endif
			return
		endif
		
		if $weizhi == 14
			$rolled = GetPlayerVar(-1,3546)
			if $rolled > 0
				BC( "chat", "player", -1, "You'll move backward certain steps according to the number you cast in this turn.")
				BC( "screen", "player", -1, "You'll move backward certain steps according to the number you cast in this turn.")
				return
			endif
			if $rolled == 0
				$rolldice = RandomNumber ( 1 , 6 )
				SetPlayerVar(-1,3546,1)
				SetPlayerVar(-1,3548,0)
				SetPlayerVar(-1,3552,$rolldice)
				$mondice = 52300 + $rolldice
				$Playerxuhao = GetPlayerVar(-1,3553)
				$monbaoshu = 32339 + $Playerxuhao
				$PlayerX = GetPlayerInfo( -1, "mapposx" )
				$PlayerY = GetPlayerInfo( -1, "mapposy" )
				AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
			endif
			return
		endif
		
		if $weizhi == 17
			$molong = GetEctypeVar($ectype_ID,94)
			if $molong == 1
				$rolled = GetPlayerVar(-1,3546)
				if $rolled > 0
					$dicenum = GetPlayerVar(-1,3548)
					BC( "chat", "player", -1, "You cast a: ",$dicenum)
					BC( "screen", "player", -1, "You cast a: ",$dicenum)
					return
				endif
				if $rolled == 0
					$rolldice = RandomNumber ( 1 , 6 )
					SetPlayerVar(-1,3546,1)
					SetPlayerVar(-1,3548,$rolldice)
					$mondice = 52300 + $rolldice
					$Playerxuhao = GetPlayerVar(-1,3553)
					$monbaoshu = 32339 + $Playerxuhao
					$PlayerX = GetPlayerInfo( -1, "mapposx" )
					$PlayerY = GetPlayerInfo( -1, "mapposy" )
					AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
					AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				endif
			else
				BC( "chat", "player", -1, "In the Dragon Cave, only after kill the Giant Dragon you can keep moving!")
				BC( "screen", "player", -1, "In the Dragon Cave, only after kill the Giant Dragon you can keep moving!")
			endif
			return
		endif
		
		if $weizhi == 28
			$rolled = GetPlayerVar(-1,3546)
			if $rolled > 0
				$dicenum = GetPlayerVar(-1,3548)
				BC( "chat", "player", -1, "The number you cast +1:",$dicenum)
				BC( "screen", "player", -1, "The number you cast +1:",$dicenum)
				return
			endif
			if $rolled == 0
				$rolldice = RandomNumber ( 1 , 6 )
				SetPlayerVar(-1,3546,1)
				$rollplus = $rolldice + 1
				SetPlayerVar(-1,3548,$rollplus)
				$mondice = 52300 + $rolldice
				$Playerxuhao = GetPlayerVar(-1,3553)
				$monbaoshu = 32339 + $Playerxuhao
				$PlayerX = GetPlayerInfo( -1, "mapposx" )
				$PlayerY = GetPlayerInfo( -1, "mapposy" )
				AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
			endif
			return
		endif
		
		if $weizhi == 39
			$rolled = GetPlayerVar(-1,3546)
			if $rolled > 0
				$dicenum = GetPlayerVar(-1,3548)
				BC( "chat", "player", -1, "The number you cast -2:",$dicenum)
				BC( "screen", "player", -1, "The number you cast -2:",$dicenum)
				return
			endif
			if $rolled == 0
				$rolldice = RandomNumber ( 1 , 6 )
				SetPlayerVar(-1,3546,1)
				if $rolldice < 2
					SetPlayerVar(-1,3548,0)
					SetPlayerVar(-1,3552,1)
				else
					$rollplus = $rolldice - 2
					SetPlayerVar(-1,3548,$rollplus)
				endif
				$mondice = 52300 + $rolldice
				$Playerxuhao = GetPlayerVar(-1,3553)
				$monbaoshu = 32339 + $Playerxuhao
				$PlayerX = GetPlayerInfo( -1, "mapposx" )
				$PlayerY = GetPlayerInfo( -1, "mapposy" )
				AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
			endif
			return
		endif
		
		if $weizhi == 41
			$rolled = GetPlayerVar(-1,3546)
			if $rolled > 0
				$dicenum = GetPlayerVar(-1,3548)
				BC( "chat", "player", -1, "The number you cast +3:",$dicenum)
				BC( "screen", "player", -1, "The number you cast +3:",$dicenum)
				return
			endif
			if $rolled == 0
				$rolldice = RandomNumber ( 1 , 6 )
				SetPlayerVar(-1,3546,1)
				$rollplus = $rolldice + 3
				SetPlayerVar(-1,3548,$rollplus)
				$mondice = 52300 + $rolldice
				$Playerxuhao = GetPlayerVar(-1,3553)
				$monbaoshu = 32339 + $Playerxuhao
				$PlayerX = GetPlayerInfo( -1, "mapposx" )
				$PlayerY = GetPlayerInfo( -1, "mapposy" )
				AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
			endif
			return
		endif
		
		if $weizhi == 43
			$rolled = GetPlayerVar(-1,3546)
			if $rolled > 0
				$dicenum = GetPlayerVar(-1,3548)
				if $dicenum > 0
					BC( "chat", "player", -1, "You cast a: ",$dicenum)
					BC( "screen", "player", -1, "You cast a: ",$dicenum)
				else
					BC( "chat", "player", -1, "In the Death Swamp, only a player casts a 4 or more can keep moving.")
					BC( "screen", "player", -1, "In the Death Swamp, only a player casts a 4 or more can keep moving.")
				endif
				return
			endif
			if $rolled == 0
				$rolldice = RandomNumber ( 1 , 6 )
				SetPlayerVar(-1,3546,1)
				SetPlayerVar(-1,3548,$rolldice)
				$mondice = 52300 + $rolldice
				$Playerxuhao = GetPlayerVar(-1,3553)
				$monbaoshu = 32339 + $Playerxuhao
				$PlayerX = GetPlayerInfo( -1, "mapposx" )
				$PlayerY = GetPlayerInfo( -1, "mapposy" )
				AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
			endif
			if $rolldice < 4
				SetPlayerVar(-1,3546,1)
				SetPlayerVar(-1,3548,0)
				BC( "chat", "player", -1, "In the Death Swamp, only a player casts a 4 or more can keep moving.")
				BC( "screen", "player", -1, "In the Death Swamp, only a player casts a 4 or more can keep moving.")
			endif
			return
		endif
		
		$rolled = GetPlayerVar(-1,3546)
		if $rolled > 0
			$dicenum = GetPlayerVar(-1,3548)
			BC( "chat", "player", -1, "You cast a: ",$dicenum)
			BC( "screen", "player", -1, "You cast a: ",$dicenum)
			return
		endif
		if $rolled == 0
			$rolldice = RandomNumber ( 1 , 6 )
			SetPlayerVar(-1,3546,1)
			SetPlayerVar(-1,3548,$rolldice)
			$mondice = 52300 + $rolldice
			$Playerxuhao = GetPlayerVar(-1,3553)
			$monbaoshu = 32339 + $Playerxuhao
			$PlayerX = GetPlayerInfo( -1, "mapposx" )
			$PlayerY = GetPlayerInfo( -1, "mapposy" )
			AddMonsterByFloat( $mondice, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
			AddMonsterByFloat( $monbaoshu, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
		endif
		
	}
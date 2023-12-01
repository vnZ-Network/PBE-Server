	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Ectype-Init.s
	//		TaskID：真实之镜初始化
	//
	//****************************************
	
	function OnCreate(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )
		StartEctypeTimer( $ectype_ID, 5 )
		
	}
	
	
	function InitTimer(){
	
		SetEctypeTimer( 0, 2, "EctypeTime0" )
	    
	    SetEctypeTimer( 1, 2, "EctypeTime1" )

	    SetEctypeTimer( 2, 4, "EctypeTime2" )

	    SetEctypeTimer( 3, 4, "EctypeTime3" )
	    
	    SetEctypeTimer( 4, 1, "EctypeTime4" )
	    
	    SetEctypeTimer( 5, 1, "EctypeTime5" )
	    
	    SetEctypeTimer( 6, 2, "EctypeTime6" )
	    
	   	SetEctypeTimer( 7, 25, "EctypeTime7" )
	    	 
	    SetEctypeTimer( 8, 45, "EctypeTime8" )
	    
	    SetEctypeTimer( 9, 2, "EctypeTime9" )
	    

	}
	
	//打开阻挡后，隐藏传送门NPC
	function EctypeTime1(){

		$ectype_ID = GetEctypeID( -1 , 253 )
		$flag = GetEctypeVar( $ectype_ID, 15 )
		
		if $flag == 1
			$monsterID = GetEctypeVar( $ectype_ID, 112 )
			$result = AddMonsterByFloat( $monsterID, 1, $ectype_ID, 172, 191, 0 )
			if $result == 0
				DeleteNPC( 559, $ectype_ID )
				SetEctypeVar( $ectype_ID, 39, 5 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 172, 191, 0 )
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_Common_baozha_01.wav" )
			else
				CloseMask( 2, $ectype_ID )
				return
			endif
		endif
		
		if $flag == 2
			$monsterID = GetEctypeVar( $ectype_ID, 111 )
			$result = AddMonsterByFloat( $monsterID, 1, $ectype_ID, 199, 190, 0 )
			if $result == 0
				DeleteNPC( 560, $ectype_ID )
				SetEctypeVar( $ectype_ID, 39, 5 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 199, 190, 0 )
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_Common_baozha_01.wav" )
			else
				CloseMask( 5, $ectype_ID )
				return
			endif
		endif
		
		if $flag == 3
			$monsterID = GetEctypeVar( $ectype_ID, 110 )
			$result = AddMonsterByFloat( $monsterID, 1, $ectype_ID, 198, 218, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_Common_baozha_01.wav" )
			if $result == 0
				DeleteNPC( 561, $ectype_ID )
				SetEctypeVar( $ectype_ID, 39, 5 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 198, 218, 0 )
			else
				CloseMask( 4, $ectype_ID )
				return
			endif
		endif
		
		if $flag == 4
			$monsterID = GetEctypeVar( $ectype_ID, 113 )
			$result = AddMonsterByFloat( $monsterID, 1, $ectype_ID, 172, 218, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_Common_baozha_01.wav" )
			if $result == 0
				DeleteNPC( 562, $ectype_ID )
				SetEctypeVar( $ectype_ID, 39, 5 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 172, 218, 0 )
			else
				CloseMask( 3, $ectype_ID )
				return
			endif
		endif
	}
	
	function EctypeTime2(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		$varIndex = GetEctypeVar( $ectype_ID, 21 )
		$positionNumber = GetEctypeVar( $ectype_ID, $varIndex )
		SetEctypeVar( $ectype_ID, 39, 73 )
			
		if $positionNumber == 1
			
			AddMonsterByFloat( 51596, 1, $ectype_ID, 207, 149, 0 )
			$result = AddMonsterByFloat( 51587, 1, $ectype_ID, 207, 149, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
			
		if $positionNumber == 2
			AddMonsterByFloat( 51596, 1, $ectype_ID, 211, 153, 0 )
			$result = AddMonsterByFloat( 51588, 1, $ectype_ID, 211, 153, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
		
		if $positionNumber == 3
			AddMonsterByFloat( 51596, 1, $ectype_ID, 210, 158, 0 )
			$result = AddMonsterByFloat( 51589, 1, $ectype_ID, 210, 158, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
		
		if $positionNumber == 4
			AddMonsterByFloat( 51596, 1, $ectype_ID, 204, 158, 0 )
			$result = AddMonsterByFloat( 51590, 1, $ectype_ID, 204, 158, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
			
		if $positionNumber == 5
			AddMonsterByFloat( 51596, 1, $ectype_ID, 203, 153, 0 )
			$result = AddMonsterByFloat( 51591, 1, $ectype_ID, 203, 153, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
		if $varIndex <= 20
			$varIndex = $varIndex + 1
			SetEctypeVar( $ectype_ID, 21, $varIndex )
			StartEctypeTimer( $ectype_ID, 3 )
		endif	
		
	}
	
	function EctypeTime3(){

		$ectype_ID = GetEctypeID( -1 , 253 )
		$varIndex = GetEctypeVar( $ectype_ID, 21 )
		$positionNumber = GetEctypeVar( $ectype_ID, $varIndex )
		SetEctypeVar( $ectype_ID, 39, 73 )
		
		if $positionNumber == 1
			AddMonsterByFloat( 51596, 1, $ectype_ID, 207, 149, 0 )
			$result = AddMonsterByFloat( 51587, 1, $ectype_ID, 207, 149, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
			
		if $positionNumber == 2
			AddMonsterByFloat( 51596, 1, $ectype_ID, 211, 153, 0 )
			$result = AddMonsterByFloat( 51588, 1, $ectype_ID, 211, 153, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
			
		if $positionNumber == 3
			AddMonsterByFloat( 51596, 1, $ectype_ID, 210, 158, 0 )
			$result = AddMonsterByFloat( 51589, 1, $ectype_ID, 210, 158, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
			
		if $positionNumber == 4
			AddMonsterByFloat( 51596, 1, $ectype_ID, 204, 158, 0 )
			$result = AddMonsterByFloat( 51590, 1, $ectype_ID, 204, 158, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
			
		if $positionNumber == 5
			AddMonsterByFloat( 51596, 1, $ectype_ID, 203, 153, 0 )
			$result = AddMonsterByFloat( 51591, 1, $ectype_ID, 203, 153, 0 )
			PlaySoundToMap( $ectype_ID, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		endif
			
		if $varIndex == 21
			SetEctypeVar( $ectype_ID, 0, 1 )
			SetEctypeVar( $ectype_ID, 1, 1 )
			SetEctypeVar( $ectype_ID, 2, 1 )
			SetEctypeVar( $ectype_ID, 3, 1 )
			SetEctypeVar( $ectype_ID, 4, 1 )
			SetEctypeVar( $ectype_ID, 5, 1 )
			SetEctypeVar( $ectype_ID, 21, 16 )
			SetEctypeVar( $ectype_ID, 39, 10 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 207, 153, 0 )
		endif
			
		if $varIndex <= 20
			$varIndex = $varIndex + 1
			SetEctypeVar( $ectype_ID, 21, $varIndex )
			StartEctypeTimer( $ectype_ID, 2 )
		endif
		
	}
	
	function EctypeTime4(){

		$ectype_ID = GetEctypeID( -1 , 253 )
		$step = GetEctypeVar( $ectype_ID, 14 )
		$npc_ID = GetEctypeVar( $ectype_ID, 32 )
		$player_id = GetEctypeVar( $ectype_ID, 114 )
		$value = GetPlayerVar( $player_id, 3258 )
		$posX = GetPlayerInfo( $player_id, "mapposx" )
		$posY = GetPlayerInfo( $player_id, "mapposy" )

		if $step == 1
			NPCAction( $player_id, $npc_ID, down, 1 )
			StartEctypeTimer( $ectype_ID, 6 )
		endif
		if $step == 2
			AddNPC( 569, $ectype_ID )
			SetEctypeVar( $ectype_ID, 39, 1 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
			StartEctypeTimer( $ectype_ID, 6 )
		endif
		if $step == 3
			SetEctypeVar( $ectype_ID, 39, 22 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
			StartEctypeTimer( $ectype_ID, 6 )
		endif
		if $step == 4
			if $value == 1
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\drop_stone.wav" )
				SetEctypeVar( $ectype_ID, 39, 24 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
				NPCAction( $player_id, 569, down, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $value == 2
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\drop_stone.wav" )
				SetEctypeVar( $ectype_ID, 39, 1 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
				NPCAction( $player_id, 569, down, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $value == 3
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\drop_stone.wav" )
				SetEctypeVar( $ectype_ID, 39, 1 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
				NPCAction( $player_id, 569, down, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $value == 4
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\drop_stone.wav" )
				SetEctypeVar( $ectype_ID, 39, 1 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
				NPCAction( $player_id, 569, down, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
		endif
		
		if $value == 1
			if $step == 5
				$maxX = $posX + 8
				$maxY = $posY + 8
				$minX = $posX - 8
				$minY = $posY - 8
				SetEctypeVar( $ectype_ID, 39, 55 )
				
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $maxY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $minY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $maxX, $posY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $minX, $posY, 0 )
				
				AddMonsterByFloat( 51596, 1, $ectype_ID, $maxX, $maxY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $maxX, $minY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $minX, $minY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $minX, $maxY, 0 )
				
				AddMonsterByFloat( 51593, 1, $ectype_ID, $posX, $maxY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $posX, $minY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $maxX, $posY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $minX, $posY, 0 )
				
				AddMonsterByFloat( 51593, 1, $ectype_ID, $maxX, $maxY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $maxX, $minY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $minX, $minY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $minX, $maxY, 0 )
				
				$temp1 = $posX + 4
				$temp2 = $posY + 4
				$temp3 = $posX - 4
				$temp4 = $posY - 4
				
				AddMonsterByFloat( 51596, 1, $ectype_ID, $temp1, $minY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $temp2, $minY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $temp3, $maxY, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $temp4, $maxY, 0 )
				
				AddMonsterByFloat( 51596, 1, $ectype_ID, $maxX, $temp3, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $maxX, $temp4, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $minX, $temp3, 0 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $minX, $temp4, 0 )
				
				AddMonsterByFloat( 51593, 1, $ectype_ID, $temp1, $minY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $temp2, $minY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $temp3, $maxY, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $temp4, $maxY, 0 )
				
				AddMonsterByFloat( 51593, 1, $ectype_ID, $maxX, $temp3, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $maxX, $temp4, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $minX, $temp3, 0 )
				AddMonsterByFloat( 51593, 1, $ectype_ID, $minX, $temp4, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 6
				SetEctypeVar( $ectype_ID, 39, 38 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $maxY, 0 )
			endif
		endif
			
		if $value == 2
			if $step == 5
				SetEctypeVar( $ectype_ID, 39, 28 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				AddStatus( $player_id, 6017, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 6
				SetEctypeVar( $ectype_ID, 39, 28 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				AddStatus( $player_id, 6010, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 7
				SetEctypeVar( $ectype_ID, 39, 28 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				AddStatus( $player_id, 6011, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 8
				SetEctypeVar( $ectype_ID, 39, 28 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				AddStatus( $player_id, 6012, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 9
				SetEctypeVar( $ectype_ID, 39, 28 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				AddStatus( $player_id, 6011, 1 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 10
				SetEctypeVar( $ectype_ID, 39, 28 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				AddStatus( $player_id, 6017, 1 )
			endif
		endif
			
		if $value == 3
			if $step == 5
				AddMonsterByFloat( 51597, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 6
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 7
				AddMonsterByFloat( 51597, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 8
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 9
				AddMonsterByFloat( 51597, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 10
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 11
				AddMonsterByFloat( 51597, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 12
			endif
		endif
			
		if $value == 4
			if $step == 5
				FlyToMap( $player_id, $ectype_ID, 71, 36, 0)
				SetEctypeVar( $ectype_ID, 39, 80 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 183, 93, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 6
				FlyToMap( $player_id, $ectype_ID, 72, 32, 0)
				SetEctypeVar( $ectype_ID, 39, 80 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 185, 83, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 7
				FlyToMap( $player_id, $ectype_ID, 71, 43, 0)
				SetEctypeVar( $ectype_ID, 39, 80 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 183, 111, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 8
				FlyToMap( $player_id, $ectype_ID, 80, 60, 0)
				SetEctypeVar( $ectype_ID, 39, 80 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 206, 154, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 9
				FlyToMap( $player_id, $ectype_ID, 70, 80, 0)
				SetEctypeVar( $ectype_ID, 39, 80 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 180, 206, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 10
				FlyToMap( $player_id, $ectype_ID, 48, 72, 0)
				SetEctypeVar( $ectype_ID, 39, 80 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 124, 185, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 11
				FlyToMap( $player_id, $ectype_ID, 39, 83, 0)
				SetEctypeVar( $ectype_ID, 39, 80 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 101, 213, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 12
			endif
			
		endif
		
		if $value == 5
			if $step == 4
				SetEctypeVar( $ectype_ID, 39, 19 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 97, 211, 0 )
				AddNPC( 550, $ectype_ID )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 5
				//SetEctypeVar( $ectype_ID, 39, 48 )
				//AddMonsterByFloat( 51596, 1, $ectype_ID, 97, 211, 0 )
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 6
				SetEctypeVar( $ectype_ID, 39, 1 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\drop_stone.wav" )
				NPCAction( $player_id, 569, down, 1 )
				$statue = GetEctypeVar( $ectype_ID, 1 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 1 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 200, 0 )
					NPCAction( $player_id, 551, down, 1 )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 2 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 1 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 218, 0 )
					NPCAction( $player_id, 552, down, 1 )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 3 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 1 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 90, 209, 0 )
					NPCAction( $player_id, 553, down, 1 )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 4 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 1 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 108, 209, 0 )
					NPCAction( $player_id, 554, down, 1 )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 5 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 1 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 205, 0 )
					NPCAction( $player_id, 555, down, 1 )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 6 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 1 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 104, 214, 0 )
					NPCAction( $player_id, 556, down, 1 )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 7 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 1 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 104, 205, 0 )
					NPCAction( $player_id, 557, down, 1 )
				endif
				$statue = GetEctypeVar( $ectype_ID, 8 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 1 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 214, 0 )
					NPCAction( $player_id, 558, down, 1 )
				endif
				StartEctypeTimer( $ectype_ID, 6 )
			endif
			if $step == 7
				SetEctypeVar( $ectype_ID, 14, 0 )
				SetEctypeVar( $ectype_ID, 8, 0 )
			endif
		endif

	}
	
	function EctypeTime5(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )
		$player_id = GetEctypeVar( $ectype_ID, 119 )
		$value = GetPlayerVar( $player_id, 3256 )
		if $value == 0
			SetEctypeVar( $ectype_ID, 39, 12 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 96, 239, 0 )
		endif
		if $value == 1
			OpenMask( 1, $ectype_ID )
		endif
		
		if $value == 2
			OpenMask( 1, $ectype_ID )
			OpenMask( 6, $ectype_ID )
		endif
		
		if $value >= 3
			OpenMask( 1, $ectype_ID )
			OpenMask( 6, $ectype_ID )
			OpenMask( 7, $ectype_ID )
			OpenMask( 8, $ectype_ID )
			OpenMask( 9, $ectype_ID )
		endif
		
		$done = IsTaskDone( $player_id, 195 )
		if $done == 0
			DeleteNPC( 541, $ectype_ID )
			DeleteNPC( 542, $ectype_ID )
			AddNPC( 549, $ectype_ID )
			//AddMonsterByFloat( 51594, 1, $ectype_ID, 176, 81, 0 )
			//AddMonsterByFloat( 51594, 1, $ectype_ID, 181, 82, 0 )
			//AddMonsterByFloat( 51594, 1, $ectype_ID, 184, 83, 0 )
			//AddMonsterByFloat( 51594, 1, $ectype_ID, 187, 82, 0 )
			//AddMonsterByFloat( 51594, 1, $ectype_ID, 192, 81, 0 )
			SetEctypeVar( $ectype_ID, 39, 86 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 209, 0 )
		else
			$done = IsTaskDone( $player_id, 184 )
			if $done == 0
				DeleteNPC( 541, $ectype_ID )
				AddNPC( 542, $ectype_ID )
				DeleteNPC( 549, $ectype_ID )
			else
				AddNPC( 541, $ectype_ID )
				DeleteNPC( 542, $ectype_ID )
				DeleteNPC( 549, $ectype_ID )
			endif
		endif

		$done = IsTaskDone( $player_id, 196 )
		if $done != 0
			DeleteNPC( 550, $ectype_ID )
		endif
		
		$accept = IsTaskAccept( $player_id, 194 )
		if $accept == 0
			DeleteNPC( 547, $ectype_ID )
			AddMonsterByFloat( 51575, 1, $ectype_ID, 183, 116, 0 )
			SetEctypeVar( $ectype_ID, 40, 4 )
			SetEctypeVar( $ectype_ID, 62, 1 )
			StartEctypeTimer( $ectype_ID, 9 )
		endif
		
		$done = IsTaskDone( $player_id, 196 )
		if $done == 0
			AddMonsterByFloat( 51595, 1, $ectype_ID, 157, 202, 0 )
			AddMonsterByFloat( 51595, 1, $ectype_ID, 157, 207, 0 )
			AddMonsterByFloat( 51595, 1, $ectype_ID, 149, 208, 0 )
			AddMonsterByFloat( 51595, 1, $ectype_ID, 149, 201, 0 )
			AddMonsterByFloat( 51595, 1, $ectype_ID, 138, 200, 0 )
			AddMonsterByFloat( 51595, 1, $ectype_ID, 138, 207, 0 )
			AddMonsterByFloat( 51595, 1, $ectype_ID, 128, 209, 0 )
			AddMonsterByFloat( 51595, 1, $ectype_ID, 126, 200, 0 )
			DeleteNPC( 551, $ectype_ID )
			DeleteNPC( 552, $ectype_ID )
			DeleteNPC( 553, $ectype_ID )
			DeleteNPC( 554, $ectype_ID )
			DeleteNPC( 555, $ectype_ID )
			DeleteNPC( 556, $ectype_ID )
			DeleteNPC( 557, $ectype_ID )
			DeleteNPC( 558, $ectype_ID )
		endif
		
		DeleteNPC( 569, $ectype_ID )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 108, 229, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 116, 213, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 118, 195, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 112, 193, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 105, 197, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 95, 192, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 85, 201, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 80, 211, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 81, 225, 0 )
		AddMonsterByFloat( 51551, 1, $ectype_ID, 94, 223, 0 )
		
	}
	
	function EctypeTime6(){

		$ectype_ID = GetEctypeID( -1 , 253 )
		$player_id = GetEctypeVar( $ectype_ID, 114 )
		$step = GetEctypeVar( $ectype_ID, 14 )
		$npc_ID = GetEctypeVar( $ectype_ID, 32 )
		$value = GetPlayerVar( $player_id, 3258 )
		$posX = GetPlayerInfo( $player_id, "mapposx" )
		$posY = GetPlayerInfo( $player_id, "mapposy" )
		
		if $step == 1
			if $npc_ID == 551
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 200, 0 )
			endif
			if $npc_ID == 552
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 218, 0 )
			endif
			if $npc_ID == 553
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 90, 209, 0 )
			endif
			if $npc_ID == 554
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 108, 209, 0 )
			endif
			if $npc_ID == 555
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 205, 0 )
			endif
			if $npc_ID == 556
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 104, 214, 0 )
			endif
			if $npc_ID == 557
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 104, 205, 0 )
			endif
			if $npc_ID == 558
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 214, 0 )
			endif
			DeleteNPC( $npc_ID, $ectype_ID )
		endif
		if $step == 2
			SetEctypeVar( $ectype_ID, 39, 23 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 209, 0 )
		endif
		if $step == 4
			if $value != 5
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
				DeleteNPC( 569, $ectype_ID )
			endif
		endif
		if $step == 5
			if $value == 1
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_11.wav" )
				SetEctypeVar( $ectype_ID, 39, 15 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
			if $value == 2
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_12.wav" )
				SetEctypeVar( $ectype_ID, 39, 16 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
			if $value == 3
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_13.wav" )
				SetEctypeVar( $ectype_ID, 39, 17 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
			if $value == 4
				SetEctypeVar( $ectype_ID, 39, 18 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
		endif
		if $step == 6
			if $value == 4
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_17.wav" )
				SetEctypeVar( $ectype_ID, 39, 43 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
			if $value == 5
				SetEctypeVar( $ectype_ID, 39, 55 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 212, 0 )
				DeleteNPC( 569, $ectype_ID )
				
				$statue = GetEctypeVar( $ectype_ID, 1 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 55 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 200, 0 )
					DeleteNPC( 551, $ectype_ID )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 2 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 55 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 218, 0 )
					DeleteNPC( 552, $ectype_ID )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 3 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 55 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 90, 209, 0 )
					DeleteNPC( 553, $ectype_ID )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 4 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 55 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 108, 209, 0 )
					DeleteNPC( 554, $ectype_ID )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 5 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 55 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 205, 0 )
					DeleteNPC( 555, $ectype_ID )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 6 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 55 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 104, 214, 0 )
					DeleteNPC( 556, $ectype_ID )
				endif
				
				$statue = GetEctypeVar( $ectype_ID, 7 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 55 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 104, 205, 0 )
					DeleteNPC( 557, $ectype_ID )
				endif
				$statue = GetEctypeVar( $ectype_ID, 8 )
				if $statue != 8
					SetEctypeVar( $ectype_ID, 39, 55 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 214, 0 )
					DeleteNPC( 558, $ectype_ID )
				endif
			endif			
		endif
		if $step == 7
			if $value == 3
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_14.wav" )
				SetEctypeVar( $ectype_ID, 39, 40 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
			if $value == 4
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_18.wav" )
				SetEctypeVar( $ectype_ID, 39, 44 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif		
		endif
		if $step == 8
			if $value == 4
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_19.wav" )
				SetEctypeVar( $ectype_ID, 39, 45 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif			
		endif
		if $step == 9
			if $value == 3
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_15.wav" )
				SetEctypeVar( $ectype_ID, 39, 41 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
			if $value == 4
				//SetEctypeVar( $ectype_ID, 39, 46 )
				//AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif		
		endif
		if $step == 10
			if $value == 4
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_21.wav" )
				SetEctypeVar( $ectype_ID, 39, 47 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif			
		endif
		if $step == 11
			if $value == 3
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_16.wav" )
				SetEctypeVar( $ectype_ID, 39, 42 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
			//if $value == 4
				//SetEctypeVar( $ectype_ID, 39, 48 )
				//AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			//endif		
		endif

		$step = $step + 1
		SetEctypeVar( $ectype_ID, 14, $step )
		StartEctypeTimer( $ectype_ID, 4 )

	}
	
	function EctypeTime7(){

		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 7, 0 )

	}
	
	function EctypeTime8(){

		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 7, 0 )

	}
	
	function EctypeTime9(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		$switch = GetEctypeVar( $ectype_ID, 40 )
		if $switch == 1
			SetEctypeVar( $ectype_ID, 33, 0 )
		endif
		
		if $switch == 2
			SetEctypeVar( $ectype_ID, 39, 33 )
			PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_knight_fengniuzhen_fire.wav" )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 176, 81, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 179, 80, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 184, 83, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 189, 80, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 192, 81, 0 )
				
			AddMonsterByFloat( 51594, 1, $ectype_ID, 176, 81, 0 )
			AddMonsterByFloat( 51594, 1, $ectype_ID, 179, 80, 0 )
			AddMonsterByFloat( 51594, 1, $ectype_ID, 184, 83, 0 )
			AddMonsterByFloat( 51594, 1, $ectype_ID, 189, 80, 0 )
			AddMonsterByFloat( 51594, 1, $ectype_ID, 192, 81, 0 )
			PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_knight_fengniuzhen_fire.wav" )
		endif
		
		if $switch == 3
			SetEctypeVar( $ectype_ID, 39, 32 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 207, 149, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 211, 153, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 210, 158, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 204, 158, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 203, 153, 0 )
		endif
		
		if $switch == 4
			$step = GetEctypeVar( $ectype_ID, 62 )
			if $step == 1
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_01.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 36 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 2
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 3
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 4
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\madi_01.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 57 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 5
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_02.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 58 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 6
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 7
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\madi_02.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 59 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 8
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_03.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 60 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 9
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\madi_03.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 61 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
		endif
		
		if $switch == 5
			$step = GetEctypeVar( $ectype_ID, 62 )
			if $step == 1
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_05.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 62 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 2
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\zhenshizhijing_01.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 63 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 3
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 4
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_06.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 64 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 5
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 6
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\zhenshizhijing_02.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 65 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 7
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_07.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 66 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 8
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 9
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\zhenshizhijing_03.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 67 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 10
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_08.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 68 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif	
		endif
		
		if $switch == 6
			$step = GetEctypeVar( $ectype_ID, 62 )
			if $step == 1
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\zhenshizhijing_04.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 69 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 2
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 3
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 4
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_09.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 70 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 5
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\zhenshizhijing_05.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 71 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 6
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_10.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 72 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
		endif
		
		if $switch == 7
			$step = GetEctypeVar( $ectype_ID, 62 )
			if $step == 1
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\ladamantuosi_04.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 25 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
				StartEctypeTimer( $ectype_ID, 0 )
			endif
			if $step == 2
				PlaySoundToMap( $ectype_ID, "..\Data\Audio\UI\Ectype\madi_04.wav" )
				$player_id = GetEctypeVar( $ectype_ID, 119 )
				$posX = GetPlayerInfo( $player_id, "mapposx" )
				$posY = GetPlayerInfo( $player_id, "mapposy" )
				SetEctypeVar( $ectype_ID, 39, 87 )
				AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
			endif
		endif

	}
	
	function EctypeTime0(){
			
		$ectype_ID = GetEctypeID( -1 , 253 )
		$step = GetEctypeVar( $ectype_ID, 62 )
		$step = $step + 1
		SetEctypeVar( $ectype_ID, 62, $step )
		StartEctypeTimer( $ectype_ID, 9 )
	}
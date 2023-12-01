  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/08/10
	//		Author：刘晓璐
	//		TaskName：Ectype-Titan-Monster-nvwu.s
	//		TaskID：BOSS地狱三女巫
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		$type = GetEctypeVar( -1, 6 )
		
		if $type == 0
			//获得每个队员的ID,不存在的队员ID为-1
			$teamplayer1_id = GetTeamMemberID( -1, 0 )
			$teamplayer2_id = GetTeamMemberID( -1, 1 )
			$teamplayer3_id = GetTeamMemberID( -1, 2 )
			$teamplayer4_id = GetTeamMemberID( -1, 3 )
			$teamplayer5_id = GetTeamMemberID( -1, 4 )
			$teamplayer6_id = GetTeamMemberID( -1, 5 )
		
			//-------------------------------------------------------------------------------------1号
			if $teamplayer1_id != -1
				$map = GetPlayerInfo( $teamplayer1_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//简单模式
						AddPlayerInfo( $teamplayer1_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer1_id, 90126 )
					endif
		
					if $Var == 1
					//普通副本
						AddPlayerInfo( $teamplayer1_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer1_id, 90127 )
					endif
		
					if $Var == 2
					//精英副本
						AddPlayerInfo( $teamplayer1_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer1_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------2号
			if $teamplayer2_id != -1
				$map = GetPlayerInfo( $teamplayer2_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//简单模式
						AddPlayerInfo( $teamplayer2_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer2_id, 90126 )
					endif
		
					if $Var == 1
					//普通副本
						AddPlayerInfo( $teamplayer2_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer2_id, 90127 )
					endif
		
					if $Var == 2
					//精英副本
						AddPlayerInfo( $teamplayer2_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer2_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------3号
			if $teamplayer3_id != -1
				$map = GetPlayerInfo( $teamplayer3_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//简单模式
						AddPlayerInfo( $teamplayer3_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer3_id, 90126 )
					endif
		
					if $Var == 1
					//普通副本
						AddPlayerInfo( $teamplayer3_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer3_id, 90127 )
					endif
		
					if $Var == 2
					//精英副本
						AddPlayerInfo( $teamplayer3_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer3_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------4号
			if $teamplayer4_id != -1
				$map = GetPlayerInfo( $teamplayer4_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//简单模式
						AddPlayerInfo( $teamplayer4_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer4_id, 90126 )
					endif
		
					if $Var == 1
					//普通副本
						AddPlayerInfo( $teamplayer4_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer4_id, 90127 )
					endif
		
					if $Var == 2
					//精英副本
						AddPlayerInfo( $teamplayer4_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer4_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------5号
			if $teamplayer5_id != -1
				$map = GetPlayerInfo( $teamplayer5_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//简单模式
						AddPlayerInfo( $teamplayer5_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer5_id, 90126 )
					endif
		
					if $Var == 1
					//普通副本
						AddPlayerInfo( $teamplayer5_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer5_id, 90127 )
					endif
		
					if $Var == 2
					//精英副本
						AddPlayerInfo( $teamplayer5_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer5_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------6号
			if $teamplayer6_id != -1
				$map = GetPlayerInfo( $teamplayer6_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//简单模式
						AddPlayerInfo( $teamplayer6_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer6_id, 90126 )
					endif
		
					if $Var == 1
					//普通副本
						AddPlayerInfo( $teamplayer6_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer6_id, 90127 )
					endif
		
					if $Var == 2
					//精英副本
						AddPlayerInfo( $teamplayer6_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer6_id, 90128 )
					endif
				endif
			endif
			SetEctypeVar( -1, 6, 1 )
			
//----------掉落开始----------------------在场队员中随机给一个人一件
		$playerD_idsafe = GetPlayerID()
		if $playerD_idsafe < 0
			return
		endif
//------------------------------------------
		$dropitemD = 90134
		$dropitemDbase = 90137
		$droped = 0
		$teamD_count = 0
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		if $teamplayer1_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer1_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer2_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer2_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer3_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer3_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer4_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer4_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer5_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer5_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer6_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer6_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		
		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
		
		$randbuff = RandomNumber( 0 , 59 )
		
				if $randbuff < $maskD2
//-----------------------------------------------------------第1人
					if $teamplayer1_id > 0
						DropMonsterItems($teamplayer1_id, $dropitemD )
						$maskD2 = -9991
						$droped = 1
					else
						$maskD2 = $maskD2 - $maskD
					endif
//-----------------------------------------------------------第1人end
				else
					$maskD2 = $maskD2 + $maskD
					if $randbuff < $maskD2
//-----------------------------------------------------------第2人
						if $teamplayer2_id > 0
							DropMonsterItems($teamplayer2_id , $dropitemD )
							$maskD2 = -9992
							$droped = 2
						else
							$maskD2 = $maskD2 - $maskD
						endif
//-----------------------------------------------------------第2人end
					else
						$maskD2 = $maskD2 + $maskD
						if $randbuff < $maskD2
//-----------------------------------------------------------第3人
							if $teamplayer3_id > 0
								DropMonsterItems($teamplayer3_id , $dropitemD )
								$maskD2 = -9993
								$droped = 3
							else
								$maskD2 = $maskD2 - $maskD
							endif
//-----------------------------------------------------------第3人end
						else
							$maskD2 = $maskD2 + $maskD
							if $randbuff < $maskD2
//-----------------------------------------------------------第4人
								if $teamplayer4_id > 0
									DropMonsterItems($teamplayer4_id , $dropitemD )
									$maskD2 = -9994
									$droped = 4
								else
									$maskD2 = $maskD2 - $maskD
								endif
//-----------------------------------------------------------第4人end
							else
								$maskD2 = $maskD2 + $maskD
								if $randbuff < $maskD2
//-----------------------------------------------------------第5人
									if $teamplayer5_id > 0
										DropMonsterItems($teamplayer5_id , $dropitemD )
										$maskD2 = -9995
										$droped = 5
									else
										$maskD2 = $maskD2 - $maskD
									endif
//-----------------------------------------------------------第5人end
								else						
//-----------------------------------------------------------第6人
									if $teamplayer6_id > 0
										DropMonsterItems($teamplayer6_id , $dropitemD )
										$maskD2 = -9996
										$droped = 6
									else
										$maskD2 = $maskD2 - $maskD
									endif
//-----------------------------------------------------------第6人end
								endif
							endif
						endif
					endif
				endif
				
				if $droped != 1
					if $teamplayer1_id > 0
						DropMonsterItems($teamplayer1_id , $dropitemDbase )
					endif
				endif
				if $droped != 2
					if $teamplayer2_id > 0
						DropMonsterItems($teamplayer2_id , $dropitemDbase )
					endif
				endif
				if $droped != 3
					if $teamplayer3_id > 0
						DropMonsterItems($teamplayer3_id , $dropitemDbase )
					endif
				endif
				if $droped != 4
					if $teamplayer4_id > 0
						DropMonsterItems($teamplayer4_id , $dropitemDbase )
					endif
				endif
				if $droped != 5
					if $teamplayer5_id > 0
						DropMonsterItems($teamplayer5_id , $dropitemDbase )
					endif
				endif
				if $droped != 6
					if $teamplayer6_id > 0
						DropMonsterItems($teamplayer6_id , $dropitemDbase )
					endif
				endif
				
//----------掉落结束-----------------------------------------
			
		endif	
		
		$ectype_type = GetEctypeVar( -1, 2 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 2, $ectype_type )
		
		$ectype_type = GetEctypeVar( -1, 2 )
		if $ectype_type >= 3
			OpenMapMask( 2 )
			StartEctypeTimer( $ectype_ID, 4 )
			StartEctypeTimer( $ectype_ID, 2 )
		endif
		

		
	}
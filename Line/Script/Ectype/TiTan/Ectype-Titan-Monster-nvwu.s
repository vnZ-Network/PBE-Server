  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/08/10
	//		Author�������
	//		TaskName��Ectype-Titan-Monster-nvwu.s
	//		TaskID��BOSS������Ů��
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		$type = GetEctypeVar( -1, 6 )
		
		if $type == 0
			//���ÿ����Ա��ID,�����ڵĶ�ԱIDΪ-1
			$teamplayer1_id = GetTeamMemberID( -1, 0 )
			$teamplayer2_id = GetTeamMemberID( -1, 1 )
			$teamplayer3_id = GetTeamMemberID( -1, 2 )
			$teamplayer4_id = GetTeamMemberID( -1, 3 )
			$teamplayer5_id = GetTeamMemberID( -1, 4 )
			$teamplayer6_id = GetTeamMemberID( -1, 5 )
		
			//-------------------------------------------------------------------------------------1��
			if $teamplayer1_id != -1
				$map = GetPlayerInfo( $teamplayer1_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//��ģʽ
						AddPlayerInfo( $teamplayer1_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer1_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer1_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer1_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer1_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer1_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------2��
			if $teamplayer2_id != -1
				$map = GetPlayerInfo( $teamplayer2_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//��ģʽ
						AddPlayerInfo( $teamplayer2_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer2_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer2_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer2_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer2_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer2_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------3��
			if $teamplayer3_id != -1
				$map = GetPlayerInfo( $teamplayer3_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//��ģʽ
						AddPlayerInfo( $teamplayer3_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer3_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer3_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer3_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer3_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer3_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------4��
			if $teamplayer4_id != -1
				$map = GetPlayerInfo( $teamplayer4_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//��ģʽ
						AddPlayerInfo( $teamplayer4_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer4_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer4_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer4_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer4_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer4_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------5��
			if $teamplayer5_id != -1
				$map = GetPlayerInfo( $teamplayer5_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//��ģʽ
						AddPlayerInfo( $teamplayer5_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer5_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer5_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer5_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer5_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer5_id, 90128 )
					endif
				endif
			endif
			//------------------------------------------------------------------------------------------
			//-------------------------------------------------------------------------------------6��
			if $teamplayer6_id != -1
				$map = GetPlayerInfo( $teamplayer6_id, "mapid" )
				if $map == $ectype_ID
					$Var = GetEctypeVar( -1, 0 )
					if $Var == 0
					//��ģʽ
						AddPlayerInfo( $teamplayer6_id, "exp", 108154 )
						//DropMonsterItems( $teamplayer6_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer6_id, "exp", 144205 )
						//DropMonsterItems( $teamplayer6_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer6_id, "exp", 180256 )
						//DropMonsterItems( $teamplayer6_id, 90128 )
					endif
				endif
			endif
			SetEctypeVar( -1, 6, 1 )
			
//----------���俪ʼ----------------------�ڳ���Ա�������һ����һ��
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
//-----------------------------------------------------------��1��
					if $teamplayer1_id > 0
						DropMonsterItems($teamplayer1_id, $dropitemD )
						$maskD2 = -9991
						$droped = 1
					else
						$maskD2 = $maskD2 - $maskD
					endif
//-----------------------------------------------------------��1��end
				else
					$maskD2 = $maskD2 + $maskD
					if $randbuff < $maskD2
//-----------------------------------------------------------��2��
						if $teamplayer2_id > 0
							DropMonsterItems($teamplayer2_id , $dropitemD )
							$maskD2 = -9992
							$droped = 2
						else
							$maskD2 = $maskD2 - $maskD
						endif
//-----------------------------------------------------------��2��end
					else
						$maskD2 = $maskD2 + $maskD
						if $randbuff < $maskD2
//-----------------------------------------------------------��3��
							if $teamplayer3_id > 0
								DropMonsterItems($teamplayer3_id , $dropitemD )
								$maskD2 = -9993
								$droped = 3
							else
								$maskD2 = $maskD2 - $maskD
							endif
//-----------------------------------------------------------��3��end
						else
							$maskD2 = $maskD2 + $maskD
							if $randbuff < $maskD2
//-----------------------------------------------------------��4��
								if $teamplayer4_id > 0
									DropMonsterItems($teamplayer4_id , $dropitemD )
									$maskD2 = -9994
									$droped = 4
								else
									$maskD2 = $maskD2 - $maskD
								endif
//-----------------------------------------------------------��4��end
							else
								$maskD2 = $maskD2 + $maskD
								if $randbuff < $maskD2
//-----------------------------------------------------------��5��
									if $teamplayer5_id > 0
										DropMonsterItems($teamplayer5_id , $dropitemD )
										$maskD2 = -9995
										$droped = 5
									else
										$maskD2 = $maskD2 - $maskD
									endif
//-----------------------------------------------------------��5��end
								else						
//-----------------------------------------------------------��6��
									if $teamplayer6_id > 0
										DropMonsterItems($teamplayer6_id , $dropitemD )
										$maskD2 = -9996
										$droped = 6
									else
										$maskD2 = $maskD2 - $maskD
									endif
//-----------------------------------------------------------��6��end
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
				
//----------�������-----------------------------------------
			
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
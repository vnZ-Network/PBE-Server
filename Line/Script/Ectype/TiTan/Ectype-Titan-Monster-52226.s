  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/08/10
	//		Author�������
	//		TaskName��Ectype-Titan-Monster-52226.s
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
						AddPlayerInfo( $teamplayer1_id, "exp", 32154 )
						//DropMonsterItems( $teamplayer1_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer1_id, "exp", 39205 )
						//DropMonsterItems( $teamplayer1_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer1_id, "exp", 40256 )
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
						AddPlayerInfo( $teamplayer2_id, "exp", 32154 )
						//DropMonsterItems( $teamplayer2_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer2_id, "exp", 39205 )
						//DropMonsterItems( $teamplayer2_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer2_id, "exp", 40256 )
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
						AddPlayerInfo( $teamplayer3_id, "exp", 32154 )
						//DropMonsterItems( $teamplayer3_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer3_id, "exp", 39205 )
						//DropMonsterItems( $teamplayer3_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer3_id, "exp", 40256 )
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
						AddPlayerInfo( $teamplayer4_id, "exp", 32154 )
						//DropMonsterItems( $teamplayer4_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer4_id, "exp", 39205 )
						//DropMonsterItems( $teamplayer4_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer4_id, "exp", 40256 )
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
						AddPlayerInfo( $teamplayer5_id, "exp", 32154 )
						//DropMonsterItems( $teamplayer5_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer5_id, "exp", 39205 )
						//DropMonsterItems( $teamplayer5_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer5_id, "exp", 40256 )
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
						AddPlayerInfo( $teamplayer6_id, "exp", 32154 )
						//DropMonsterItems( $teamplayer6_id, 90126 )
					endif
		
					if $Var == 1
					//��ͨ����
						AddPlayerInfo( $teamplayer6_id, "exp", 39205 )
						//DropMonsterItems( $teamplayer6_id, 90127 )
					endif
		
					if $Var == 2
					//��Ӣ����
						AddPlayerInfo( $teamplayer6_id, "exp", 40256 )
						//DropMonsterItems( $teamplayer6_id, 90128 )
					endif
				endif
			endif
			SetEctypeVar( -1, 6, 1 )			
					
			$playerid = GetPlayerID()
					$dropitemD1 = 90134
					$dropitemD2 = 90137
					$Cid = 0
					while $Cid < 6
						$teamplayer_id = GetTeamMemberID($playerid,$Cid)
						$lenD = GetPlayerDistance($playerid,$teamplayer_id )
						if $teamplayer_id > 0
							if $lenD < 25
								$Luck1 = RandomNumber(1,100)
								if $Luck1 <= 15 
									DropMonsterItems($teamplayer_id,$dropitemD1)
								else
									DropMonsterItems($teamplayer_id,$dropitemD2)
								endif														
							endif
						endif
						$Cid = $Cid + 1					
					endwhile
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
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/3
	//		Author�����쳽����ϸ������������
	//		TaskName��BOSS
	//		TaskID��52323_3_BOSS.s
	//
	//****************************************
	
	function OnDead(){

		//��¼���������ܻ����
		$playerID = GetPlayerID()
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
//      		$weektask1 = GetPlayerVar($teamplayer_id,3565)
//      		if $weektask1 != 255
//      			SetPlayerVar($teamplayer_id,3565,1)
//      			OpenUI($teamplayer_id,1)
//      		endif
      		$weektask2 = GetPlayerVar($teamplayer_id,3566)
      		if $weektask2 != 255
      			SetPlayerVar($teamplayer_id,3566,1)
      			OpenUI($teamplayer_id,1)
      		endif      		
				endif
			endif
			$Cid = $Cid + 1
		endwhile					
		//��¼���




		
	}
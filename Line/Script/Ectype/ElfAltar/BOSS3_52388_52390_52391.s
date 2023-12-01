	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:???BOSS2???
	//		TaskID:BOSS2_Noob_52384.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)
		$playerID = GetPlayerID()
		
		//????
		SetEctypeVar($ectype_id,51,1)		

		StartEctypeTimer($ectype_id,0)
//		BC( "chat", "player", -1, "GUID:04268000000")

		DeleteMonster($ectype_id,52388)		
		DeleteMonster($ectype_id,52389)	
		DeleteMonster($ectype_id,52390)	
		DeleteMonster($ectype_id,52391)	
		DeleteMonster($ectype_id,52458)
		DeleteMonster($ectype_id,52471)
		
		//??????,?????
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
//      		$weektask1 = GetPlayerVar($teamplayer_id,3567)
//      		if $weektask1 != 255
//      			SetPlayerVar($teamplayer_id,3567,1)
//      		endif
      		$weektask2 = GetPlayerVar($teamplayer_id,3568)
      		if $weektask2 != 255
      			SetPlayerVar($teamplayer_id,3568,1)
      			OpenUI($teamplayer_id,1)
      		endif      		
				endif
			endif
			$Cid = $Cid + 1
		endwhile					
		//????		
		
	}
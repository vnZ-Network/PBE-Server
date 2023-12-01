	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???BOSS???
	//		TaskID:DXLM3-BOSS-Haoxuanwang-51805.s
	//
	//****************************************
	
	
	function OnDead(){
		
  	//???? ??ID 479 ?? 684 ?? 51825
  	$ectype_id = GetEctypeID(-1, 479)		
  
  	BC("screen", "map", $ectype_id, "You can now exit the Pangaea Catacomb through the exit portal.")
  	
  	AddNPC(684, $ectype_id)
  	AddMonsterByFloat( 51825, 1, $ectype_id, 228, 104, 0)
	
		//??????,?????
		$playerID = GetPlayerID()
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
      		$weektask1 = GetPlayerVar($teamplayer_id,3564)
      		if $weektask1 != 255
      			SetPlayerVar($teamplayer_id,3564,1)
      			OpenUI($teamplayer_id,1)
      		endif   		
				endif
			endif
			$Cid = $Cid + 1
		endwhile	
		//????


}
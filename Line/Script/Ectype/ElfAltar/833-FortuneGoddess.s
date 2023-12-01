	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/10
	//		Author:???(??,??,??)
	//		TaskName:???????
	//		TaskID:833-FortuneGoddess.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$count_gold = GetEctypeVar($ectype_id,67)
		$count_gem = GetEctypeVar($ectype_id,68)
		$count_crystal = GetEctypeVar($ectype_id,69)
		$mon_gold = 52437
		$mon_gem = 52459
		$mon_crystal = 52460
		
		$mapX = 108
		$mapY = 55	
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()	
		
		//????????
		if $player_id != $team_headerID
			BC( "chat", "player", -1, "Have your team member go and collect the rewards for everyone!" )
			BC( "screen", "player", -1, "Have your team member go and collect the rewards for everyone!" )
			return
		endif			
		
		$size = GetTeamAreaSize(-1)		
		if $size > 10
			//?????????????
			BC( "chat", "player", -1, "Your party members are too far away from you!" )
			BC( "screen", "player", -1, "Your party members are too far away from you!" )
			return
		endif		
		
		$sum = $count_crystal + $count_gem
		$sum = $sum + $count_gold
		if $sum == 0
			BC( "chat", "player", -1, "The goddess did not heed any of your wishes!" )
			BC( "screen", "player", -1, "The goddess did not heed any of your wishes!" )
			return
		endif
		
		if $count_gold >= $count_gem
			if $count_gold >= $count_crystal
				AddMonsterByFloat($mon_gold,1,$ectype_id,$mapX,$mapY,1,0,0)	
				PlayEffect(0,"common\huodong\aixin\tx_aixin_add01.ini")		
				DeleteNPC(833,-1)
				return
			endif
		endif
		
		if $count_gem >= $count_gold
			if $count_gem >= $count_crystal
				AddMonsterByFloat($mon_gem,1,$ectype_id,$mapX,$mapY,1,0,0)	
				PlayEffect(0,"common\huodong\aixin\tx_aixin_add01.ini")		
				DeleteNPC(833,-1)
				return
			endif
		endif
		
		if $count_crystal >= $count_gem
			if $count_crystal >= $count_gold
				AddMonsterByFloat($mon_crystal,1,$ectype_id,$mapX,$mapY,1,0,0)	
				PlayEffect(0,"common\huodong\aixin\tx_aixin_add01.ini")		
				DeleteNPC(833,-1)
				return
			endif
		endif		
		
//		if $count_gold == $count_gem
//			if $count_gold == $count_crystal
//				$Lucky = RandomNumber(1,3)
//				if $Lucky == 1
//					AddMonsterByFloat($mon_gold,1,$ectype_id,$mapX,$mapY,1,0,0)	
//				endif
//				if $Lucky == 2
//					AddMonsterByFloat($mon_gem,1,$ectype_id,$mapX,$mapY,1,0,0)	
//				endif
//				if $Lucky == 3
//					AddMonsterByFloat($mon_crystal,1,$ectype_id,$mapX,$mapY,1,0,0)	
//				endif
//			endif
//		endif	
	
		
		
		

}
	
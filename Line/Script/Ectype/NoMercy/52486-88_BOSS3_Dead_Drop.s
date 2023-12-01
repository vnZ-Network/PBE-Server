	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11
	//		Author:???(??,??,??)
	//		TaskName:??????BOSS2-???
	//		TaskID:52483-85_BOSS2_Dead_Drop.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 566

		$ectype_id = GetEctypeID(-1, 566)
		$Kind = GetEctypeVar(-1,99)
		
		
//		$playerid = GetEctypeVar(-1,110)
//		$dropitemD = 90228
//		
//		DropMonsterItems($playerid,$dropitemD)		
				

		StartEctypeTimer($ectype_id,0)
		BC("screen","map",$ectype_id,"The Siren Raidne has been defeated.")
		
//--------------????------------------------------		
		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
		$dropitemD = 90215
		$Kind = GetEctypeVar(-1,99)
		if $Kind >= 1
			$dropitemDbase = 90216
		else
			$dropitemDbase = 90241
		endif	
		$dropitemD1 = 90230

		$teamD_count = 0
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
			$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
					$teamD_count = $teamD_count + 1
				endif
			endif
			$Cid = $Cid + 1
		endwhile
		
		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
		$randbuff = RandomNumber( 0 , 59 )

		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
  				if $randbuff < $maskD2
  					//???? ???BOSS 20%??
  					if $Kind < 1
  						$Luck = RandomNumber(1,100)
  						if $Luck < 20
  							DropMonsterItems($teamplayer_id,$dropitemD)
  						endif
  					//???? 100%
  					else
  						DropMonsterItems($teamplayer_id,$dropitemD)
  					//????
  						$Luck1 = RandomNumber(1,100)
  						if $Luck1 < 50
  							DropMonsterItems($teamplayer_id,$dropitemD1)
  						endif
  					endif
  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					$maskD2 = -999
  				else
  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					$maskD2 = $maskD2 + $maskD
  				endif
				endif
			endif
			$Cid = $Cid + 1
		endwhile		
//----------------------????--------------------		


		
	}
	
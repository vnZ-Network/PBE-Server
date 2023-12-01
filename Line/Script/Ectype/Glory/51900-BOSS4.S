	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:??????
	//		TaskID:51900-BOSS4.S
	//
	//****************************************
	
	function OnDead(){

		$ectype_id = GetEctypeID(-1, 532)
		$is_summon = GetEctypeVar(-1, 20)
		$npc = 749
		
		if $is_summon > 0
			return
		else
			AddNPC($npc,$ectype_id)
			PlayEffect(0,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini")				
//---------------------????------------------------------
		//??BOSS???? ???? 62595   2???? 59838 ???? 9 ???? 44118 ???? 59101

			$playerID = GetPlayerID()
			if $playerID < 0
				return
			endif
//------------------------------------------
  		$droppet = 62595
			$dropmat = 44118
  		$dropmoney = 59101
  
  		$jackpot = RandomNumber( 1 , 15000 )
  
  		$Cid = 0
  		while $Cid < 6
  			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
  			if $teamplayer_id > 0
  				if $jackpot == 1
  					#name = GetPlayerInfo( -1, "name" )
  					AddPlayerInfo($teamplayer_id,"item",$droppet, 1)
  					BC( "screen", "player", -1, "Congratulations, you get a Darknight Rose Pet Egg!" )
            BC( "screen", "server", -1, "The hero ",#name,"Thanks for saving the Darknight Rose in the Radiant Temple. You get a Darknight Rose Pet Egg!" )
  				endif
  				if $jackpot < 2501
  					if $jackpot >= 2
  						AddPlayerInfo($teamplayer_id,"item",$dropmat, 1)
  						BC( "screen", "player", -1, "Congratulations, you get the Destroyed Heart!" )
  					endif
  				else
  					AddPlayerInfo($teamplayer_id,"item",$dropmoney, 1)
  					BC( "screen", "player", -1, "Congratulations, you get the Coins Pack!" )
  				endif		
  			endif
  			$Cid = $Cid + 1
  		endwhile		
//----------------------????--------------------	
			SetEctypeVar(-1, 20, 1)
		endif
		

	}
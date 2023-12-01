	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:51860-Boss3.s
	//
	//****************************************
	
	function OnDead(){

		$ectype_id = GetEctypeID(-1, 532)
//		$is_summon = GetEctypeVar(-1, 21)
		
		if $is_summon > 0
			return
		else
			AddNPC(747, $ectype_id)
			PlayEffect(0,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini")
		endif
		
//		BC("screen","map",$ectype_id,"GUID:04367000000")
		
//--------------????------------------------------
		//??boss????? ????? 90155   ????? 90159

		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
		$dropitemD = 90155
		$dropitemDbase = 90163
		//$droped = 0
		//$droped2 = 0
		$teamD_count = 0
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
			$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
					$teamD_count = $teamD_count + 1
				endif
			endif
			$Cid = $Cid + 1
		endwhile

		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
		$randbuff = RandomNumber( 0 , 59 )
//		BC("chat","server",-1,"teamD_count = ",$teamD_count)
		$Cid = 0
		while $Cid < 6
//			BC("chat","server",-1,"Cid = ",$Cid)
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
  				if $randbuff < $maskD2
//  					#name = GetPlayerInfo( $teamplayer_id, "name" )
// 						BC( "screen", "server", -1, "GUID:04367000001",#name,"GUID:04367000002" )
// 						BC( "chat", "server", -1, "teamplayer_id = ",$teamplayer_id)
// 						BC( "chat", "server", -1, "dropitemD = ",$dropitemD)
  					DropMonsterItems($teamplayer_id,$dropitemD)
  					$maskD2 = -999
  					//$droped1 = $Cid
  				else
// 						BC( "chat", "server", -1, "teamplayer_id = ",$teamplayer_id)
// 						BC( "chat", "server", -1, "dropitemDbase = ",$dropitemDbase)
  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					$maskD2 = $maskD2 + $maskD
  				endif
  			endif
			endif
			$Cid = $Cid + 1
		endwhile		
//----------------------????--------------------	
		
		SetEctypeVar(-1, 21, 1)
		
	}
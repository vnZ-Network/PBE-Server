	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:52298_mon2_2_2ss.s
	//
	//****************************************
	
	
	function OnDead(){

	$ectype_id = GetEctypeID(-1, 540)
	//??????	
	$sec = GetSystemTime("second")
	$min = GetSystemTime("minute")
	$hou = GetSystemTime("hour")		
	$start = GetEctypeVar(-1,110)
	$number = GetEctypeVar(-1, 14)
	//??????,????????,????,?????????24??,?86400?
	$lastday = GetEctypeVar(-1, 97)
	$nowday = GetSystemTime("yday")
	
	//????????
	$total = GetEctypeVar(-1, 98)
	$total = $total + 1
	SetEctypeVar(-1, 98, $total)
//	BC( "screen", "player", -1, "GUID:04386000000"$total)
	
	$number = $number + 1
	SetEctypeVar(-1, 14, $number)

	$mon3_1 = 52298

	//----------????---------------------------	
	$a = $min * 60
	$b = $hou * 3600
	$c = $b + $a
	$c = $c + $sec
	
	//????
	if $lastday != $nowday	
		$c = $c + 86400
	endif

	$minus = $c - $start
//	BC( "screen", "player", -1, "GUID:04386000001"$minus)
	
	if $minus < 121
		$last = 0
	endif
	
	if $minus >= 121
		if $minus < 241
			$last = 1
		endif
	endif
	
	if $minus >= 241
		if $minus < 361
			$last = 2
		endif
	endif
	
	if $minus >= 361
		$last = 3
	endif

//----------------------????--------------------	
	$number = GetEctypeVar(-1, 14)
//	BC( "screen", "player", -1, "GUID:04386000002"$number)
	if $number == 10
		if $minus <= 360
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 98, 128, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 116, 128, 1 ,0 ,0 )

  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 106, 118, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 108, 138, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 100, 136, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 100, 136, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 115, 118, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 115, 135, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 112, 135, 1 ,0 ,0 ) 	
  	
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 101, 120, 1 ,0 ,0 )
  	BC( "screen", "player", -1, "The second wave of sealed monsters appears")
	  endif
	endif
	
	if $number == 20
		if $minus <= 360
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 98, 128, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 116, 128, 1 ,0 ,0 )

  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 106, 118, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 108, 138, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 100, 136, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 100, 136, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 115, 118, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 115, 135, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 112, 135, 1 ,0 ,0 ) 	
  	
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 101, 120, 1 ,0 ,0 )
  	BC( "screen", "player", -1, "The third wave of sealed monsters appears")
	  endif
	endif	

	if $number == 30
		if $minus <= 360
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 98, 128, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 116, 128, 1 ,0 ,0 )

  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 106, 118, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 108, 138, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 100, 136, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 100, 136, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 115, 118, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 115, 135, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 112, 135, 1 ,0 ,0 ) 	
  	
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 101, 120, 1 ,0 ,0 )
  	BC( "screen", "player", -1, "The fourth wave of sealed monsters appears")
	  endif
	endif
	
	if $number == 40
		BC( "screen", "player", -1, "Awesome! All sealed monsters have been eliminated!")
	endif

//----------------------????--------------------

//--------------????------------------------------
		//???? 90164   ???? 90165 ? 90166 ? 90167

		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------		

	//??10????????????10%
	if $number > 10
		$a = RandomNumber(1,30)
		if $a > 1
			return
		endif
	endif

//?????????
		$dropitemD = 90164 + $last
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
//		BC("screen","map", $ectype_id, "",$teamD_count)
		
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
  					#name = GetPlayerInfo( $teamplayer_id, "name" )
// 						BC( "screen", "map", -1, "GUID:04386000007",#name,"GUID:04386000008" )	
  					DropMonsterItems($teamplayer_id,$dropitemD)
  					$maskD2 = -999
  					//$droped1 = $Cid
  				else
//  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					$maskD2 = $maskD2 + $maskD
  				endif
				endif
			endif
			$Cid = $Cid + 1
		endwhile		
//----------------------????--------------------	



}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/12/26
	//		Author:??
	//		TaskName:
	//		TaskID:????
	//
	//****************************************
	
	
	function OnUseItem(){
	$mapid = GetPlayerInfo(-1, "mapid")
	$n = $mapid - 15001
	$n = $n / 100
	$n = $n + 1000
	$Uid = GetEctypeUniqueID(-1 , $n)
	$playerUid = GetPlayerVar(-1 , 3843 )
	
	//????
  $day = GetSystemTime( "mday" )
  $monthsys = GetSystemTime( "month" )
	$i = GetPlayerInfo(-1, "item", 44612)
	if $i < 1
		return
	endif
	//??????
	$mday = GetPlayerVar(-1, 3446 )
	$month = GetPlayerVar(-1, 3447 ) 
	$time = GetPlayerVar(-1, 3448 )
	if $day == $mday
		if $monthsys == $month
			if $time >= 2
				BC("screen","player",-1,"Can only be used twice per day!")
				return
			endif
		endif
	endif
	if $day != $mday
		SetPlayerVar( -1, 3446, $day )
		SetPlayerVar( -1, 3447, $monthsys )
		SetPlayerVar( -1, 3448, 0 )
		$time = 0
	endif
	if $monthsys != $month
		SetPlayerVar( -1, 3446, $day )
		SetPlayerVar( -1, 3447, $monthsys )
		SetPlayerVar( -1, 3448, 0 )
		$time = 0
	endif
	
	//15101-25100??

//	15101
//	25100
	if $mapid < 15101
		BC("screen","player",-1,"Can only be used in the Endless Stairs!")
		return
	endif
	if $mapid > 25100
		BC("screen","player",-1,"Can only be used in the Endless Stairs!")
		return
	endif
	
		//??????????,????
//		BC("screen","player",-1,"$Uid=",$Uid,"playerUid=",$playerUid )
		if $Uid != $playerUid
			SetPlayerVar(-1, 3843, $Uid)
			SetPlayerVar(-1, 3454, 0)
		else
			$maptime = GetPlayerVar(-1, 3454 )
			if $maptime > 1
				BC("screen","player",-1,"Special potions can only be used twice in the Endless Stairs per day.")
				return
			endif
		endif	
		
//	$result = UseSkill(-1, 3781, 1)
//	if $result == 0
//		$maptime = $maptime + 1
//		SetPlayerVar(-1, 3454, $maptime)		
//		//????,????????
//		SubPlayerInfo(-1, "item", 44612, 1)
//		PlayEffect( -1, "common\shengji\tx_shengji_fire.ini", 0 )
//		$time = $time + 1
//		SetPlayerVar(-1, 3448, $time)
//		return
//	endif		
//	BC("screen","player",-1,"GUID:06271000004")
		$result = SubPlayerInfo(-1, "item", 44612, 1)
		if $result == 0
			$maxhp = GetPlayerInfo(-1, "maxhp" )
			$maxmp = GetPlayerInfo(-1, "maxmp" )
			AddPlayerInfo(-1, "hp", $maxhp )
			AddPlayerInfo(-1, "mp", $maxmp )
			AddPlayerInfo(-1, "xp", 1000 )
			PlayEffect( -1, "common\shengji\tx_shengji_fire.ini", 0 )
			$maptime = $maptime + 1
			SetPlayerVar(-1, 3454, $maptime)
			$time = $time + 1
			SetPlayerVar(-1, 3448, $time)
		endif
	}
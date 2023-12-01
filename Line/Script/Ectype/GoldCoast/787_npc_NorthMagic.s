	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:787_npc_NorthMagic.s
	//
	//****************************************
	
	function OnRequest(){

		$is_summon = GetEctypeVar( -1 , 3 )
		$time = GetEctypeVar(-1,4)

		if $is_summon > 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif	
		
		if $time >= 10
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
		endif


}
	
	function OnOption0(){

	//????
	$ectype_id = GetEctypeID(-1, 540)
	$is_summon = GetEctypeVar(-1, 3)
	$mon3_1 = 52298
	$mon3_2 = 52299
	$mon3_talk = 52300

	//?????????????
	$day = GetSystemTime("yday")
	SetEctypeVar(-1, 97, $day)
	
	$sec = GetSystemTime("second")
	$min = GetSystemTime("minute")
	$hou = GetSystemTime("hour")
	
	$is_summon = GetEctypeVar(-1, 3)
	if $is_summon > 0
		BC( "screen", "map", -1, "Eliminate the monsters quickly! The faster you go, the better the reward." )
		return
	else
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 97, 128, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 117, 128, 1 ,0 ,0 )

  	AddMonsterByFloat( $mon3_2 , 1, $ectype_id, 105, 117, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_2 , 1, $ectype_id, 108, 140, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_2 , 1, $ectype_id, 100, 138, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_2 , 1, $ectype_id, 100, 118, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_2 , 1, $ectype_id, 115, 118, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_2 , 1, $ectype_id, 115, 138, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_2 , 1, $ectype_id, 112, 135, 1 ,0 ,0 ) 	
  	
  	AddMonsterByFloat( $mon3_talk , 1, $ectype_id, 101, 120, 1 ,0 ,0 )
		
		SetEctypeVar(-1, 3, 1)

		$a = $min * 60
		$b = $hou * 3600
		$c = $b + $a
		$c = $c + $sec
		SetEctypeVar(-1, 110, $c)
//		BC( "screen", "player", -1, "GUID:04404000001"$c)
	endif
		
}

	function OnOption1(){
		
		$ectype_id = GetEctypeID(-1, 540)
		$point = GetEctypeVar(-1, 5)
		$time = GetEctypeVar(-1,4)
		//??id
		$item_1 = 59944
		$item_2 = 59945
		$item_3 = 59946
		$item_4 = 59947
		//??
		$gold = 20
		$silver = 11
		$copper = 6
		$iron = 4
		//??
		$sec = GetSystemTime("second")
		$min = GetSystemTime("minute")
		$hou = GetSystemTime("hour")
		
		$a = $min * 60
		$b = $hou * 3600
		$c = $b + $a
		$c = $c + $sec	
		SetEctypeVar(-1, 6, $c)

		//???????
		$count_1 = GetPlayerInfo(-1,"item",$item_1)
		$count_2 = GetPlayerInfo(-1,"item",$item_2)
		$count_3 = GetPlayerInfo(-1,"item",$item_3)
		$count_4 = GetPlayerInfo(-1,"item",$item_4)
		
		$is_have = $count_1 + $count_2
		$is_have = $is_have + $count_3
		$is_have = $is_have + $count_4
		
		if $is_have <= 0
			BC( "dialogbox", "player", -1, "You don't have a key to break the seal.")
			return
		endif

		//??????????		
		$revaluet_1 = SubPlayerInfo(-1,"item",$item_1,1)
		if $revaluet_1 == 0
			$point = $point + $gold
			SetEctypeVar(-1, 5, $point)
			$time = $time + 1
			SetEctypeVar(-1, 4, $time)
			BC( "screen", "player", -1, "Golden Book of Magic is taking effect, the power for breaking seal is "$point)
		else
			$revaluet_2 = SubPlayerInfo(-1,"item",$item_2,1)
			if $revaluet_2 == 0
				$point = $point + $silver
				SetEctypeVar(-1, 5, $point)
				$time = $time + 1
				SetEctypeVar(-1, 4, $time)
				BC( "screen", "player", -1, "Silver Book of Magic is taking effect, the power for breaking seal is "$point)
			else
				$revaluet_3 = SubPlayerInfo(-1,"item",$item_3,1)
				if $revaluet_3 == 0
					$point = $point + $copper
					SetEctypeVar(-1, 5, $point)
					$time = $time + 1
					SetEctypeVar(-1, 4, $time)
					BC( "screen", "player", -1, "Bronze Book of Magic is taking effect, the power for breaking seal is "$point)
				else 
					$revaluet_4 = SubPlayerInfo(-1,"item",$item_4,1)
					if $revaluet_4 == 0
						$point = $point + $iron
						SetEctypeVar(-1, 5, $point)
						$time = $time + 1
						SetEctypeVar(-1, 4, $time)
						BC( "screen", "player", -1, "Iron Book of Magic is taking effect, the power for breaking seal is "$point)
					else
						BC( "dialogbox", "player", -1, "You don't have a key to break the seal.")
					endif
				endif
			endif
		endif

		$time = GetEctypeVar(-1,4)
		if $time == 10
			BC( "screen", "map", -1, "You got all the keys for breaking the seal and can start now.")
		endif

}

	function OnOption2(){
		
		$ectype_id = GetEctypeID(-1, 540)
		$point = GetEctypeVar(-1, 5)
		$is_ss = GetEctypeVar(-1,20)
		$time = GetEctypeVar(-1,4)

		$mon_ss = 52308
		$mon_s = 52309
		$mon = 52310
		
		$mon3_1 = 52298
		
		$ss = 11
		$s = 5
		$normal = 1
		
		if $is_ss > 0
			BC( "dialogbox", "player", -1, "The seal has been broken, only the pillar remains.")
			return
		endif

		$time = GetEctypeVar(-1,4)
		if $time < 10
			BC( "screen", "player", -1, "Not enough keys to break the seal.")
			return
		endif
		
		if $point >= 195
			AddMonsterByFloat( $mon_ss, 1, $ectype_id, 108,129,1)
			SetEctypeVar(-1, 20, $ss)
			BC( "screen", "player", -1, "SS class monsters are appearing.")
		endif
		
		if $point < 195
			if $point >= 150
				AddMonsterByFloat( $mon_s, 1, $ectype_id, 108,129,1)
				SetEctypeVar(-1, 20, $s)
				BC( "screen", "player", -1, "S class monsters are appearing.")				
			endif
		endif
		
		if $point < 150
			AddMonsterByFloat( $mon, 1, $ectype_id, 108,129,1)
			SetEctypeVar(-1, 20, $normal)	
			BC( "screen", "player", -1, "Normal class monsters are appearing.")
		endif
		
		//???????,??????
		DeleteMonster($ectype_id, $mon3_1)
		
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		DeleteNPC(787,-1)	
		
		
}
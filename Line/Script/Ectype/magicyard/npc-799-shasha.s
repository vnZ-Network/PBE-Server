	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-03
	//		Author:???
	//		TaskName:????
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){

		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID($playerid,557)
		
		//?????????,????????
//		0=??????	
//		1=??-[?????]	
//		2=???????	
//		3=???????

		$IsTaskAccept1844 = IsTaskAccept($playerid,1844)
		if $IsTaskAccept1844 == 0
			$key = 1
			$PL_status = GetEctypeVar($ectype_id,$key)
			if $PL_status == 0
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
			endif
			if $PL_status == 1
				DisableNpcOption(0)
				DisableNpcOption(2)
			endif
			if $PL_status == 2
				DisableNpcOption(0)
				DisableNpcOption(2)
				DisableNpcOption(3)
			endif
			if $PL_status == 3
				DisableNpcOption(0)
				DisableNpcOption(3)
			endif
		else
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(3)
		endif


		
		
	}


	function OnOption0(){
		//????
		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID($playerid,557)
		
		$PL_status = GetEctypeVar($ectype_id,1)
		if $PL_status == 0
			$key = 1
			SetEctypeVar($ectype_id,$key,1)
			$randombuff = RandomNumber(1,3)
			if $randombuff == 1
				call mode_a()
				return
			endif
			if $randombuff == 2
				call mode_b()
				return
			endif
			if $randombuff == 3
				call mode_c()
				return
			endif
		endif
		
	}

	function OnOption1(){
		//?????? 12845	?????
		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID($playerid,557)
		$PL_status = GetEctypeVar($ectype_id,1)
		if $PL_status == 0
			BC("dialogbox","player",-1,"Well...")
		endif
		if $PL_status == 1
			BC("dialogbox","player",-1,"You still don't solve the problem that I gave you.")
		endif
		if $PL_status == 2
			$nullitem = GetPlayerInfo($playerid,"nullitem",0)
			if $nullitem < 1
				BC("dialogbox","player",-1,"Insufficient bag slots!")
				return
			endif
			AddPlayerInfo($playerid,"item",12845,1)
			BC("dialogbox","player",-1,"Keep it. You should come back tomorrow. ")
			SetEctypeVar($ectype_id,1,3)
		endif
		if $PL_status == 3
			$result = HaveTitle( -1, 18 )
			if $result == 0
				BC("dialogbox","player",-1,"Don't look at me like that.")
			else
				BC("dialogbox","player",-1,"I gave you the certification already. If you're looking for a date, come back when you're a Conjurer. ")
			endif
		endif

	}


	function OnOption2(){
		//???????
		FlyToMap(-1,475,83,33)
	}
	function OnOption3(){
		//???????
		FlyToMap(-1,475,83,33)
	}
	
	
	
	function mode_a(){
		
		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID($playerid,557)
		$ox = 152
		$oy = 135
		$a = 0
		$b = 0
		$firemon_count = 0
		while $a < 5
			while $b < 4
				$posxadd = $a * 6
				$posyadd = $b * 5
				$posx = $ox + $posxadd
				$posy = $oy + $posyadd
				$randombuff = RandomNumber(1,4)
				if $a == 5
					if $b == 4
						if $firemon_count == 0
							$randombuff = 4
						endif
					endif
				endif
				if $randombuff == 4
					AddMonsterByFloat(52352,1,$ectype_id,$posx,$posy,0,0,90)
					$firemon_count += 1
				else
					AddMonsterByFloat(52351,1,$ectype_id,$posx,$posy,0,0,90)
				endif
				$b += 1
			endwhile
			$a += 1
			$b = 0
		endwhile
		SetEctypeVar($ectype_id,2,$firemon_count)
		BC("dialogbox","player",-1,"Please finish them all. ",$firemon_count,"Only kill the fiery Scorching Soldier!\n\nWarning: If you kill the wrong Scorching Soldier, there will be serious consequences!")
		SetEctypeVar($ectype_id,4,1)
		SetEctypeVar($ectype_id,20,1)
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
	}
	
	function mode_b(){
		
		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID($playerid,557)
		BC("dialogbox","player",-1,"Please help me collect all the Sacred Beams!\n\nWarning: Watch out for the Ghosts.")
		$ox = 184
		$oy = 129
		$randx = RandomNumber(0,24)
		$randy = RandomNumber(0,38)
		$posx = $ox + $randx
		$posy = $oy + $randy
		AddMonsterByFloat(52356,1,$ectype_id,$posx,$posy,0)
		SetEctypeVar($ectype_id,7,$posx)
		SetEctypeVar($ectype_id,8,$posy)
		$max_light = RandomNumber(12,20)
		SetEctypeVar($ectype_id,9,$max_light)
		SetEctypeVar($ectype_id,6,1)
		StartEctypeTimer($ectype_id,9)
		
	}
	
	
	function mode_c(){
		
		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID($playerid,557)
		BC("dialogbox","player",-1,"Choose your opponent.\n\nYou must successfully challenge one of the 3 bosses to pass this test.")
		$posx = 13300 / 256
		$posy = 15000 / 256
		FlyToMap(-1,$ectype_id,$posx,$posy)
		SetEctypeVar($ectype_id,11,1)
		
		
	}
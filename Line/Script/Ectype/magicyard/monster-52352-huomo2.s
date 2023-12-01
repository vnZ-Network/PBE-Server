  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-3
	//		Author: ???
	//		TaskName:
	//		TaskID:   ????
	//****************************************

	function OnDead(){
	
		$ectype_id = GetEctypeID(-1,557)
		$max = GetEctypeVar($ectype_id,2)
		$loop = GetEctypeVar($ectype_id,4)
		$count = GetEctypeVar($ectype_id,3)
		$count = $count + 1
		SetEctypeVar($ectype_id,3,$count)
		
		BC("screen","player",-1,"Current Round: ",$loop,"; Target: ",$count,"/",$max)
		if $count == $max
			if $loop == 3
				$loop = $loop + 1
				SetEctypeVar($ectype_id,4,$loop)
				SetEctypeVar($ectype_id,1,2)
				SetEctypeVar($ectype_id,2,0)
				SetEctypeVar($ectype_id,3,0)
				SetEctypeVar($ectype_id,20,0)
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
				BC("dialogbox","player",-1,"Satha:\nWell done. You have completed the test of Magic Academy, please come and receive your certification. ")
				DeleteMonster($ectype_id,52351)
				DeleteMonster($ectype_id,52352)
				DeleteMonster($ectype_id,52353)
			endif
			if $loop == 2
				DeleteMonster($ectype_id,52351)
				DeleteMonster($ectype_id,52352)
				DeleteMonster($ectype_id,52353)
				$loop = $loop + 1
				$ox = 151
				$oy = 133
				$a = 0
				$b = 0
				$firemon_count = 0
				while $a < 7
					while $b < 6
						$posxadd = $a * 4
						$posyadd = $b * 3
						$posx = $ox + $posxadd
						$posy = $oy + $posyadd
						$randombuff = RandomNumber(1,4)
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
				SetEctypeVar($ectype_id,4,$loop)
				SetEctypeVar($ectype_id,3,0)
				BC("screen","player",-1,"Round ",$loop,"Scorching Soldiers are appearing. ")
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
			if $loop == 1
				DeleteMonster($ectype_id,52351)
				DeleteMonster($ectype_id,52352)
				DeleteMonster($ectype_id,52353)
				$loop = $loop + 1
				$ox = 151
				$oy = 133
				$a = 0
				$b = 0
				$firemon_count = 0
				while $a < 6
					while $b < 5
						$posxadd = $a * 5
						$posyadd = $b * 4
						$posx = $ox + $posxadd
						$posy = $oy + $posyadd
						$randombuff = RandomNumber(1,4)
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
				SetEctypeVar($ectype_id,4,$loop)
				SetEctypeVar($ectype_id,3,0)
				BC("screen","player",-1,"Round ",$loop,"Scorching Soldiers are appearing. ")
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
		endif
		

	
	}





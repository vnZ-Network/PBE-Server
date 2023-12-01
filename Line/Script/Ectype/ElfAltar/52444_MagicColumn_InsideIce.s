	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8
	//		Author:???(??,??,??)
	//		TaskName:??? ????
	//		TaskID:52443_MagicColumn_InsideFire.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541

		$ectype_id = GetEctypeID(-1, 541)
		
		//??????????????,??????,???
		
		$Status = GetEctypeVar($ectype_id,74)
		
		DeleteMonster($ectype_id,52447)
		
		if $Status == 1
			$number = GetEctypeVar($ectype_id,70)
			BC("screen","map",$ectype_id,"Congratulations! You eradicated all ice magic!")
			PlayEffect(0,"common\story\seelbreak2\fire\tx_seelbreak2_fire.ini")
			$number = $number + 1
			SetEctypeVar($ectype_id,70,$number)
			if $number == 3
				AddNPC(829,-1)
			endif			
		else	
			$monsterID_InsideI = 52444
			$monsterID_OutsideI = 52447
			AddMonsterByFloat($monsterID_InsideI,1,$ectype_id,192,141,1,0 ,45 )
			AddMonsterByFloat($monsterID_OutsideI,1,$ectype_id,216,104,1,0,0)
			SetEctypeVar($ectype_id,74,0)
			SetEctypeVar($ectype_id,117, 0)
			SetEctypeVar($ectype_id,78,100)
			BC("screen","map",$ectype_id,"Because ice magic hasn't been completely eradicated by everyone, it has been restored back to life!")			
			PlayEffect(0,"common\banshen\fire\particle\tx_common_banshen_dimian_1.ini")
		endif 

		
		
	}
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
		
		$Status = GetEctypeVar($ectype_id,75)
		
		DeleteMonster($ectype_id,52448)
		
		if $Status == 1
			$number = GetEctypeVar($ectype_id,70)
			BC("screen","map",$ectype_id,"Congratulations! You eradicated all the Elf magic!")
			PlayEffect(0,"common\shenshengyiji\tx_shenshengyiji_fire.ini")
			$number = $number + 1
			SetEctypeVar($ectype_id,70,$number)
			if $number == 3
				AddNPC(829,-1)
			endif			
		else	
			$monsterID_InsideS = 52445
			$monsterID_OutsideS = 52448
			AddMonsterByFloat($monsterID_InsideS,1,$ectype_id,206,141,1,0 ,135 )	
			AddMonsterByFloat($monsterID_OutsideS,1,$ectype_id,226,104,1,0,0)
			SetEctypeVar($ectype_id,75,0)
			SetEctypeVar($ectype_id,116, 0)
			SetEctypeVar($ectype_id,79,100)
			BC("screen","map",$ectype_id,"Because nature magic hasn't been completely eradicated by everyone, it has manifest back to life!")
			PlayEffect(0,"common\banshen\fire\particle\tx_common_banshen_dimian_1.ini")
		endif 

		
		
	}
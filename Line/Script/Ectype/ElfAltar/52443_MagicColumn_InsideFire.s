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
		//?:?????,????
		//?:??,???
		//??:??,???
		
		$count = GetEctypeVar($ectype_id,73)
		
		if $count < 1
			$monsterID_InsideF = 52443
			$monsterID_OutsideF = 52446
			AddMonsterByFloat($monsterID_InsideF,1,$ectype_id,191,127,1,0 ,135 )	
			AddMonsterByFloat($monsterID_OutsideF,1,$ectype_id,206,104,1,0,0)
			SetEctypeVar($ectype_id,73,0)
			SetEctypeVar($ectype_id,118, 0)
			SetEctypeVar($ectype_id,77,100)
			BC("screen","map",$ectype_id,"Because fire magic hasn't been completely eradicated on both sides, it has blazed back to life!")
			PlayEffect(0,"common\banshen\fire\particle\tx_common_banshen_dimian_1.ini")
		else	
			$number = GetEctypeVar($ectype_id,70)
			BC("screen","map",$ectype_id,"Congratulations! You eradicated all fire magic!")
			PlayEffect(0,"common\story\seelbreak1\fire\tx_seelbreak1_fire.ini")
			$number = $number + 1
			SetEctypeVar($ectype_id,70,$number)
			if $number == 3
				AddNPC(829,-1)
			endif
		endif 

		
		
	}
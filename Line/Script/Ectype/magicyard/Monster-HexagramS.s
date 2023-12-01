  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-3
	//		Author: ???
	//		TaskName:
	//		TaskID:   ????boss3S
	//****************************************

	function OnDead(){
	
		$ectype_id = GetEctypeID(-1,557)
		$count = GetEctypeVar($ectype_id,12)
		$count = $count + 1
		SetEctypeVar($ectype_id,12,$count)
		SetEctypeVar($ectype_id,11,2)
		
		
		BC("screen","player",-1,"You have killed the ",$count," mechanical monsters, the target is  ",$count,"/3")
		if $count == 3
			SetEctypeVar($ectype_id,1,2)
			BC("dialogbox","player",-1,"Satha:\nWell done. You have completed the test of Magic Academy, please come and receive your certification. ")
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			$del_mon_id = 52357
			while $del_mon_id <= 52368
			DeleteMonster($ectype_id,$del_mon_id)
				$del_mon_id += 1
			endwhile
		endif


	
	}





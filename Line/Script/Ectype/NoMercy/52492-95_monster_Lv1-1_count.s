	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11
	//		Author:???(??,??,??)
	//		TaskName:????????????
	//		TaskID:52492-95_monster_Lv1-1_count.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 566

		$ectype_id = GetEctypeID(-1, 566)

		$count = GetEctypeVar(-1,11)
		$count = $count + 1
		SetEctypeVar($ectype_id,11,$count)
		
		//???????
		$count1 = $count
		
		
//		$playerid = GetEctypeVar(-1,110)
//		$dropitemD = 90228
//		
//		DropMonsterItems($playerid,$dropitemD)		
				
		
		if $count == 15
			SetEctypeVar($ectype_id,0,1)
			StartEctypeTimer($ectype_id,0)
		endif
		
		if $count == 30
			SetEctypeVar($ectype_id,0,1)
			StartEctypeTimer($ectype_id,0)
		endif

		if $count == 45
			SetEctypeVar($ectype_id,0,1)
			StartEctypeTimer($ectype_id,0)
		endif
		
		if $count == 60
			SetEctypeVar($ectype_id,0,2)
			StartEctypeTimer($ectype_id,0)
		endif				

		
		
		if $count1 <= 15
			BC("screen","map",$ectype_id,"Heartless Canyon Guardian ",$count1,"/15")
		endif		
		if $count1 > 15
			if $count1 <= 30
				$count1 -= 15
				BC("screen","map",$ectype_id,"Heartless Canyon Guardian ",$count1,"/15")	
			endif
		endif
		if $count1 > 30
			if $count1 <= 45			
				$count1 -= 30
				BC("screen","map",$ectype_id,"Heartless Canyon Guardian ",$count1,"/15")	
			endif
		endif
		if $count1 > 45 
			if $count1 <= 60		
				$count1 -= 45
				BC("screen","map",$ectype_id,"Heartless Canyon Guardian ",$count1,"/15")	
			endif	
		endif	
		
		if $count == 15
			BC("screen","map",$ectype_id,"The next wave of Heartless Canyon Guardians will appear.")
		endif
		
		if $count == 30
			BC("screen","map",$ectype_id,"The next wave of Heartless Canyon Guardians will appear.")
		endif

		if $count == 45
			BC("screen","map",$ectype_id,"The next wave of Heartless Canyon Guardians will appear.")
		endif

			
		

		
	}
	
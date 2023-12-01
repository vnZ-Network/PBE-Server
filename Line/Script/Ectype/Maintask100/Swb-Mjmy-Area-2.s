	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/3/13
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºSwb-Mjmy-Area-2.s
	//		TaskID£º  
	//****************************************
	
	function EnterArea(){
	
		$Accept = IsTaskAccept( -1 , 209 )
		if $Accept != 0
			return
		endif
		$ectype_id = GetEctypeID( -1 , 254 )
		
		$round = GetEctypeVar($ectype_id , 11 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 514 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 12 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 515 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 13 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 516 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 14 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 517 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 15 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 518 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 16 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 519 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 17 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 520 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 18 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 521 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		


	}

	function LeaveArea(){
	
		$Accept = IsTaskAccept( -1 , 209 )
		if $Accept != 0
			return
		endif
		$ectype_id = GetEctypeID( -1 , 254 )
		
		$round = GetEctypeVar($ectype_id , 11 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 514 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 12 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 515 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 13 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 516 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 14 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 517 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 15 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 518 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 16 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 519 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 17 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 520 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
		
		$round = GetEctypeVar($ectype_id , 18 )
		if $round == 1
			ChangeNpcMode( -1 , $ectype_id , 521 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
		endif
	}


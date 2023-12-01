	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/20
	//		Author:??
	//		TaskName:NPC-lingqubaoguo.s
	//		TaskID:??????
	//
	//****************************************
	//13 ???????????? 
	//14 ???????60????
	
	
	
	function OnRequest(){
		
		$is_getmoney = GetPlayerVar(-1 , 13)
		$is_get60 = GetPlayerVar(-1 , 14)
		
		if $is_getmoney != 0
			DisableNpcOption(0)
		endif
		if $is_get60 != 0
			DisableNpcOption(1)
		endif
		
		$count = GetPackMaxCount(-1 , 0)
		if $count >= 70
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
	}
	
	//??30???????
	function OnOption0(){
	
		//???????
		$is_get = GetPlayerVar(-1 , 13)
		if $is_get == 1
			BC( "dialogbox", "player", -1, "You have already taken the LV30 Recharge Reward Pack." )
			return
		endif
		//?????
		$revalue = GetCharge(-1)
		if $revalue < 1500
			BC( "dialogbox", "player", -1, "You will receive 5 free bag expansions after transferring 1500 ZEN to this account, and your character reaches level 30!" )
			return
		endif
		
		$level = GetPlayerInfo(-1 , "level")
		if $level < 30
			BC( "dialogbox", "player", -1, "Unable to proceed. You are not LV30 yet." )
			return
		endif
		//?????????????????
		$count = GetPackMaxCount(-1 , 0)
		if $count == 20
			BC( "dialogbox", "player", -1, "You don't have a 25-slot bag. Please come back when you have a 25-slot bag." )
			return
		endif
		if $count == 70
			BC( "screen", "player", -1, "You have already extended your bag by other means. You cannot extend it anymore." )
			return
		endif
		//?????,???????5???
		$a = $count % 5
		if $a != 0
			BC( "screen", "player", -1, "System error! Unable to extend bag now. Please contact customer service." )
			return
		endif
		
		//????,??????????
		$newcount = $count + 5
		SetPackMaxCount(-1 , 0 , $newcount)
		BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount,)
		SetPlayerVar(-1, 13, 1)
	}
	
	
	//??50??????
	function OnOption1(){
	
		//???????
		$is_get = GetPlayerVar(-1 , 14)
		if $is_get == 1
			BC( "dialogbox", "player", -1, "You have already taken the LV60 Recharge Reward Pack." )
			return
		endif
		//?????
		//?????
		$revalue = GetCharge(-1)
		if $revalue < 1500
			BC( "dialogbox", "player", -1, "You will receive 5 free bag expansions after transferring 1500 ZEN to this account, and your character reaches level 60!" )
			return
		endif
		
		$level = GetPlayerInfo(-1 , "level")
		
		if $level < 60
			BC( "dialogbox", "player", -1, "Unable to proceed. You are not LV60 yet." )
			return
		endif
		//?????????????????
		
		$count = GetPackMaxCount(-1 , 0)
		if $count == 20
			BC( "dialogbox", "player", -1, "You don't have a 25-slot bag. Please come back when you have a 25-slot bag." )
			return
		endif
		if $count == 70
			BC( "screen", "player", -1, "You have already extended your bag by other means. You cannot extend it anymore." )
			return
		endif
		//?????,???????5???
		$a = $count % 5
		if $a != 0
			BC( "screen", "player", -1, "System error! Unable to extend bag now. Please contact customer service." )
			return
		endif
		
	
	//????,??????????
		$newcount = $count + 5
		SetPackMaxCount(-1 , 0 , $newcount)
		BC( "screen", "player", -1, "Your common bag has been extended to " ,$newcount,)
		SetPlayerVar(-1, 14, 1)
		
	}
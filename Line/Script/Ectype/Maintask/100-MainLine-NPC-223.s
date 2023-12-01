
        //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/02
	//		Author:??
	//		TaskName:100-MainLine-NPC-223.s
	//		TaskID: 
	//
	//****************************************

	function OnRequest(){
	
	 //??241???????
		$Done = IsTaskDone( -1 , 241 )
		if $Done != 0
			DisableNpcOption(0)
		endif
	 //??59269?????????
		$info = GetPlayerInfo( -1, "item", 59269 )
		if $info > 0
			DisableNpcOption(0)
		endif
         //??????????
		$result = HaveTitle( -1, 70 )
		if $result == 0
			DisableNpcOption(0)
		endif
		
		 //????????
		 $shuiB = IsExistStatus(-1 , 21601 )
		 $shuiD = GetPlayerVar(-1,3536)
		 if $shuiB != 0
		 	 DisableNpcOption(1)
		 endif
		 if $shuiD != 0
		 	 DisableNpcOption(1)
		 endif
		$num1 = GetPlayerInfo( -1, "item", 44467 )
		if $num1 < 1
			DisableNpcOption(2)
			DisableNpcOption(4)
		endif
		$num1 = GetPlayerInfo( -1, "item", 44468 )
		if $num1 < 1
			DisableNpcOption(3)
		endif
		//???????-----????44646???????---------------
		$info = GetPlayerInfo( -1, "item", 44646 )
		if $info < 1
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		$playervar = GetPlayerVar(-1,346)
		if $playervar > 0
		  DisableNpcOption(5)
		  DisableNpcOption(6)
		 endif
	}
	
	function OnOption0(){
	
		$Accept = IsTaskDone( -1 , 239 )
		if $Done != 0
			return
		endif
		
		$info2 = GetPlayerInfo( -1, "item", 59269 )
		if $info2 > 0
			return		
		endif
		
    $bag = GetPlayerInfo( -1, "nullitem", 0 )
    if $bag < 1
			BC( "screen", "player", -1, "You don't have enough space in your bag, can't receive Hypnos' Will!" )   
			return
		endif
		
		AddPlayerInfo( -1, "item", 59269, 1 )
	
	}
	
	function OnOption1(){
		
		 $shuiB = IsExistStatus(-1 , 21601 )
		 $shuiD = GetPlayerVar(-1,3536)
		 if $shuiB != 0
			BC( "screen", "player", -1, "You've already received the Verdandi's Letter today!" )
			return
		 endif
		 if $shuiD != 0
			BC( "screen", "player", -1, "You've already received the Verdandi's Letter today!" )
			return
		 endif
		
    $null = GetPlayerInfo( -1, "nullitem", 0 )
    if $null < 1
			BC( "screen", "player", -1, "Insufficient bag slots! Cannot collect Verdandi's Letter." )
			return
		endif
		AddPlayerInfo( -1, "item", 54109, 1 )
		AddStatus( -1, 21601, 4 )
		SetPlayerVar(-1,3536,1)
		BC( "messagebox", "player", -1, "Please bring Verdandi's Letter to Arethusa, and take today's reward.")
	
	}
	function OnOption2(){
	//????????????????????????	
			$num = GetPlayerInfo( -1, "item", 44467 )
			if $num < 1
				BC( "screen", "player", -1, "You don't have a Holy Fortification Stone Fragment!" )	
				return
			endif
		//??????
			$clever = GetBattlePetInfo( -1, "clever" )
			if $clever == -1
				BC( "chat", "player", -1, "You don't activate your Pet. Cannot upgrade your Pet Fortify level." )		
				BC( "screen", "player", -1, "You don't activate your Pet. Cannot upgrade your Pet Fortify level." )		
				return
			endif
			if $clever > 9
				BC( "chat", "player", -1, "Can only be used to upgrade a pet which is lower than Grade 10. You need to combine a complete Holy Fortification Stone to fortify." )		
				BC( "screen", "player", -1, "Can only be used to upgrade a pet which is lower than Grade 10. You need to combine a complete Holy Fortification Stone to fortify." )		
				return
			endif
			$clever = $clever + 1
			$result = SetBattlePetInfo( -1 ,"clever",$clever)
			if $result == 0
				SubPlayerInfo( -1 , "item", 44467 , 1)
				BC( "chat", "player", -1, "Upgrade Pet Fortify LV to",$clever,"LV" )
				BC( "screen", "player", -1, "Upgrade Pet Fortify LV to",$clever,"LV" )		
			endif		
	}
	function OnOption3(){
	//??????????????????????	
			$num = GetPlayerInfo( -1, "item", 44468 )
			if $num < 1
				BC( "screen", "player", -1, "You don't have a Holy Fortification Stone!" )	
				return
			endif
		//??????
			$clever = GetBattlePetInfo( -1, "clever" )
			if $clever == -1
				BC( "chat", "player", -1, "You don't activate your Pet. Cannot upgrade your Pet Fortify level." )		
				BC( "screen", "player", -1, "You don't activate your Pet. Cannot upgrade your Pet Fortify level." )		
				return
			endif
			if $clever > 14
				BC( "chat", "player", -1, "You Pet has achieved the Max Fortify Level!" )		
				BC( "screen", "player", -1, "You Pet has achieved the Max Fortify Level!" )	
				return
			endif
			$clever = $clever + 1
			$result = SetBattlePetInfo( -1 ,"clever",$clever)
			if $result == 0
				SubPlayerInfo( -1 , "item", 44468 , 1)
				BC( "chat", "player", -1, "Upgrade Pet Fortify LV to",$clever,"LV" )	
				BC( "screen", "player", -1, "Upgrade Pet Fortify LV to",$clever,"LV" )		
			endif			
	}
	function OnOption4(){
	//????????????
		$deleteItemID = 44467
		$deleteItemNum = 5
		#deleteItemName = "Holy Fortification Fragment"
		$addItemID = 44468
		$addItemNum = 1
		
		$Item = GetPlayerInfo( -1, "item", $deleteItemID )
		if $Item < $deleteItemNum
			BC( "screen", "player", -1, "You don't have 5",#deleteItemName,"." )
			return
		endif		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$Sub = SubPlayerInfo( -1, "item", $deleteItemID, $deleteItemNum )
		if $Sub != 0
			return
		endif
		AddPlayerInfo( -1, "item", $addItemID, $addItemNum )
	}
	function OnOption5(){
				//???????-----????44646??---------------2340	???????+10 
    $playervar = GetPlayerVar(-1,346)
		if $playervar > 0
		  BC( "dialogbox", "player", -1, "You've already used the Luck Blessing!" )
		  return	
		 endif
		$info = GetPlayerInfo( -1, "item", 44646 )
		if $info < 1
			BC( "dialogbox", "player", -1, "You don't have a Luck Blessing in your bag!" )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$Sub = SubPlayerInfo( -1, "item", 44646, 1 )
		if $Sub != 0
			return
		endif
		AddPlayerInfo( -1, "item", 2340, 1 )
		SetPlayerVar(-1,346,1)
		
	}
	function OnOption6(){
				//???????-----????44646??---------------2221	?????
		 $playervar = GetPlayerVar(-1,346)
		if $playervar > 0
		  BC( "dialogbox", "player", -1, "You've already used the Luck Blessing!" )
		  return	
		 endif
		$info = GetPlayerInfo( -1, "item", 44646 )
		if $info < 1
			BC( "dialogbox", "player", -1, "You don't have a Luck Blessing in your bag!" )
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$Sub = SubPlayerInfo( -1, "item", 44646, 1 )
		if $Sub != 0
			return
		endif
		AddPlayerInfo( -1, "item", 2221, 50 )
		SetPlayerVar(-1,346,1)
		 
	}
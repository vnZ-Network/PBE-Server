	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/24
	//		Author:???
	//		TaskName:Ectype-elinggubao-Area-18.s
	//		TaskID:????????
	//
	//****************************************
	
	
	function EnterArea(){
		$Ectype_id = GetEctypeID( -1 , 258 )
		
		//?????????
		$result1 = IsTaskAccept( -1 , 1711 )
		$result2 = IsTaskAccept( -1 , 1712 )
		$result3 = IsTaskAccept( -1 , 1713 )
		$result4 = IsTaskAccept( -1 , 1714 )
		$result5 = IsTaskAccept( -1 , 1715 )
		$result6 = IsTaskAccept( -1 , 1716 )
		 
		if $result1 == 0
			SetTaskDone( -1, 1711 )
			AddPlayerInfo( -1,"exp",1880000)
			PlayEffect(-1, "common\Wanchengrenwu\tx_Wanchengrenwu.ini", 1 )
			BC( "screen", "player", -1, "You have completed the Count's Invitation quest." )
		endif
		
		if $result2 == 0
			SetTaskDone( -1, 1712 )
			AddPlayerInfo( -1,"exp",2600000)
			PlayEffect(-1, "common\Wanchengrenwu\tx_Wanchengrenwu.ini", 1 )
			BC( "screen", "player", -1, "You have completed the Count's Invitation quest." )
		endif
		
		if $result3 == 0
			SetTaskDone( -1, 1713 )
			AddPlayerInfo( -1,"exp",3450000)
			PlayEffect(-1, "common\Wanchengrenwu\tx_Wanchengrenwu.ini", 1 )
			BC( "screen", "player", -1, "You have completed the Count's Invitation quest." )
		endif
		
		if $result4 == 0
			SetTaskDone( -1, 1714 )
			AddPlayerInfo( -1,"exp",4500000)
			PlayEffect(-1, "common\Wanchengrenwu\tx_Wanchengrenwu.ini", 1 )
			BC( "screen", "player", -1, "You have completed the Count's Invitation quest." )
		endif
		
		if $result5 == 0
			SetTaskDone( -1, 1715 )
			AddPlayerInfo( -1,"exp",5700000)
			PlayEffect(-1, "common\Wanchengrenwu\tx_Wanchengrenwu.ini", 1 )
			BC( "screen", "player", -1, "You have completed the Count's Invitation quest." )
		endif
		
		if $result6 == 0
			SetTaskDone( -1, 1716 )
			AddPlayerInfo( -1,"exp",6400000)
			PlayEffect(-1, "common\Wanchengrenwu\tx_Wanchengrenwu.ini", 1 )
			BC( "screen", "player", -1, "You have completed the Count's Invitation quest." )
		endif
		
		
		//??????-??~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		$zhaohuan = GetEctypeVar( $Ectype_id , 52 )
		if $zhaohuan == 1
			return
		endif
		
		if $zhaohuan == 0
		
			//??BOSS???,0????  1 ??
			$mode2 = GetEctypeVar( $Ectype_id , 112 )
			//110???????
			$level = GetEctypeVar( $Ectype_id , 110 )
			if $mode2 == 0
				//????
				$ectlevel2 = 62
			endif
			
			if $mode2 == 1
				//????
				$ectlevel2 = 61
			endif
			//????????
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 1 )
			AddLevelMonster( 51719 , $ectlevel2 , $level , 1 , $Ectype_id , 56 , 13 , 0 )
			
			SetEctypeVar( $Ectype_id , 52 , 1 )
		endif
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
	}

	function LeaveArea(){
	
	}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2249.s
	//		TaskID:??????????
	//
	//****************************************
	
	
	function OnRequest(){
		$rush = GetEctypeVar( -1 , 2 )
		if $rush != 0
			DisableNpcOption(0)
			
		endif
	}
	
	
	function OnOption0(){
		$Ectype_ID = GetEctypeID( -1 , 258 )
		//??BOSS???,0????  1 ??
		$mode2 = GetEctypeVar( $Ectype_ID , 112 )
		//110???????
		$level = GetEctypeVar( $Ectype_ID , 110 )
		if $mode2 == 0
			//????
			$ectlevel2 = 62
		endif
		
		if $mode2 == 1
			//????
			$ectlevel2 = 61
		endif
		
		
		//???????,0????  1 ??
		$mode = GetEctypeVar( $Ectype_ID , 111 )
		
		//110???????
		$level = GetEctypeVar( $Ectype_ID , 110 )
		if $mode == 0
			//????
			$ectlevel = 54
		endif
		
		if $mode == 1
			//????
			$ectlevel = 55
		endif
		
		$a = GetPlayerInfo( -1, "item", 63715 )
		$b = GetPlayerInfo( -1, "item", 63716 )
		
		if $a < 1
			BC( "screen", "player", -1, "You need the Sunlit Badge and the Crescent Badge to open the Final Door." )
			return
		endif

		if $b < 1
			BC( "screen", "player", -1, "You need the Sunlit Badge and the Crescent Badge to open the Final Door." )
			return
		endif
		
		$del1 = SubPlayerInfo ( -1 , "item" , 63715 , 1 )
		if  $del != 0
			return
		endif
		
		$del2 = SubPlayerInfo ( -1 , "item" , 63716 , 1 )
		if  $del != 0
			return
		endif
	
	
		$rush = GetEctypeVar( -1 , 2 )
		if $rush == 0
			BC( "screen", "map", $Ectype_ID, "Guards were summoned as soon as the door was opened. Kill them first!" )
			AddLevelMonster( 51630 , $ectlevel , $level , 2 , $Ectype_ID , 53 , 34 , 3 )
			AddLevelMonster( 51631 , $ectlevel , $level , 2 , $Ectype_ID , 57 , 34 , 3 )
			//AddLevelMonster( 51634 , $ectlevel2 , $level , 1 , $Ectype_ID , 56 , 13 , 0 )
			SetEctypeVar( -1 , 2 , 1 )
		endif
		
	}
	
	
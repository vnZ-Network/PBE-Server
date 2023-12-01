	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2139.s
	//		TaskID:????(???)
	//
	//****************************************
	
	
	
	function OnRequest(){
		
		$count = GetEctypeVar( -1 , 13 )
		$count1 = GetEctypeVar( -1 , 22 )
		if $count != 0
			DisableNpcOption(0)
		endif
		if $count1 != 1
			DisableNpcOption(1)
		endif
		
	}
	
	
	function OnOption0(){
		$Ectype_id = GetEctypeID( -1 , 258 )
		//???????,0????  1 ??
		$mode = GetEctypeVar( $Ectype_id , 111 )
		
		//110???????
		$level = GetEctypeVar( $Ectype_id , 110 )
		if $mode == 0
			//????
			$ectlevel = 54
		endif
		
		if $mode == 1
			//????
			$ectlevel = 55
		endif
	
		$count = GetEctypeVar( -1 , 13 )
		if $count != 0
			return
		endif
		
		$Ectype_id = GetEctypeID( -1 , 258 )
		$size = GetTeamAreaSize(-1)
		if $size > 10
			BC( "screen", "player", -1, "Gather your teammates to start the Rescue" )
			return
		endif
		
		//?????????3?
		StartEctypeTimer (-1,3 )
		
		BC( "screen",  "map" , $Ectype_id , "The door slams shut behind you! Ghouls will attack in 10 seconds!"  )
		SetEctypeVar( -1 , 13 , 1  )
		//?????????
		SetEctypeVar($Ectype_id , 0,0)
		CloseMask( 1 , $Ectype_id )
	
		

	}
	
	function OnOption1(){
		$Ectype_id = GetEctypeID( -1 , 258 )
		//???????,0????  1 ??
		$mode = GetEctypeVar( $Ectype_id , 111 )
		
		//110???????
		$level = GetEctypeVar( $Ectype_id , 110 )
		$level = $level - 20
		
		if $mode == 0
			//????
			$ectlevel = 55
		endif
		
		if $mode == 1
			//????
			$ectlevel = 54
		endif
		
		$count1 = GetEctypeVar( -1 , 22 )
		if $count1 != 1
			return
		endif
		
		
		$Ectype_id = GetEctypeID( -1 , 258 )
		
		AddLevelMonster( 51636 , $ectlevel , $level , 1 , $Ectype_id , 25 , 76 , 0 )
		BC( "screen" , "map" , $Ectype_id , "Protect the Priest until he reaches his destination." )
	
		DeleteNPC(2139,$Ectype_id)
		OpenMask( 1 , $Ectype_id )
		
		//?????????
		SetEctypeVar($Ectype_ID , 0,1)
		
		SetEctypeVar( -1 , 13 , 11  )
		
		
		
		
	
	}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/22
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2248.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnRequest(){
	
		//????id
		$Ectype_ID = GetEctypeID( -1 , 258 )
		
		//????????????
		$dianzhu = GetEctypeVar($Ectype_ID , 50)
		if $dianzhu == 0
			//???????,0????  1 ??
			$mode = GetEctypeVar( $Ectype_ID , 111 )
			//110???????
			$level = GetEctypeVar( $Ectype_ID , 110 )
			
			if $mode == 0
				//????,????????????
				$ectlevel = 65
			endif
		
			if $mode == 1
				//????,????????????
				$ectlevel = 66
			endif
			
			//????????
			AddLevelMonster( 51695 , $ectlevel , $level , 1 , $Ectype_ID , 22 , 68 , 0 )
			
			//????????2
			AddLevelMonster( 51696 , $ectlevel , $level , 1 , $Ectype_ID , 28 , 68 , 0 )
			
			//????????
			AddLevelMonster( 51697 , $ectlevel , $level , 1 , $Ectype_ID , 19 , 72 , 0 )
			
			//????????
			AddLevelMonster( 51698 , $ectlevel , $level , 1 , $Ectype_ID , 19 , 81 , 0 )
			
			//????,??????hp??(????)
			//if $mode == 0
			//	AddLevelMonster( 51703 , 63 , $level , 1 , $Ectype_ID , 21 , 72 , 0 )
			//	AddLevelMonster( 51704 , 63 , $level , 1 , $Ectype_ID , 28 , 72 , 0 )
			//	AddLevelMonster( 51705 , 63 , $level , 1 , $Ectype_ID , 21 , 81 , 0 )
			//	AddLevelMonster( 51706 , 63 , $level , 1 , $Ectype_ID , 28 , 81 , 0 )
			//endif
			
			//????,??????hp??(????)
			//if $mode == 1
			//	AddLevelMonster( 51703 , 64 , $level , 1 , $Ectype_ID , 21 , 72 , 0 )
			//	AddLevelMonster( 51704 , 64 , $level , 1 , $Ectype_ID , 28 , 72 , 0 )
			//	AddLevelMonster( 51705 , 64 , $level , 1 , $Ectype_ID , 21 , 81 , 0 )
			//	AddLevelMonster( 51706 , 64 , $level , 1 , $Ectype_ID , 28 , 81 , 0 )
			//endif
			
			SetEctypeVar($Ectype_ID , 50,1)
			
		endif
		
		//??????????0?,1?
		$mask1 =  GetEctypeVar($Ectype_ID , 0)
		if $mask1 == 1
			BC("screen" , "player" , -1 ,  "The door has opened." )
		else
			OpenMask( 1 , $Ectype_ID )
			SetEctypeVar($Ectype_ID , 0,1)
			//PlaySoundToView (-1,??????)
			NPCAction(-1 , 2248 , down , 1)
		endif
	
	}
	

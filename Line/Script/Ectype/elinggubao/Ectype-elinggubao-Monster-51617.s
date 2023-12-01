	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/10
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51617.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnDead(){
		$Ectype_ID = GetEctypeID( -1 , 258 )
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
	
		$Ectype_ID = GetEctypeID( -1 , 258 )
		$count = GetEctypeVar( -1 , 6 )		
		$count = $count + 1
		SetEctypeVar( -1 , 6 , $count )	
				
		
		if $count < 50
			BC( "screen" , "map" , $Ectype_ID , "You have destroyed " , $count , "/50 Puppet Maids" )
		endif
		
		if $count == 10
			AddLevelMonster( 51617 , $ectlevel , $level , 20 , $Ectype_ID , 107 , 44 , 10 )
		endif
		
		if $count == 30
			AddLevelMonster( 51617 , $ectlevel , $level , 20 , $Ectype_ID , 111 , 44 , 10 )
		endif
		
		if $count == 50
			if $ectlevel == 55
				BC( "screen" , "map" , $Ectype_ID , "All Puppet Maids have been destroyed. Look out! A Crazy Drunkard bursts forth from the Cellar!" )
				PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 1 )
				AddLevelMonster( 51618 , 61 , $level , 1 , $Ectype_ID , 116 , 49 , 0 )
				OpenMask( 6 , $Ectype_ID )
			else
				BC( "screen" , "map" , $Ectype_ID , "All Puppet Maids have been destroyed. The Cellar has opened!" )
				OpenMask( 6 , $Ectype_ID )
			endif
		endif
		
	
		
	}
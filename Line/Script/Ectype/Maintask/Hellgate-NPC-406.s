	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-NPC-406.s
	//		TaskID:??????
	//
	//****************************************
	
			function OnRequest(){
		}
	


	function OnOption0(){
		$r1 = IsTaskAccept( -1, 170 )
		$r2 = IsTaskDone( -1, 170 )
		$id = GetEctypeID( -1, 217 )
		//?????????,?????????,?????
		if $r1 == 1
			if $r2 == 1
					BC( "dialogbox", "player", -1, "You have not removed the seal, you can not enter Khufu Pyramid." )
				return
			endif	
		endif
		
		if $id > 0
				$ff = FlyToEctype( -1, 217, 107, 63 )
		else		
		//??????????
				$stime = GetSystemTime( "yday" )
				$lptime = GetPlayerVar( -1, 3738 )
	
				if $stime == $lptime 
						BC( "dialogbox", "player", -1, "The entrance is blocked by a great power, it may clear tomorrow." )
					return
				endif
		
				$instanceid = FlyToEctype( -1, 217, 107, 63 )
				if $instanceid < 1
					BC( "dialogbox", "player", -1, "The instance is full, please try again later." )
					return
				endif
		//??????,????????
				$nptime = SetPlayerVar( -1, 3738, $stime )
				BC( "screen", "player", -1, "A great power is blocking the entrance, you have no way to go back." )
			endif
	}
		
		
		

		
				

					
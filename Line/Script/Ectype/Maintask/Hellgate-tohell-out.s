	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-area.s
	//		TaskID:??????????
	//
	//****************************************
	
			function OnRequest(){
		}
	
		function OnOption0(){
			$task = IsTaskDone( -1, 170 )
			$nimoop = GetGlobalVar( 1 )
			//????50????
					if $nimoop < 50 
							BC("dialogbox", "player", -1 , "The power of the three goddesses of fate can not open the Portal to the netherworld.")
							return
				endif			
			//???????,??
			if $task != 0
					BC( "dialogbox", "player", -1, "Only one who completes [The Fight of Strongest Deity] can enter the netherworld." )
				return
			endif
			//??????
			$fly = FlyToMap( -1, 227, 24, 102 )
			
		}
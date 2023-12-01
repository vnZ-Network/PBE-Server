	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/29
	//		Author:???
	//		TaskID:85?? ????debuff ??
	//
	//****************************************
	
	function EnterArea(){
		
		$Status = IsExistStatus( -1 , 10719 )
		$Accept1 = IsTaskAccept( -1 , 150 )	
		$Accept2 = IsTaskAccept( -1 , 151 )	
		$Accept3 = IsTaskAccept( -1 , 153 )		
		if $Status == 0
			return
		else			
			if $Accept1 != 0
				if $Accept2 != 0
					if $Accept3 != 0
						return						
					endif				
				endif							
			endif
		endif
	AddStatus( -1 , 10719 , 3 )
	BC( "screen" , "player" , -1 , "You entered Serra Tribe without a Stealth Potion, you are caught by Slow-down Trap! Use a Stealth Potion at once." )
	BC( "chat" , "player" , -1 , "You entered Serra Tribe without a Stealth Potion, you are caught by Slow-down Trap! Use a Stealth Potion at once." )


	}

	function LeaveArea(){

	}


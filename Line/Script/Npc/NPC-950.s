	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/01
	//		Author:???
	//		TaskName:NPC-950.s
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){
		
		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID($playerid, 565 )
		if $ectype_id <= 0
			DisableNpcOption(1)
			DisableNpcOption(2)
		else
			DisableNpcOption(0)
			DisableNpcOption(3)
		endif
		
		$renwu1 = IsTaskAccept($playerid,402)
		$renwu2 = IsTaskDone($playerid,402)
		if $renwu1 == 1
			if $renwu2 == 1
				DisableNpcOption(0)
			endif
		endif
		
	}
	
	function OnOption0(){
		
		$playerid = GetPlayerID()
		
		$team = IsPlayerInTeam(-1)
		if $team == 0
			BC("dialogbox","player",-1,"You cannot be in a party to enter this instance.")
			return
		endif
		
		$dengji = GetFieldLevel(-1)
		if $dengji < 39
			BC( "screen" , "player" , -1, "You must be at least Exalted LV39 to enter this instance." )
			return
		endif
		
		$renwu1 = IsTaskAccept($playerid,402)
		$renwu2 = IsTaskDone($playerid,402)
		
		$fly = FlyToEctype(-1,565,87,84)
			if $fly > 0
				$ectype_id = GetEctypeID(-1,565)
				BC("screen","player",-1,"You've entered Besieged Atlantis!")
				SetEctypeVar($ectype_id,110,$playerid)
			else
				BC( "screen" , "player" , -1, "The instance is full, please try again later." ) 
				return
			endif
		
		
		
	}
	
	function OnOption1(){
			//??
			
			$team = IsPlayerInTeam(-1)
			if $team == 0
				BC("dialogbox","player",-1,"You cannot be in a party to enter this instance.")
				return
			endif
			$playerid = GetPlayerID()
			$ectype_uid = GetEctypeUniqueID(-1,565)
			$ectype_id = GetEctypeID(-1,565)
			if $ectype_id <= 0
				BC("screen","player",-1,"Error")
				return
			endif
			
				$result = FlyToEctype(-1,565,87,84)
				if $result > 0
					BC("screen","player",-1,"You've returned to Besieged Atlantis.")
					SetEctypeVar($ectype_id,110,$playerid)
				else
					BC("dialogbox","player",-1,"An error occurred when teleporting into the instance. Error Code: ",$result)
				endif

		}
		
		
		function OnOption2(){

			$result = ReleaseEctype(-1,565)
			if $succeed == 0
				BC("dialogbox","player",-1,"The instance has been reset.")
			else
				BC("dialogbox","player",-1,"Unable to reset instance, please try again.")
			endif

		}
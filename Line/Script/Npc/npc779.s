	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:npc779.s
	//		TaskID:
	//
	//****************************************
	
	//????110:??????ID
	
	function OnRequest(){
		
		$playerid = GetPlayerID()
		$ectype_id = GetEctypeID($playerid, 539 )
		if $ectype_id <= 0
			DisableNpcOption(1)
			DisableNpcOption(2)
		else
			DisableNpcOption(0)
			DisableNpcOption(3)
		endif
		
		$renwu1 = IsTaskAccept($playerid,329)
		$renwu2 = IsTaskDone($playerid,329)
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
		if $dengji < 20
			BC( "screen" , "player" , -1, "Only those who have reached Exalted LV20+ can enter this instance." )
			return
		endif
		
		$renwu1 = IsTaskAccept($playerid,329)
		$renwu2 = IsTaskDone($playerid,329)
		
		$daoju	= GetPlayerInfo( -1,"item",12835 )
		
		if $renwu2 == 0
			$fly = FlyToEctype(-1,539,24,95)
			if $fly > 0
				$ectype_id = GetEctypeID(-1,539)
				BC("screen","player",-1,"You have entered Ruins of the Ark!")
				SetEctypeVar($ectype_id,110,$playerid)
			else
				BC( "screen" , "player" , -1, "The instance is full, please try again later." ) 
				return
			endif
		else
		
			if $daoju < 1
				BC("screen","player",-1,"You must have a Bound Compass to find your way to The Ark.")
				return
			endif
			
			if $renwu != 0
				BC( "screen" , "player" , -1, "You do not have the correct quest." )
				return
			endif
			
			
			
			
			
			$fly = FlyToEctype(-1,539,24,95)
			if $fly > 0
				$ectype_id = GetEctypeID(-1,539)
				BC("screen","player",-1,"You have entered Ruins of the Ark!")
				SetEctypeVar($ectype_id,110,$playerid)
			else
				BC( "screen" , "player" , -1, "The instance is full, please try again later." ) 
				return
			endif
		endif
		
	}
	
		function OnOption1(){
			//??
			$playerid = GetPlayerID()
			$ectype_uid = GetEctypeUniqueID(-1,539)
			$ectype_id = GetEctypeID(-1,539)
			if $ectype_id <= 0
				BC("screen","player",-1,"Error")
				return
			endif
			
				$result = FlyToEctype(-1,539,24,95)
				if $result > 0
					BC("screen","player",-1,"You returned to Ruins of the Ark.")
					SetEctypeVar($ectype_id,110,$playerid)
				else
					BC("dialogbox","player",-1,"Error occurred when teleporting into the instance. Error Code: ",$result)
				endif

		}
		
		function OnOption2(){

			$result = ReleaseEctype(-1,539)
			if $succeed == 0
				BC("dialogbox","player",-1,"The instance has been reset.")
			else
				BC("dialogbox","player",-1,"The instance has not been reset, please try again.")
			endif

		}
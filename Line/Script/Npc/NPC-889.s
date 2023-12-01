	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/01
	//		Author:???
	//		TaskName:NPC-889.s
	//		TaskID:3.70??
	//
	//****************************************
	
	function OnRequest(){
		
		$playerid = GetPlayerID()
		$istask = IsTaskAccept(-1,365)
		$taskdone = IsTaskDone(-1,365)
		
		if $istask != 0
			if $taskdone != 0
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		
		$ectype_id = GetEctypeID($playerid, 544 )
		if $ectype_id <= 0
			DisableNpcOption(1)
			DisableNpcOption(2)
		else
			DisableNpcOption(0)
			DisableNpcOption(3)
		endif
		
	}
	
	function OnOption0(){
		
		$playid = GetPlayerID()
		$team = IsPlayerInTeam(-1)
		if $team == 0
			BC("dialogbox","player",-1,"You may only enter this instance alone!")
			return
		endif
		
		$fieldlevel = GetFieldLevel(-1)
		if $fieldlevel < 38
			BC("screen","player",-1,"You must be at least Exalted LV38 to enter this instance!")
			return
		endif
		
		$fly = FlyToEctype(-1,544,78,109)
		if $fly > 0
			$ectype_ID = GetEctypeID(-1,544)
			BC("screen","player",-1,"Welcome to Gaia's Dwelling!")
			SetEctypeVar($ectype_ID,110,$playid)
		else
			BC("screen","player",-1,"The instance is currently full. Please try again later.")
		endif
		
		
		
	}
	
	function OnOption1(){
		
		
		//??
		$playerid = GetPlayerID()
		$ectype_uid = GetEctypeUniqueID(-1,544)
		$ectype_id = GetEctypeID(-1,544)
		if $ectype_id <= 0
			BC("screen","player",-1,"Error")
			return
		endif
		
		$result = FlyToEctype(-1,544,78,109)
		if $result > 0
			BC("screen","player",-1,"Welcome back to Gaia's Dwelling!")
			SetEctypeVar($ectype_id,110,$playerid)
		else
			BC("dialogbox","player",-1,"An error occurred when teleporting into the instance. Error Code: ",$result)
		endif
		
	}
	
	function OnOption2(){

			$result = ReleaseEctype(-1,544)
			if $succeed == 0
				BC("dialogbox","player",-1,"Instance reset successfully.")
			else
				BC("dialogbox","player",-1,"Failed to reset Instance!")
			endif

		}
	
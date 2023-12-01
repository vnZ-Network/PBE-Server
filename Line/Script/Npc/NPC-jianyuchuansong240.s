	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/12
	//		Author:??
	//		TaskName:NPC-jianyuchuansong240.s
	//		TaskID:??????,?????
	//
	//****************************************
	
	
	function OnOption0(){
	//????????
		$kill_number = GetPlayerInfo( -1, "prestige",47)
		
		$revalue = IsExistStatus(-1 , 10561)
		if $revalue == 0
			BC( "dialogbox", "player", -1, "You are being confined now. Please visit me when you are released of the confinement." )
			return
		endif
		
		//?????buff???buff,20????????????
		$is_buffer = IsExistStatus(-1 , 10596)
		if $is_buffer == 0
			if $kill_number > 20
				BC( "dialogbox", "player", -1, "You can't hide it from me. I sense the foul stench of a will of slaughter from you. You must be the disguised serveillant! I shall not let you out." )
				return
			else
				BC( "screen", "player", -1, "Glad to be at your service, your Honor!" )
				FlyToMap( -1, 475, 100, 74 )
				return
			endif
		endif
		
		if $kill_number > 0
			BC( "dialogbox", "player", -1, "Your term of penalty has not ended yet. Don't think about going out until your Infamy drops to 0." )
			return
		endif
		
		CallGACD(-1)
		FlyToMap( -1, 475, 100, 74 )

	}
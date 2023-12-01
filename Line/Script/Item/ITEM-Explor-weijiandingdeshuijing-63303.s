 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/17
	//		Author:???
	//		TaskName:ITEM-Explor-weijiandingdeshuijing-63303.s
	//		TaskID:????63303
	//****************************************
	
	function OnUseItem(){
		
		
	//?????55 ?????????????
	//?????56 ?????????????ID

		$crystal = GetServerVar(55)
		$last_playerid = GetServerVar(56)
		$mapid = GetPlayerInfo( -1, "mapid")
		$playerid = GetPlayerID()
		$info = GetPlayerInfo( -1 , "item", 63304)
		$x = GetPlayerInfo( -1, "mapposx")
		$y = GetPlayerInfo( -1, "mapposy")
		#name = GetPlayerInfo( -1 , "name")
		
		if $mapid != 186
			BC( "messagebox", "player", -1, "[Star Shard] can be identified only in Outer Starway map." )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" , 63303 , 1 )
		if  $del != 0
			return
		endif
		AddPlayerInfo( -1 ,"item", 63304,1 )
		PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_blue.ini" )
	//--------??????????????????????????--------------------------
		//--------?????????????????????????----------------
		$m = $info + 1
		if $m > $crystal
		//---------?????????????ID-------------------------------------
			SetServerVar(55,$m )
			SetServerVar(56,$playerid)
		//---------??????20?,????????---------------------------
			if $m == 20
				BC( "screen", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				BC( "chat", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				BC( "screen", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
				BC( "chat", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
				AddStatus($playerid,10587,1)
			endif
		//---------????30?,??-----------------------------------
			if $m == 30
				BC( "screen", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				BC( "chat", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
		//----------????????????,????????,?????????,??---------------------------------
				if $last_playerid != $playerid
					AddStatus($last_playerid,10588,1)
					AddStatus($playerid,10587,1)
					BC( "screen", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
					BC( "chat", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
				endif
			endif
			
			if $m == 40
				BC( "screen", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				BC( "chat", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				if $last_playerid != $playerid
					AddStatus($last_playerid,10588,1)
					AddStatus($playerid,10587,1)
					BC( "screen", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
					BC( "chat", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
				endif
			endif
			
			if $m == 45
				BC( "screen", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				BC( "chat", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				if $last_playerid != $playerid
					AddStatus($last_playerid,10588,1)
					AddStatus($playerid,10587,1)
					BC( "screen", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
					BC( "chat", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
				endif
			endif
			
			if $m == 50
				BC( "screen", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				BC( "chat", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				if $last_playerid != $playerid
					AddStatus($last_playerid,10588,1)
					AddStatus($playerid,10587,1)
					BC( "screen", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
					BC( "chat", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
				endif
			endif
			
			if $m == 55
				BC( "screen", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				BC( "chat", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
				if $last_playerid != $playerid
					AddStatus($last_playerid,10588,1)
					AddStatus($playerid,10587,1)
					BC( "screen", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
					BC( "chat", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
				endif
			endif
			
			if $m > 55
				if $m < 60
					BC( "screen", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
					BC( "chat", "map", 186, "The hero ",#name,"]has ",$m," [Star Shards] now!")
					if $last_playerid != $playerid
						AddStatus($last_playerid,10588,1)
						AddStatus($playerid,10587,1)
						BC( "screen", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
						BC( "chat", "map", 186, "The hero ",#name,"] was made the [Egyptian guardian] by a mysterious force!")
					endif
				endif
			endif
			//-------????,?????????---------
			if $m == 60
				BC( "screen", "map", 186, "The hero ",#name,"]is the first to collect all the 60 Star Shards. Will she/he be the lucky one to enjoy the 1st prize?")
				BC( "chat", "map", 186, "The hero ",#name,"]is the first to collect all the 60 Star Shards. Will she/he be the lucky one to enjoy the 1st prize?")
				AddStatus($last_playerid,10588,1)
			endif
		endif		
		if $m > 60
			BC( "screen", "player", -1 , "You have already finished the collection quest.")
		endif
			
		
	}
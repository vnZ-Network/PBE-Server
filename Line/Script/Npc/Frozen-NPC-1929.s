	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/20
	//		Author:???
	//		TaskName:Frozen-NPC-1929.s
	//		TaskID: ??NPC
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		
		 
		$kuang = GetPlayerInfo ( -1 , "item" , 63455 )
		$lv = GetPlayerInfo ( -1 , "level" )
		#name = GetPlayerInfo ( -1 , "name" )
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		
		$a = $lv * 50
		$b = $lv / 15
		$c = $b * 2
		$d = $c + 6
		$e = $a * $d
		$f = $e * $lv
		$g = $lv / 10
		$h = $g + 7
		$i = $f * $h
		$j = $i / 4000
		$exp = $j
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$Lost = IsFrozenFortLost( $guildid )
		if $Lost == 0
			BC( "dialogbox", "player", -1, "Your guild fountain has been destroyed. You lost the chance to donate." )
			return
		endif
		if $kuang < 15
			BC( "dialogbox", "player", -1, "You need 15 Ferrostones to gain resources." )
			return
		endif
		if $guildid == 0
			BC( "dialogbox", "player", -1, "You haven't joined a guild yet." )
			return
		endif
		$delete = SubPlayerInfo ( -1 , "item" , 63455 , 15 )
		if $delete != 0
			return
		endif
		AddFrozenFortMine( -1 , 15 )
		AddPlayerInfo ( -1 , "item" , 63522 , 1 )
		AddPlayerInfo( -1 , "exp" , $exp )
		BC( "screen", "guild", $guildid , #name , "Gathering resources. Preparing for the final victory of the guild." )
		BC( "screen", "player", -1 , "You give 15 Ferrostones to the fighters in the Arena Zone." )
		
	}
	
	function OnOption1(){
		
		$liang = GetPlayerInfo ( -1 , "item" , 63454 )
		#name = GetPlayerInfo ( -1 , "name" )
		$lv = GetPlayerInfo ( -1 , "level" )
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		
		$a = $lv * 50
		$b = $lv / 15
		$c = $b * 2
		$d = $c + 6
		$e = $a * $d
		$f = $e * $lv
		$g = $lv / 10
		$h = $g + 7
		$i = $f * $h
		$j = $i / 4000
		$exp = $j
		
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$Lost = IsFrozenFortLost( $guildid )
		if $Lost == 0
			BC( "dialogbox", "player", -1, "Your guild fountain has been destroyed. You lost the chance to donate." )
			return
		endif
		if $liang < 15
			BC( "dialogbox", "player", -1, "You need 15 Icemoss to gain resources." )
			return
		endif
		if $guildid == 0
			BC( "dialogbox", "player", -1, "You haven't joined a guild yet." )
			return
		endif
		$delete = SubPlayerInfo ( -1 , "item" , 63454 , 15 )
		if $delete != 0
			return
		endif
		AddFrozenFortFood( -1 , 15 )
		AddPlayerInfo ( -1 , "item" , 63522 , 1 )
		AddPlayerInfo( -1 , "exp" , $exp )
		BC( "screen", "guild", $guildid , #name , "Gathering resources. Preparing for the final victory of the guild." )
		BC( "screen", "player", -1 , "You give 15 Icemoss to the fighters in the Arena Zone." )
		
	}
	
	
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/31
	//		Author:???
	//		TaskName:Frozen-Item-63473.s
	//		TaskID:
	//****************************************
	
	function OnUseItem(){
		
	
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$guildid = GetPlayerInfo( -1 , "guildid" )
		if $guildid == 0
			BC( "screen", "player", -1, "You don't have a guild. You cannot use the Glacier Chest." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 63473 , 1 )
		if $nfo != 0
			return
		endif
		$lv = GetPlayerInfo( -1 , "level" )
		
		$a = $lv * 50
		
		$b = $lv / 15
		$c = $b * 2
		$d = $c + 6
		
		$e = $lv / 10
		$f = $e + 7
		
		$h = $f * $d
		$i = $h * $a
		$m = $i * $lv
		$j = $m / 2000
		
		$k = $j * 4
		$l = $j * 20
		
		$exp1 = $k
		$exp2 = $l
		
		$n = RandomNumber ( 0 , 9999 )
		if $n < 2500
			AddPlayerInfo( -1 , "money" , 10000 )
		endif
		if $n >= 2500
			if $n < 3000
				AddPlayerInfo( -1 , "money" , 50000 )
			endif
		endif
		if $n >= 3000
			if $n < 6000
				AddPlayerInfo( -1 , "exp" , $exp1 )
			endif
		endif
		if $n >= 6000
			if $n < 6500
				AddPlayerInfo( -1 , "exp" , $exp2 )
			endif
		endif
		if $n >= 6500
			if $n < 6900
				AddPlayerInfo( -1 , "guildprosperity" , 4000 )
				BC( "screen", "player", -1, "You contributed 4000 Development to your guild!" )
			endif
		endif
		if $n >= 6900
			if $n < 7300
				AddPlayerInfo( -1 , "guildmoney" , 112500 )
				BC( "screen", "player", -1, "You contributed 112500 coins as Guild Funds!" )
			endif
		endif
		if $n >= 7300
			if $n < 8900
				AddPlayerInfo( -1 , "guildoffer" , 1 )
				BC( "screen", "player", -1, "You gained 1 Contribution point." )
			endif
		endif
		if $n >= 8900
			if $n < 9200
				AddPlayerInfo( -1 , "guildoffer" , 10 )
				BC( "screen", "player", -1, "You gained 10 Contribution points." )
			endif
		endif
		if $n >= 9200
			if $n < 10000
				AddPlayerInfo( -1 , "item" , 63475 , 1 )
			endif
		endif
	}


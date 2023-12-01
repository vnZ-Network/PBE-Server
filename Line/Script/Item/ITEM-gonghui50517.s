function OnUseItem(){
   					
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "Unable to use. You have not joined a Guild yet.")
	  	return
	  endif
			
			//????
			$r = SubPlayerInfo( -1, "item", 50517, 1 )
			if $r != 0
				BC( "screen", "player", -1, "Failed to gain EXP!" )
				return
			endif
			
			//????
			$level = GetPlayerInfo( -1, "level" )
			
			//??????:(??*50)*(6+??/15*2)*??*(??/10+7)/100/20*2
			$a = $level * 50
			$b = $level / 15
			$c = $b * 2
			$d = $c + 6
			$e = $a * $d
			$f = $e * $level
			$g = $level / 10
			$h = $g + 7
			$i = $f * $h
			$exp = $i / 400
			
			AddPlayerInfo( -1, "exp", $exp )
			return
		endif

		
}
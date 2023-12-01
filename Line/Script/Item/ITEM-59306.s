function OnUseItem(){
   			
			//????
			
			$r = SubPlayerInfo( -1, "item", 59306, 1 )
			if $r != 0
				return
			endif
			
			$s = AddPlayerBattleScore (-1, 10000 )
			if $s == -1
				BC( "screen", "player", -1, "Failed to use that item!" )
				return
			endif
		  if $s == 0
		  	BC( "screen", "player", -1, "Gained 10000 Honor!" )
				return	  	
			endif
}
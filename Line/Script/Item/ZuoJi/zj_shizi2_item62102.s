function OnUseItem(){
   			
			$r = AddRider(-1,1021)
			if $r == 0
				BC( "screen", "player", -1, "Mount added to mount list!" )
				//????
				SubPlayerInfo( -1, "item", 62102, 1 )
				return
			endif
			BC( "screen", "player", -1, "Fail to add Mount!" )
	
}
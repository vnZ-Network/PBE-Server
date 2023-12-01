	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:item-12837.s
	//		TaskID:
	//
	//****************************************

	function OnUseItem(){

		//???????
		$nullitem = GetPlayerInfo( -1, "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "There is not enough space in your bag." )
			return
		endif

		$renwu =  IsTaskAccept(-1,328)
		if $renwu != 0
			BC( "screen", "player", -1, "You don't have the appropriate quest!" )
			return
		endif

		$map = GetPlayerInfo(-1,"mapid")
		if $map != 538
			BC( "screen", "player", -1, "You will only find the wreckage of The Ark in the Twilight Zone." )
			return
		endif

		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 538
			if $x > 88
				if $x < 95
					if $y > 30
						if $y < 40
							BC( "screen", "player", -1, "This wreckage does not match the piece of The Ark that you have." )
							return
						endif
					endif
				endif
			endif

			if $x > 100
				if $x < 110
					if $y > 153
						if $y < 162
							BC( "screen", "player", -1, "This wreckage does not match the piece of The Ark that you have." )
							return
						endif
					endif
				endif
			endif

		$a = GetPlayerInfo(-1,"item",12838)
			if $a == 0

				if $x > 76
					if $x < 85
						if $y > 164
							if $y < 172
								AddPlayerInfo(-1,"item",12838,1)
								BC( "screen", "player", -1, "This is it! These pieces match exactly!" )
								return
							endif
						endif
					endif
				endif

			else
				BC( "screen", "player", -1, "You've found the wreckage of The Ark!" )
				return
      endif
     endif

      BC( "screen", "player", -1, "There's no wreckage here." )
      
   }

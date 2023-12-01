	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7/30
	//		Author:???
	//		TaskName:Item-12856.s
	//		TaskID:12856-????
	//
	//****************************************
	
	function OnUseItem(){
		
		$istask342 = IsTaskAccept(-1,342)
		$istask345 = IsTaskAccept(-1,345)
		$istask346 = IsTaskAccept(-1,346)
		$istask354 = IsTaskAccept(-1,354)
		if $istask342 != 0
			if $istask345 != 0
				if $istask346 != 0
					if $istask354 != 0
						BC("screen","player",-1,"You haven't accepted the quest yet, that item can't be used!")
						return
					endif
				endif
			endif
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		
		if $istask342 == 0
			AddMonsterByFloat(53100,1,$map,$x,$y,0,-1)
		endif
		
		if $istask345 == 0
			$mapid = 398
			$x = 172
			$y = 164
			$posx = GetPlayerInfo(-1,"mapposx")
			$posy = GetPlayerInfo(-1,"mapposy")
			$map = GetPlayerInfo(-1,"mapid")
			if $map == 398
				if $posx > 170
					if $posx < 174
						if $posy > 162
							if $posy < 166
								AddMonsterByFloat(53101,1,$mapid,172,164,0,-1)
								AddMonsterByFloat(53112,1,$map,$posx,$posy,0,-1) 
							else
								AddMonsterByFloat(53107,1,$map,$posx,$posy,0,-1)
							endif
						else
							AddMonsterByFloat(53107,1,$map,$posx,$posy,0,-1)
						endif
					else
						AddMonsterByFloat(53107,1,$map,$posx,$posy,0,-1)
					endif
				else
					AddMonsterByFloat(53107,1,$map,$posx,$posy,0,-1)
				endif
			else
				AddMonsterByFloat(53107,1,$map,$posx,$posy,0,-1)
			endif
		endif
		
		if $istask346 == 0
			$daoju1 = GetPlayerInfo(-1,"item",12858)
			$daoju2 = GetPlayerInfo(-1,"item",12859)
			$daoju3 = GetPlayerInfo(-1,"item",12857)
			
			if $daoju3 > 0
				AddMonsterByFloat(53113,1,$map,$x,$y,0,-1)
				return
			endif
			
			if $daoju1 < 1
				if $daoju2 < 1
					AddMonsterByFloat(53108,1,$map,$x,$y,0,-1)
				endif
			endif
			
			if $daoju1 > 0
				if $daoju2 < 1
					AddMonsterByFloat(53109,1,$map,$x,$y,0,-1)
				endif
			endif
			
			if $daoju1 < 1
				if $daoju2 > 0
					AddMonsterByFloat(53110,1,$map,$x,$y,0,-1)
				endif
			endif
					
			if $daoju1 > 0
				if $daoju2 > 0
					AddMonsterByFloat(53113,1,$map,$x,$y,0,-1)
				endif
			endif
		endif
		
		if $istask354 == 0
			AddMonsterByFloat(53111,1,$map,$x,$y,0,-1)
		endif
		
	}
		
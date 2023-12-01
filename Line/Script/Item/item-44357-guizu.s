	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-7-10 17:07:44
	//		Author:hbt
	//		TaskName:
	//		TaskID:
	//
	//****************************************

	function OnUseItem(){
//59839	?????
//2221	?????
//59838	?????
//2141	2??????
//9	??????
//5%
//25%
//45%
//65%
//85%
//100%

		$playerid = GetPlayerID()
		$secc = SubPlayerInfo($playerid,"item",44357,1)
		$mapid = GetPlayerInfo(-1,"mapid")
		if $secc == 0
			BC("screen","player",-1,"You opened the Deep Ocean Chest!")
			$randombuff = RandomNumber(0,99)
			if $randombuff < 1
				AddPlayerInfo($playerid,"item",59839,1)
			endif
			if $randombuff < 15
				AddPlayerInfo($playerid,"item",2221,1)
			endif
			if $randombuff < 35
				AddPlayerInfo($playerid,"item",59838,1)
			endif
			if $randombuff < 65
				AddPlayerInfo($playerid,"item",59838,1)
			endif
			if $randombuff < 85
				AddPlayerInfo($playerid,"item",9,1)
			endif
			if $randombuff < 100
				AddPlayerInfo($playerid,"givepoint",800)
			endif
			//-------------------------------BC
			if $mapid >= 10501
				if $mapid <= 10600
					#name = GetPlayerInfo(-1,"name")
					if $randombuff < 1
						BC("screen","map",$mapid,"The Platinum Noble player",#name,"  has opened the Deep Ocean Chest, and acquired the LV3 Gem Coin, Fortify Charm, LV2 Gem Coinx2, Major Fortify Crystal and 800 Salary.")
						BC("chat","map",$mapid,"The Platinum Noble player",#name,"  has opened the Deep Ocean Chest, and acquired the LV3 Gem Coin, Fortify Charm, LV2 Gem Coinx2, Major Fortify Crystal and 800 Salary.")
					else
						if $randombuff < 15
							BC("screen","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired the Fortify Charm, LV2 Gem Coinx2, Major Fortify Crystal and 800 Salary.")
							BC("chat","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired the Fortify Charm, LV2 Gem Coinx2, Major Fortify Crystal and 800 Salary.")
						else
							if $randombuff < 35
								BC("screen","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired the LV2 Gem Coinx2, Major Fortify Crystal and 800 Salary.")
								BC("chat","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired the LV2 Gem Coinx2, Major Fortify Crystal and 800 Salary.")
							else
								if $randombuff < 65
									BC("screen","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired the LV1 Gem Coinx2, Major Fortify Crystal and 800 Salary.")
									BC("chat","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired the LV1 Gem Coinx2, Major Fortify Crystal and 800 Salary.")
								else
									if $randombuff < 85
										BC("screen","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired the Major Fortify Crystal and 800 Salary.")
										BC("chat","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired the Major Fortify Crystal and 800 Salary.")
									else
										if $randombuff < 100
											BC("screen","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired 800 Salary.")
											BC("chat","map",$mapid,"The Platinum Noble player",#name," has opened the Deep Ocean Chest, and acquired 800 Salary.")
										endif
									endif
								endif
							endif
						endif
					endif
				endif
			endif
			//-------------------------------
		else
			BC("dialogbox","player",-1,"An error occurred when using this item!")
		endif
		
		
	}
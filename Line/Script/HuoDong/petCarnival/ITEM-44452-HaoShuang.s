	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/24
	//		Author:???
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
		
		$playerid = GetPlayerID()
		
		$clever = GetBattlePetInfo(-1,"clever")
		if $clever < 0
			BC("messagebox","player",-1,"You didn't summon a Pet!")
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44452, 1 )
		//??????????
		if $del_count == 0
			$nature = 7
			$result = SetBattlePetInfo(-1,"nature",$nature)
			call naturename()
			if $result == 0
				BC("chat","player",-1,"Congratulations! Your Pet Mood is now ",#quality,") ")
				BC("messagebox","player",-1,"Congratulations! Your Pet Mood is now ",#quality,") ")
			else
				BC("dialogbox","player",-1,"Failed!")
			endif
		endif
		
	}
	
	
	function naturename(){
		
			if $nature == 0
				#quality = "Naughty"
			endif
			if $nature == 1
				#quality = "Serious"
			endif
			if $nature == 2
				#quality = "Reckless"
			endif
			if $nature == 3
				#quality = "Excited"
			endif
			if $nature == 4
				#quality = "Cowardly"
			endif
			if $nature == 5
				#quality = "Calm"
			endif
			if $nature == 6
				#quality = "Strength"
			endif
			if $nature == 7
				#quality = "Forthright"
			endif
		
	}
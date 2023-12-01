	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??20???
	//		TaskID:
	//
	//****************************************
	
	function OnTaskFailedDone(){
		//????
		
		$isdone = GetPlayerVar( -1, 3299 )
		//BC( "dialogbox", "player", -1, $isdone)
		if $isdone == 1
			SetPlayerVar(-1, 3299, 2 )
			BC( "messagebox", "player", -1, "You finished the Elf's appearance quest, go get your reward from Milla." )
		else
			BC( "messagebox", "player", -1, "You have failed the Elf's appearance quest." )
		endif
		
	}
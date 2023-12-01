	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/02
	//		Author:???
	//		TaskName:npc762
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){

				
	}
	
	function OnOption0(){
		

		$playerid = GetPlayerID()
		$level = GetPlayerInfo(-1,"level")
		$FLDlevel = GetFieldLevel($playerid)
		$ExpPT = GetPlayerInfo($playerid,"exp")
		$fExpPT = GetFieldLevel($playerid)
		if $level < 130
			BC("dialogbox","player",-1,"Sorry, you have not yet reached LV130!")
			return
		endif
		if $FLDlevel < 1
			BC("dialogbox","player",-1,"Sorry, you have not yet become Exalted!")
			return
		endif
//		if $ExpPT < 900000000
//			BC("dialogbox","player",-1,"GUID:08219000002")
//			return
//		endif
		$var126 = GetPlayerVar($playerid,126)
		if $var126 == 1
			BC("dialogbox","player",-1,"Sorry, you have already exchanged for Exaltation today.")
			return
		endif
		$succ = ExpTransFieldExp($playerid)
		if $succ == 0
			BC("chat","player",-1,"You have exchanged 900 million EXP for 600,000 Exaltation.")
			BC("dialogbox","player",-1,"Sorry, you can only exchange for Exaltation once per day.")
			SetPlayerVar($playerid,126,1)
		else
			BC("dialogbox","player",-1,"Sorry, you do not meet the exchange conditions.")
		endif
		
	}
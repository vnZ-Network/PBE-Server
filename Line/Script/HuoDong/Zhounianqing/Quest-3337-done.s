	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/6
	//		Author:??
	//		TaskName:Quest-3337-done.s
	//		TaskID:????????????
	//****************************************
	
	function OnTaskFailedDone(){
		
		$a = GetPlayerVar( -1 , 3261 )
		$a = $a + 1
		
		//????????2?3???,?????1
		$RankListzhounian = GetRankListValue( 1, 499 )
		if $RankListzhounian >= 70
			if $a == 5
				SendMail( -1 , "Complete the BOI Anniversary Celebration quest 5 times." , "You've completed the BOI Anniversary Celebration quest {#ffffd800=5 times#}! Thank you for helping spread the joy of Anniversary! The gods are very pleased with you! You have worked to keep Atlantis perfect!\n\n{#ffffd800=You will receive this letter again when you complete the BOI Anniversary Celebration quest another 5 times.#}\n\n{#ff00ff30=Please, receive your reward in the attachment.#}" , 0 , 63735 )
				SetPlayerVar( -1 , 3261 , 0 )
				BC( "screen", "player", -1, "You've completed the BOI Anniversary Celebration quest ",$a,"/5 times! Open your mail for a reward!")
			else
				SetPlayerVar( -1 , 3261 , $a )
				BC( "screen", "player", -1, "You've completed the BOI Anniversary Celebration quest ",$a,"/5 times. Each time you complete the quest 5 times, you will receive additional rewards.")	 
			endif
		endif
		
		//??????
		
				
		SendMail( -1 , "Gifts from Gods (BOI Anniversary Celebration)" , "You've kept your promise and completed the BOI Anniversary Celebration quest! The gods are very pleased with you! They would like to reward you with an {#ffffd800=(Anniversary Pack)#}.\n{#ffffd800=Hint: The BOI Anniversary Celebration quest can only be completed once a day. If the server is LV2, each time you complete the quest 5 times you will receive an extra letter with a Lucky Sticker attached.#} " , 0 , 59230 ) 
				
		//??????
		
		$history = GetGlobalVar( 970 )
		$history = $history + 1
		SetGlobalVar( 970 , $history )
	}
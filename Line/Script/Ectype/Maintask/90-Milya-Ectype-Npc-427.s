	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Milya-Ectype-Npc-427.s
	//		TaskID: 
	//
	//****************************************

	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 157 )
		if $Accept != 0
			DisableNpcOption(0)
		endif

	}
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 157 )
		if $Accept != 0
			return
		endif
		$info1 = GetPlayerInfo( -1, "item", 12705 )
		$info2 = GetPlayerInfo( -1, "item", 12725 )
		if $info2 > 0
			if $info1 > 0
				$info = SubPlayerInfo( -1, "item", 12725 , -1 )
				if $info != 0
					return
				endif
				BC( "dialogbox" , "player" , -1 , "Please offer Set's Blood on the right side of the Pyramid." )
			else
				$info = SubPlayerInfo( -1, "item", 12725 , -1 )
				if $info != 0
					return
				endif
				SetTaskDone( -1 , 157 )
				AddPlayerInfo( -1, "money", 4856)
				AddPlayerInfo( -1, "exp", 1488021)
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
				BC( "dialogbox" , "player" , -1 , "The seal was not removed. Go and ask Garlandi about it." )
			endif
		endif
		
	}

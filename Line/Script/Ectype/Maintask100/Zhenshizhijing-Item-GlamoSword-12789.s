	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-GlamoSword-Item-12789.s
	//		TaskID ???????
	//
	//****************************************
	
	function OnUseItem(){
		
		$accept = IsTaskAccept( -1 , 195 )
		if $accept == 0
			$num = GetPlayerInfo( -1, "item", 12791 )
			if $num == 0
				AddPlayerInfo( -1, "item", 12791, 1 )
				BC( "chat", "player", -1, "Obtain Sighing Spirit by using Gramr" )
			endif
		endif
	}

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/22
	//		Author:???
	//		TaskName:Item-64480.s
	//		TaskID:?????(???)
	//****************************************
	
	function OnUseItem(){
		
//		$round = GetPlayerVar( -1 , 3319 )
//		
//			if $round < 4
				$info = SubPlayerInfo( -1 , "item" , 64480 , 1 )
				if  $info != 0
						return
				endif
						
				AddTarotCostMax(-1,5)
//				$round = $round + 1		
//				SetPlayerVar( -1 , 3319 , $round )
				BC( "screen", "player", -1, "Your Max Fate Energy has been increased by 5!" )
//			else
//				BC( "screen", "player", -1, "GUID:06455000001" )
//				return
//			endif
		
		
	}
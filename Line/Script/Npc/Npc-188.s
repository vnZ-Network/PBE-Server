	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/5/17
	//		Author:???
	//		TaskName:Npc-188.s
	//		TaskID:
	//
	//****************************************

		function OnRequest(){	
			
		$item = GetPlayerInfo( -1, "item", 60010 )
		if $item > 0
			DisableNpcOption(0)
		endif
		$result = HaveTitle( -1 , 28 )
		if $result == 1
			DisableNpcOption(0)
		endif					
		}
			

		function OnOption0(){
		
		
		$item = GetPlayerInfo( -1, "item", 60010 )
		if $item > 0
			return
		endif			
		$result = HaveTitle( -1 , 28 )
		if $result == 1
			return
		endif	
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		AddPlayerInfo( -1, "item", 60010 , 1 )
								
		}
								

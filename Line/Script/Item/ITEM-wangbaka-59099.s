	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:ITEM-wangbaka-59051.s
	//		TaskID:???
	//
	//****************************************
	
	//1?ID   59051
	//20?ID 59099	
		function OnUseItem(){
			$sex = GetPlayerInfo( -1, "sex")
			$lv = GetPlayerInfo(-1,level)
			$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
			//????
			if $lv < 20 
					BC( "screen", "player", -1, "You are lower than level 20. Unable use." )		
					BC( "chat", "player", -1, "You are lower than level 20. Unable use." )		
					return
			endif				
							
			//??????
			if $nullitem < 2
					BC( "screen", "player", -1, "Not enough space in your bag." )
					BC( "chat", "player", -1, "Not enough space in your bag." )	
					return
			endif		
			//????,0???,1???
			if $sex == 0
					$sub = SubPlayerInfo( -1,"item",59099, 1)
					$add = AddPlayerInfo( -1,"item",62543, 1)			
					$add = AddPlayerInfo( -1,"item",36489, 1)
			endif
			if $sex == 1
					$sub = SubPlayerInfo( -1,"item",59099, 1)
					$add = AddPlayerInfo( -1,"item",62543, 1)			
					$add = AddPlayerInfo( -1,"item",36488, 1)	
			endif					
		}
	
	
	
	
	
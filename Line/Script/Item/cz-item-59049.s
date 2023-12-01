	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/11
	//		Author:??
	//		TaskName:ITEM-59049.s
	//		TaskID:????VIP??
	//
	//****************************************
	
		function OnUseItem(){
			//??????2?
			$no_bag = GetPlayerInfo ( -1 , "nullitem" , 0  )
				if $no_bag < 2
						BC( "screen", "player", -1 , "You don't have 2 free bag slots.")
					return
				endif
			//????
			$sex = GetPlayerInfo ( -1 , "sex" )	
			
			//????
			$sub = SubPlayerInfo ( -1 , "item" , 59049 , 1 )
			
			//????????
			if $sub == 0
				//????
				$addc = AddPlayerInfo ( -1 , "item" , 64386 , 1 )
		
				//?????
				if $sex == 0
						$addf = AddPlayerInfo ( -1 , "item" , 36471 , 1 )
				endif
			
				//?????
				if $sex == 1
						$addm = AddPlayerInfo ( -1 , "item" , 36470 , 1 )
				endif
			endif		
		}			
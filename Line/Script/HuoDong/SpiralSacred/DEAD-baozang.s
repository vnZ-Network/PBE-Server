//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/11/01
//	--		Author:???
//	--		Class:	DEAD-baozang.s
//	--		TaskID:??
//	----------------------------------------------------

	function OnDead(){
		$nullitem0 = GetPlayerInfo( -1, "nullitem", 0)
		$nullitem1 = GetPlayerInfo( -1, "nullitem", 1)
		if $nullitem0 <= 2
			BC( "chat", "player", -1, "Make sure you have enough space in your bag.")
			BC( "screen", "player", -1, "Make sure you have enough space in your bag.")
		endif
		if $nullitem1 <= 1
			BC( "chat", "player", -1, "Make sure you have enough space in your material bag.")
			BC( "screen", "player", -1, "Make sure you have enough space in your material bag.")
		endif
		$radaward = RandomNumber ( 1 , 10000 )
		if $radaward > 0      
			if $radaward <= 2        
				AddPlayerInfo( -1, "item", 62597 , 1)
			endif
		endif
		if $radaward > 2      
			if $radaward <= 3        
				AddPlayerInfo( -1, "item", 62545 , 1)
			endif
		endif
		if $radaward > 3      
			if $radaward <= 4        
				AddPlayerInfo( -1, "item", 62059 , 1)
			endif
		endif
		if $radaward > 4      
			if $radaward <= 6        
				AddPlayerInfo( -1, "item", 62007 , 1)
			endif
		endif
		if $radaward > 6      
			if $radaward <= 8        
				AddPlayerInfo( -1, "item", 37031 , 1)
			endif
		endif
		if $radaward > 8      
			if $radaward <= 10       
				AddPlayerInfo( -1, "item", 37032 , 1)
			endif
		endif
		if $radaward > 10     
			if $radaward <= 3510     
				AddPlayerInfo( -1, "item", 59103 , 1)
					$flv = GetFieldLevel(-1)
					if $flv > 0
						AddPlayerInfo( -1, "item", 12827 , 1)
					endif
			endif
		endif
		if $radaward > 3510   
			if $radaward <= 6510     
				AddPlayerInfo( -1, "item", 1     , 10)
			endif
		endif
		if $radaward > 6510   
			if $radaward <= 8510     
				AddPlayerInfo( -1, "item", 64244 , 1)
			endif
		endif
		if $radaward > 8510   
			if $radaward <= 8910     
				$bubang = IsDiamondVIP(-1)
				if $bubang == 1
					AddPlayerInfo( -1, "item", 9 , 1)
				endif
				if $bubang == 0
					AddPlayerInfo( -1, "item", 2 , 1)
				endif
			endif
		endif
		if $radaward > 8910   
			if $radaward <= 9210     
				$bubang = IsDiamondVIP(-1)
				if $bubang == 1
					AddPlayerInfo( -1, "item", 2221  , 1)
				endif
				if $bubang == 0
					AddPlayerInfo( -1, "item", 2223  , 1)
				endif
			endif
		endif
		if $radaward > 9210   
			if $radaward <= 9710     
				AddPlayerInfo( -1, "item", 60503 , 1)
			endif
		endif
		if $radaward > 9710   
			if $radaward <= 9750     
				AddPlayerInfo( -1, "item", 6186  , 1)
			endif
		endif
		if $radaward > 9750   
			if $radaward <= 9790     
				AddPlayerInfo( -1, "item", 6196  , 1)
			endif
		endif
		if $radaward > 9790   
			if $radaward <= 9830     
				AddPlayerInfo( -1, "item", 63065 , 1)
			endif
		endif
		if $radaward > 9830   
			if $radaward <= 9870     
				AddPlayerInfo( -1, "item", 63066 , 1)
			endif
		endif
		if $radaward > 9870   
			if $radaward <= 9910     
				AddPlayerInfo( -1, "item", 63067 , 1)
			endif
		endif
		if $radaward > 9910   
			if $radaward <= 9950        
				$bubang = IsDiamondVIP(-1)
				if $bubang == 1
					AddPlayerInfo( -1, "item", 63359 , 1)
				endif
				if $bubang == 0
					AddPlayerInfo( -1, "item", 60014  , 1)
				endif
			endif
		endif
		if $radaward > 9950   
			if $radaward <= 9990        
				$bubang = IsDiamondVIP(-1)
				if $bubang == 1
					AddPlayerInfo( -1, "item", 60493 , 1)
				endif
				if $bubang == 0
					AddPlayerInfo( -1, "item", 60501  , 1)
				endif
			endif
		endif
		if $radaward > 9990   
			if $radaward <= 10000          
				$bubang = IsDiamondVIP(-1)
				if $bubang == 1
					AddPlayerInfo( -1, "item", 60489 , 1)
				endif
				if $bubang == 0
					$big = RandomNumber ( 1 , 3 )
					if $big == 1
						AddPlayerInfo( -1, "item", 60504  , 1)
					endif
					if $big == 2
						AddPlayerInfo( -1, "item", 60505  , 1)
					endif
					if $big == 3
						AddPlayerInfo( -1, "item", 59556  , 1)
					endif
				endif
			endif
		endif
		
	}
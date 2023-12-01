	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/27
	//		Author:??
	//		TaskName:ITEM-xingyuxingyuan-64266.s
	//		TaskID:???????
	//
	//****************************************
	//63286	????
	//63287	????
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif

		$key1 = GetPlayerInfo( -1, "item", 63286 )
		
		$key2 = GetPlayerInfo( -1, "item", 63287 )
		
		if $key1 == 0
			if $key2 == 0
				BC( "screen", "player", -1, "You need a Taurus Insignia to activate it." )
				return
			else
				$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
			endif
		else
			$del_count = SubPlayerInfo( -1, "item", 63286, 1 )
		endif
		
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 64266, 1 )
		//??????????
		
		if $del_count == 0
		
			//----------------------------------------------------------------------------------------??????
			
			//???????.?8000?????
			$use_number_jinniu = GetServerVar(204)
			//????????,????????8000,????
			$give_number_jinniu = GetServerVar(205)
			//????
			$use_number_paoxiaoshu = GetServerVar(206)
			//????
			$give_number_paoxiaoshu = GetServerVar(207)
			
			//???????,???
			if $give_number_jinniu == 0
				$give_number_jinniu = RandomNumber(1 , 8000)
				SetServerVar(205 , $give_number_jinniu)
			endif
			if $give_number_paoxiaoshu == 0
				$give_number_paoxiaoshu = RandomNumber(1 , 10000)
				SetServerVar(207 , $give_number_paoxiaoshu)
			endif
			
			//?????
			$use_number_jinniu = $use_number_jinniu + 1
			if $use_number_jinniu == $give_number_jinniu
				AddPlayerInfo( -1, "item", 62510, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Taurus Card with a Starwish Charm, and has acquired the constellation pet: Taurus." )
				BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Taurus Card with a Starwish Charm, and has acquired the constellation pet: Taurus." )
				SetServerVar(204 , $use_number_jinniu)
				return
			endif
	
			if $use_number_jinniu >= 8000
				$give_number_jinniu = RandomNumber(1 , 8000)
				$use_number_jinniu = 1
				SetServerVar(205 , $give_number_jinniu)
			endif
			SetServerVar(204 , $use_number_jinniu)
	
			//?????
			
			//?????
			$use_number_paoxiaoshu = $use_number_paoxiaoshu + 1
			if $use_number_paoxiaoshu == $give_number_paoxiaoshu
				AddPlayerInfo( -1, "item", 60690, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name, " has blessed the Taurus Card with a Starwish Charm, and has acquired the pet skill book: Taurus Roar." )
				BC("chat", "servergroup", -1, "The hero ",#name, " has blessed the Taurus Card with a Starwish Charm, and has acquired the pet skill book: Taurus Roar." )
				SetServerVar(206 , $use_number_paoxiaoshu)
				return
			endif
			
			if $use_number_paoxiaoshu >= 10000
				$give_number_paoxiaoshu = RandomNumber(1 , 10000)
				$use_number_paoxiaoshu = 1
				SetServerVar(207 , $give_number_paoxiaoshu)
			endif
			SetServerVar(206 , $use_number_paoxiaoshu)
			//?????
			//--------------------------------------------------------------------------------????????
			//-0---------------------------------------------0---------
	
			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 2
				AddPlayerInfo( -1, "item", 60690, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest, and has fortunately acquired the pet skill book Taurus Roar." )
				BC("chat", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest, and has fortunately acquired the pet skill book Taurus Roar." )
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 7
					AddPlayerInfo( -1, "item", 62510, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest, and has fortunately acquired the constellation pet Taurus." )
					BC("chat", "servergroup", -1, "The hero ",#name," has opened the Fantasy chest, and has fortunately acquired the constellation pet Taurus." )
				endif
			endif
			
			if $random_item_2 > 7
				if $random_item_2 <= 115
					AddPlayerInfo( -1, "item", 64403, 1 )
					AddPlayerInfo( -1, "item", 64515, 1 )
				endif
			endif
			
			if $random_item_2 > 115
				if $random_item_2 <= 1115
					AddPlayerInfo( -1, "item", 2313, 1 )
					AddPlayerInfo( -1, "item", 64513, 2 )
					AddPlayerInfo( -1, "item", 64514, 1 )
				endif
			endif
			
			if $random_item_2 > 1115
				if $random_item_2 <= 2115
					AddPlayerInfo( -1, "item", 60509, 1 )
					AddPlayerInfo( -1, "item", 64513, 2 )
					AddPlayerInfo( -1, "item", 64514, 1 )
				endif
			endif
			
			if $random_item_2 > 2115
				if $random_item_2 <= 5115
					
					AddPlayerInfo( -1, "item", 64513, 2 )
					AddPlayerInfo( -1, "item", 60031, 1 )
					AddPlayerInfo( -1, "item", 60030, 1 )
				endif
			endif
			
			if $random_item_2 > 5115
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 60031, 1 )
					AddPlayerInfo( -1, "item", 60030, 1 )
					AddPlayerInfo( -1, "item", 64512, 2 )
				endif
			endif
		endif
	}

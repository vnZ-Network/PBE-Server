	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/19
	//		Author:??
	//		TaskName:ITEM-shuangzikapian-63382.s
	//		TaskID:???????
	//
	//****************************************
	//64266	?????
	//63287	?????
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif

		$key1 = GetPlayerInfo( -1, "item", 64266 )
		
		$key2 = GetPlayerInfo( -1, "item", 63287 )
		
		if $key1 == 0
			if $key2 == 0
				BC( "screen", "player", -1, "You need a Starwish Charm to activate it!" )
				return
			else
				$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
			endif
		else
			$del_count = SubPlayerInfo( -1, "item", 64266, 1 )
		endif
		
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 63382, 1 )
		//??????????
		
		if $del_count == 0
		
			//----------------------------------------------------------------------------------------??????
			
			//?????.?8000?????
			$use_number_jinniu = GetServerVar(204)
			//?????,?????8000,????
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
			
			//???
			$use_number_jinniu = $use_number_jinniu + 1
			if $use_number_jinniu == $give_number_jinniu
				AddPlayerInfo( -1, "item", 62513, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Gemini Card with a Starwish Charm, and has acquired the constellation pet: Gemini." )
				BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Gemini Card with a Starwish Charm, and has acquired the constellation pet: Gemini." )
				SetServerVar(204 , $use_number_jinniu)
				return
			endif
	
			if $use_number_jinniu >= 8000
				$give_number_jinniu = RandomNumber(1 , 8000)
				$use_number_jinniu = 1
				SetServerVar(205 , $give_number_jinniu)
			endif
			SetServerVar(204 , $use_number_jinniu)
	
			//???
			
			//?????
			$use_number_paoxiaoshu = $use_number_paoxiaoshu + 1
			if $use_number_paoxiaoshu == $give_number_paoxiaoshu
				AddPlayerInfo( -1, "item", 60595, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Gemini Card with a Starwish Charm, and has acquired the pet skill book: Gemini Storm." )
				BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Gemini Card with a Starwish Charm, and has acquired the pet skill book: Gemini Storm." )
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
				AddPlayerInfo( -1, "item", 60595, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Gemini Card with a Starwish Charm, and has acquired the pet skill book: Gemini Storm." )
				BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Gemini Card with a Starwish Charm, and has acquired the pet skill book: Gemini Storm." )
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 7
					AddPlayerInfo( -1, "item", 62513, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Gemini Card with a Starwish Charm, and has acquired the constellation pet: Gemini." )
					BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Gemini Card with a Starwish Charm, and has acquired the constellation pet: Gemini." )
				endif
			endif
			
			if $random_item_2 > 7
				if $random_item_2 <= 107
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 107
				if $random_item_2 <= 207
					AddPlayerInfo( -1, "item", 2135, 1 )
				endif
			endif
			
			if $random_item_2 > 207
				if $random_item_2 <= 2707
					AddPlayerInfo( -1, "item", 63381, 1 )
				endif
			endif
			
			if $random_item_2 > 2707
				if $random_item_2 <= 6707
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 6707
				if $random_item_2 <= 8507
					AddPlayerInfo( -1, "item", 60031, 3 )
				endif
			endif
			
			if $random_item_2 > 8507
				if $random_item_2 <= 8950
					AddPlayerInfo( -1, "item", 60509, 2 )
				endif
			endif
			
			if $random_item_2 > 8950
				if $random_item_2 <= 9950
					AddPlayerInfo( -1, "item", 64180, 2 )
				endif
			endif
			
			if $random_item_2 > 9950
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
		
		endif
			
			
	}

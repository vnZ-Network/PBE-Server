	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/20
	//		Author:???
	//		TaskName:ITEM-godlight-59289.s
	//		TaskID:????????
	//
	//****************************************
	//64266	?????
	//63287	?????
	
	function OnUseItem(){
	
	
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		$key1 = GetPlayerInfo( -1, "item", 64266 )
		
		$key2 = GetPlayerInfo( -1, "item", 63287 )
		
		if $key1 == 0
			if $key2 == 0
				BC( "screen", "player", -1, "You need a Starwish Charm to activate this!" )
				return
			else
				$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
			endif
		else
			$del_count = SubPlayerInfo( -1, "item", 64266, 1 )
		endif
		
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59289, 1 )
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
			if $give_number_paoxiaoshu == 0
				$give_number_paoxiaoshu = RandomNumber(1 , 10000)
				SetServerVar(207 , $give_number_paoxiaoshu)
			endif
			
			//?????
			$use_number_paoxiaoshu = $use_number_paoxiaoshu + 1
			if $use_number_paoxiaoshu == $give_number_paoxiaoshu
				AddPlayerInfo( -1, "item", 60700, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Sealed Okula Card with a Starwish Charm, and has acquired the pet skill book: Ultimate Thump." )
				BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Sealed Okula Card with a Starwish Charm, and has acquired the pet skill book: Ultimate Thump." )
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
				AddPlayerInfo( -1, "item", 60700, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Sealed Okula Card with a Starwish Charm, and has acquired the pet skill book: Ultimate Thump." )
				BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Sealed Okula Card with a Starwish Charm, and has acquired the pet skill book: Ultimate Thump." )
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 7
					AddPlayerInfo( -1, "item", 59288, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Sealed Okula Card with a Starwish Charm, and has acquired Okula's Soul." )
					BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Sealed Okula Card with a Starwish Charm, and has acquired Okula's Soul." )
				endif
			endif
			
			if $random_item_2 > 7
				if $random_item_2 <= 3095
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 3095
				if $random_item_2 <= 7295
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif
			
			if $random_item_2 > 7295
				if $random_item_2 <= 7300
					AddPlayerInfo( -1, "item", 59287, 1 )
				endif
			endif
			
			if $random_item_2 > 7300
				if $random_item_2 <= 9800
					AddPlayerInfo( -1, "item", 63381, 1 )
				endif
			endif
			
			if $random_item_2 > 9800
				if $random_item_2 <= 9850
					AddPlayerInfo( -1, "item", 2135, 1 )
				endif
			endif
			
			if $random_item_2 > 9850
				if $random_item_2 <= 9950
					AddPlayerInfo( -1, "item", 20274, 1 )
				endif
			endif
			
			if $random_item_2 > 9950
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
			
		endif
		
	}

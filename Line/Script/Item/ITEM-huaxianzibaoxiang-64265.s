	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/31
	//		Author:??
	//		TaskName:ITEM-huaxianzibaoxiang-64265.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 64265, 1 )
		//??????????
		if $del_count == 0
			
			
			//----------------------------------------------------------------------------------------??????
			
			
			
			//???????.?8000?????
			//$use_number_huaxianzi = GetServerVar(200)
			//???????,????????8000,????
			//$give_number_huaxianzi = GetServerVar(201)
			
			//???,?????
			$use_number_mengma = GetServerVar(202)
			//???,?????
			$give_number_mengma = GetServerVar(203)
			
			//???????,???
			//if $give_number_huaxianzi == 0
			//	$give_number_huaxianzi = RandomNumber(1 , 8000)
			//	SetServerVar(201 , $give_number_huaxianzi)
			//endif
			if $give_number_mengma == 0
				$give_number_mengma = RandomNumber(1 , 10000)
				SetServerVar(203 , $give_number_huaxianzi)
			endif
			
			//?????
//			$use_number_huaxianzi = $use_number_huaxianzi + 1
//			if $use_number_huaxianzi == $give_number_huaxianzi
//				AddPlayerInfo( -1, "item", 62509, 1 )
//				#name = GetPlayerInfo(-1 , "name")
//				BC("screen", "servergroup", -1, "The hero ",#name,"GUID:06633000003" )
//				BC("chat", "servergroup", -1, "The hero ",#name,"GUID:06633000005" )
//				SetServerVar(200 , $use_number_huaxianzi)
//				return
//			endif
	
//			if $use_number_huaxianzi >= 8000
//				$give_number_huaxianzi = RandomNumber(1 , 8000)
//				$use_number_huaxianzi = 1
//				SetServerVar(201 , $give_number_huaxianzi)
//			endif
//			SetServerVar(200 , $use_number_huaxianzi)
	
			//?????
			
			//????,?????????
			$use_number_mengma = $use_number_mengma + 1
			if $use_number_mengma == $give_number_mengma
				AddPlayerInfo( -1, "item", 62102, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Chest of the Grassland King and found a Platinum Noble Card!" )
				BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Chest of the Grassland King and found a Platinum Noble Card!" )
				SetServerVar(202 , $use_number_mengma)
				return
			endif
			
			if $use_number_mengma >= 10000
				$give_number_mengma = RandomNumber(1 , 10000)
				$use_number_mengma = 1
				SetServerVar(203 , $give_number_mengma)
			endif
			SetServerVar(202 , $use_number_mengma)
			//????
	
	
			//--------------------------------------------------------------------------------????????
			
			
			//-------------------------------------------------------------------------------------------------

			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 1230
				AddPlayerInfo( -1, "item", 60028, 4 )
			endif
			if $random_item_2 > 1230
				if $random_item_2 <= 2230
					AddPlayerInfo( -1, "item", 60039, 1 )
				endif
			endif
		
			if $random_item_2 > 2230
				if $random_item_2 <= 5230
					AddPlayerInfo( -1, "item", 5, 1 )
				endif
			endif

			if $random_item_2 > 5230
				if $random_item_2 <= 6230
					AddPlayerInfo( -1, "item", 60490, 2 )
				endif
			endif
			
			if $random_item_2 > 6230
				if $random_item_2 <= 6530
					AddPlayerInfo( -1, "item", 60491, 1 )
				endif
			endif		
		
			if $random_item_2 > 6530
				if $random_item_2 <= 7830
					AddPlayerInfo( -1, "item", 60030, 2 )
				endif
			endif
		
			if $random_item_2 > 7830
				if $random_item_2 <= 8730
					AddPlayerInfo( -1, "item", 60031, 1 )
				endif
			endif
			
			if $random_item_2 > 8730
				if $random_item_2 <= 9030
					AddPlayerInfo( -1, "item", 60509, 1 )
				endif
			endif
			
			if $random_item_2 > 9030
				if $random_item_2 <= 9130
					AddPlayerInfo( -1, "item", 2137, 1 )
				endif
			endif
			
			if $random_item_2 > 9130
				if $random_item_2 <= 9230
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 9230
				if $random_item_2 <= 9733
					AddPlayerInfo( -1, "item", 2202, 1 )
				endif
			endif
			
			//if $random_item_2 > 9730
			//	if $random_item_2 <= 9733
			//		AddPlayerInfo( -1, "item", 62509, 1 )
			//		#name = GetPlayerInfo(-1 , "name")
			//		BC("screen", "servergroup", -1, "The hero ",#name,"GUID:06633000011" )
			//		BC("chat", "servergroup", -1, "The hero ",#name,"GUID:06633000013" )
			//	endif
			//endif
			
			if $random_item_2 > 9733
				if $random_item_2 <= 9748
					AddPlayerInfo( -1, "item", 64247, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name,"You opened a Chest of the Grassland King and found a Platinum Noble Card!" )
					BC("chat", "servergroup", -1, "The hero ",#name,"You opened a Chest of the Grassland King and found a Platinum Noble Card!" )
				endif
			endif
			
			if $random_item_2 > 9748
				if $random_item_2 <= 9798
					AddPlayerInfo( -1, "item", 64246, 1 )
				endif
			endif
			
			if $random_item_2 > 9798
				if $random_item_2 <= 9800
					AddPlayerInfo( -1, "item", 62102, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, "You opened a Chest of the Grassland King and found a Platinum Noble Card!" )
					BC("chat", "servergroup", -1, "The hero ",#name, "You opened a Chest of the Grassland King and found a Platinum Noble Card!" )
				endif
			endif
			
			if $random_item_2 > 9800
				if $random_item_2 <= 9900
					AddPlayerInfo( -1, "item", 63269, 1 )
				endif
			endif
			if $random_item_2 > 9900
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 36522 , 1 )
				endif
			endif		
		endif
		
	}

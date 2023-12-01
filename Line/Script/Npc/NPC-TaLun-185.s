	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/19
	//		Author:???
	//		TaskName:NPC-TaLun-185.s
	//		TaskID:185 ??
	//
	//****************************************
	
	function OnRequest(){
	
	}
	function OnOption0(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 37025 )
		$Item2 = GetPlayerInfo( -1, "item", 37027 )
		$Item = $Item1 + $Item2
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You don't have a 13th VIP Noble Fashion Ticket." )
			return
		endif
		
		if $Item1 > 0 
			$SubItem = SubPlayerInfo( -1, "item", 37025, 1 )
			if $SubItem != 0
				return 
			endif
		
			$Sex = GetPlayerInfo( -1, "sex" )
			//sex=0 ?;
			if $Sex == 0
				AddPlayerInfo( -1, "item", 37014, 1 )
			else
				AddPlayerInfo( -1, "item", 37015, 1 )
			endif
			return
		endif
		
		if $Item2 > 0 
			$SubItem = SubPlayerInfo( -1, "item", 37027, 1 )
			if $SubItem != 0
				return 
			endif
		
			$Sex = GetPlayerInfo( -1, "sex" )
			//sex=0 ?;
			if $Sex == 0
				AddPlayerInfo( -1, "item", 37022, 1 )
			else
				AddPlayerInfo( -1, "item", 37015, 1 )
			endif
			BC( "dialogbox", "player", -1, "Due to your status as a Platinum VIP, you received some Platinum fashion!" )
			return
		endif
		
	}
	function OnOption1(){
	
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 37026 )
		$Item2 = GetPlayerInfo( -1, "item", 37028 )
		$Item = $Item1 + $Item2
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You don't have a 13th VIP Noble Fashion Ticket." )
			return
		endif
		
		if $Item1 > 0 
			$SubItem = SubPlayerInfo( -1, "item", 37026, 1 )
			if $SubItem != 0
				return 
			endif
		
			$Sex = GetPlayerInfo( -1, "sex" )
			//sex=0 ?;
			if $Sex == 0
				AddPlayerInfo( -1, "item", 37016, 1 )
			else
				AddPlayerInfo( -1, "item", 37016, 1 )
			endif
			return
		endif
		
		if $Item2 > 0 
			$SubItem = SubPlayerInfo( -1, "item", 37028, 1 )
			if $SubItem != 0
				return 
			endif
		
			$Sex = GetPlayerInfo( -1, "sex" )
			//sex=0 ?;
			if $Sex == 0
				AddPlayerInfo( -1, "item", 37024, 1 )
			else
				AddPlayerInfo( -1, "item", 37024, 1 )
			endif
			BC( "dialogbox", "player", -1, "Due to your status as a Platinum VIP, you received some Platinum back gear!" )
			return
		endif
	}
	function OnOption2(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 44423 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You don't have a VIP V12 Noble Fashion Ticket." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44423, 1 )
		if $SubItem != 0
			return 
		endif
		
		$Sex = GetPlayerInfo( -1, "sex" )
		if $Sex == 0
			AddPlayerInfo( -1, "item", 36997, 1 )
		else
			AddPlayerInfo( -1, "item", 36998, 1 )
		endif
		
	}
	function OnOption3(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 44424 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You don't have a VIP V12 Noble Backgear Ticket." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44424, 1 )
		if $SubItem != 0
			return 
		endif
		
		$Sex = GetPlayerInfo( -1, "sex" )
		if $Sex == 0
			AddPlayerInfo( -1, "item", 36999, 1 )
		else
			AddPlayerInfo( -1, "item", 36999, 1 )
		endif
		
	}	
	function OnOption4(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 44229 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You don't have a VIP 11 Noble Fashion Ticket." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44229, 1 )
		if $SubItem != 0
			return 
		endif
		
		$Sex = GetPlayerInfo( -1, "sex" )
		if $Sex == 0
			AddPlayerInfo( -1, "item", 36986, 1 )
		else
			AddPlayerInfo( -1, "item", 36987, 1 )
		endif
		
	}
	function OnOption5(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 44230 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You don't have a VIP 11 Noble Back Gear Ticket." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44230, 1 )
		if $SubItem != 0
			return 
		endif
		
		$Sex = GetPlayerInfo( -1, "sex" )
		if $Sex == 0
			AddPlayerInfo( -1, "item", 36988, 1 )
		else
			AddPlayerInfo( -1, "item", 36988, 1 )
		endif
		
	}	
//	function OnOption4(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 44229 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "Sorry! You don't have a VIP 11 Noble Fashion Ticket." )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 44229, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36986, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36987, 1 )
//		endif
//		
//	}
//	
//	function OnOption5(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 44230 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "Sorry! You don't have a VIP 11 Noble Back Gear Ticket." )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 44230, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36988, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36988, 1 )
//		endif
//		
//	}	
//	function OnOption6(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 44162 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "Sorry! You don't have a VIP 10 Noble Fashion Ticket." )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 44162, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36955, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36956, 1 )
//		endif
//		
//	}
//	
//	function OnOption7(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 44163 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "Sorry! You don't have a VIP 10 Noble Back Gear Ticket." )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 44163, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36957, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36957, 1 )
//		endif
//		
//	}
//
//	function OnOption4(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 44136 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000023" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 44136, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36904, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36905, 1 )
//		endif
//		
//	}
//	
//	function OnOption5(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 44137 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000025" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 44137, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36906, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36906, 1 )
//		endif
//		
//	}

//	function OnOption4(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "GUID:08229000026" )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 59363 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000027" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 59363, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36900, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36901, 1 )
//		endif
//		
//	}
//	
//	function OnOption5(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 59364 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000029" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 59364, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36903, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36902, 1 )
//		endif
//		
//	}
	
	
//	function OnOption4(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 59810 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000031" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 59810, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36666, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36667, 1 )
//		endif
//		
//	}
//	
//	function OnOption5(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 59811 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000033" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 59811, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36669, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36668, 1 )
//		endif
//		
//	}
	
	
//	function OnOption4(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 59620 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000035" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 59620, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36647, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36648, 1 )
//		endif
//		
//	}
//	
//	function OnOption5(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 59621 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000037" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 59621, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36649, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36649, 1 )
//		endif
//		
//	}
	
		

//	function OnOption5(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 63772 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000039" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 63772, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36588, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36587, 1 )
//		endif
//		
//	}
//	
//	function OnOption6(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 63773 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000041" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 63773, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36590, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36589, 1 )
//		endif
//		
//	}
//	
//	//??????/????
//	function OnOption7(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 63832 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000043" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 63832, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36644, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36643, 1 )
//		endif
//		
//	}
//	//??????/????
//	function OnOption8(){
//	
//		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
//		//??????????
//		if $bag_count < 1
//			BC( "screen", "player", -1, "You do not have enough space in your bag." )
//			return
//		endif
//		
//		$Item = GetPlayerInfo( -1, "item", 63833 )
//		if $Item < 1
//			BC( "dialogbox", "player", -1, "GUID:08229000045" )
//			return
//		endif
//		
//		$SubItem = SubPlayerInfo( -1, "item", 63833, 1 )
//		if $SubItem != 0
//			return 
//		endif
//		
//		$Sex = GetPlayerInfo( -1, "sex" )
//		if $Sex == 0
//			AddPlayerInfo( -1, "item", 36646, 1 )
//		else
//			AddPlayerInfo( -1, "item", 36645, 1 )
//		endif
//		
//	}
	
	//????????
	function OnOption6(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 59543 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You do not have a Basic Deity Token." )
			return
		endif
		$Item = GetPlayerInfo( -1, "item", 59545 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You do not have a Bloodthirsty Token" )
			return
		endif
		
		
		$SubItem = SubPlayerInfo( -1, "item", 59543, 1 )
		if $SubItem != 0
			return 
		endif
		$SubItem = SubPlayerInfo( -1, "item", 59545, 1 )
		if $SubItem != 0
			return 
		endif
		
		AddPlayerInfo( -1, "item", 59546 , 1 )
		
	}
	
	//????????
	function OnOption7(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 59546 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You do not have a Basic Deity Token. Cannnot make an Advanced Deity Token." )
			return
		endif
		$Item = GetPlayerInfo( -1, "item", 59544 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "Sorry! You do not have an Advanced Deity Token." )
			return
		endif
		
		
		$SubItem = SubPlayerInfo( -1, "item", 59546, 1 )
		if $SubItem != 0
			return 
		endif
		$SubItem = SubPlayerInfo( -1, "item", 59544, 1 )
		if $SubItem != 0
			return 
		endif
		
		AddPlayerInfo( -1, "item", 59547 , 1 )
		
	}
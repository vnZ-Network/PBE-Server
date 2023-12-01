	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/13
	//		Author:??
	//		TaskName:HD-songhaoli.s
	//		TaskID:???????
	//
	//****************************************
	
	
	
	//?"GUID:05167000000"
	
	function OnOption0(){
	
		//???????
		$count = GetPlayerInfo( -1, "item", 63010)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63010, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 6034, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
		

	}
	
	//?"GUID:05167000004"
	function OnOption1(){
	
		//???????
		$count = GetPlayerInfo( -1, "item", 63011)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63011, 1 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 6035, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )

	}
	
	//?"GUID:05167000008"
	function OnOption2(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63012)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63012, 1 )
		//??????
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 6034, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
	
	}
	
	//?"GUID:05167000012"
	function OnOption3(){
	
		//???????
		$count = GetPlayerInfo( -1, "item", 63013)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63013, 1 )
		//??????
		if $result != 0
			return
		endif

		AddPlayerInfo( -1, "item", 6035, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
		
	}
	
	//?"GUID:05167000016"
	function OnOption4(){
		
		//???????
		$count = GetPlayerInfo( -1, "item", 63014)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63014, 1 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 6034, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
		
	
	
	}
	
	//?"GUID:05167000020"
	function OnOption5(){
		
		//???????
		$count = GetPlayerInfo( -1, "item", 63015)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63015, 1 )
		//??????
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 6035, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
	
	
	}
	
	//?"GUID:05167000024"
	function OnOption6(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63016)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have this word in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63016, 1 )
		//??????
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 6034, 1 )
		AddPlayerInfo( -1, "item", 6035, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
	
	}
	
	//?"GUID:05167000028"
	function OnOption7(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63010)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'Battle' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63011)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'of' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63012)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'the' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63013)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'Immortals' in your bag!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 63010, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63011, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63012, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63013, 1 )
		if $result != 0
			return
		endif
		
		//??????
		AddPlayerInfo( -1, "item", 64245, 1 )
		AddPlayerInfo( -1, "item", 6036, 1 )
		AddPlayerInfo( -1, "item", 6037, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
		
	}
	
	//?"GUID:05167000035"
	function OnOption8(){
		//???????
		$count = GetPlayerInfo( -1, "item", 63014)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'B' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63015)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'O' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63016)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'I' in your bag!" )
			return
		endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 63014, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63015, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63016, 1 )
		if $result != 0
			return
		endif
		//??????
		AddPlayerInfo( -1, "item", 64245, 1 )
		AddPlayerInfo( -1, "item", 64402, 1 )
		
		
		//AddPlayerInfo( -1, "item", 6036, 1 )
		//AddPlayerInfo( -1, "item", 6037, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
	}

	
	
	//??"GUID:05167000041"
	function OnOption9(){
		
		
		//???????
		$count = GetPlayerInfo( -1, "item", 63010)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'Battle' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63011)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'of' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63012)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'the' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63013)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'Immortals' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63014)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'B' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63015)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'O' in your bag!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 63016)
		if $count == 0
			BC( "dialogbox", "player", -1, "You don't have word 'I' in your bag!" )
			return
		endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$pet_count = GetPetCount( -1 )

		//??????????
		$pet_max_count = GetPetMaxCount( -1 )
		
		if $pet_count >= $pet_max_count
			BC( "dialogbox", "player", -1, "Please keep a pet slot empty then try again." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63010, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63011, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63012, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63013, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63014, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63015, 1 )
		if $result != 0
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63016, 1 )
		if $result != 0
			return
		endif
		//??7???????
  			
		$players_count = GetServerVar(906)
		$players_count = $players_count + 1
		SetServerVar( 906, $players_count )        		
		//??????
		
		AddPlayerInfo( -1, "item", 64246, 1 )
		
		$n = RandomNumber ( 1, 100 )
		//10%?????????,?????
		//????.?????????????$x??
		$x = RandomNumber ( 1, 100 )
		//????????
		$p = RandomNumber ( 1, 100 )
		#player_name = GetPlayerInfo( -1, "name" )	
		if $n > 90
			if $x < 80
				AddPet( -1, 1060, 1, 0 )	
				BC( "chat", "server", -1, "The hero ",#player_name," collects all 7 words ('Battle', 'of', 'the', 'Immortals', 'B', 'O', and 'I'), and acquire the Pet Archangel luckily!" )
				BC( "screen", "server", -1, "The hero ",#player_name," collects all 7 words ('Battle', 'of', 'the', 'Immortals', 'B', 'O', and 'I'), and acquire the Pet Archangel luckily!" )
			else
				if $x > 95
					AddPet( -1, 1062, 1, 0 )
					BC( "chat", "server", -1, "The hero ",#player_name," collects all 7 words ('Battle', 'of', 'the', 'Immortals', 'B', 'O', and 'I'), and acquire the Pet Mutant Archangel luckily!" )
					BC( "screen", "server", -1, "The hero ",#player_name," collects all 7 words ('Battle', 'of', 'the', 'Immortals', 'B', 'O', and 'I'), and acquire the Pet Mutant Archangel luckily!")
				else
					AddPet( -1, 1061, 1, 0 )
					BC( "chat", "server", -1, "The hero ",#player_name," collects all 7 words ('Battle', 'of', 'the', 'Immortals', 'B', 'O', and 'I'), and acquire the Pet Mutant Archangel luckily!" )
					BC( "screen", "server", -1, "The hero ",#player_name," collects all 7 words ('Battle', 'of', 'the', 'Immortals', 'B', 'O', and 'I'), and acquire the Pet Mutant Archangel luckily!" )					
				endif
			endif
		else
			if $p >= 45
				AddPlayerInfo( -1, "item", 63215, 1 )
			else
				AddPlayerInfo( -1, "item", 63216, 1 )
			endif	
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
	
	}
	//???????
	function OnOption10(){
		
		$count = GetPlayerInfo( -1, "item", 63215)
		if $count < 2
			BC( "dialogbox", "player", -1, "You have not got 2 Angel Feather." )
			return
		endif
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		

		
		$result = SubPlayerInfo( -1, "item", 63215, 2 )
		if $result != 0
			return
		endif
		
		//??????
		AddPlayerInfo( -1, "item", 63216, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
		
		
	}
	//???????
	function OnOption11(){
		$count = GetPlayerInfo( -1, "item", 63216)
		if $count < 2
			BC( "dialogbox", "player", -1, "You have not got 2 Angel Heart." )
			return
		endif
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif

		$result = SubPlayerInfo( -1, "item", 63216, 2 )
		if $result != 0
			return
		endif
		
		//??????
		AddPlayerInfo( -1, "item", 63215, 1 )
		BC( "screen", "player", -1, "Exchange succeeds!" )
		
	}
	//???+????????
	function OnOption12(){
		
		$count = GetPlayerInfo( -1, "item", 63215)
		if $count < 1
			BC( "dialogbox", "player", -1, "You have not got Angel Feather." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 63216)
		if $count < 1
			BC( "dialogbox", "player", -1, "You have not got Angel Heart." )
			return
		endif
		
		//??????????
		$pet_max_count = GetPetMaxCount( -1 )
		$pet_count = GetPetCount( -1 )
		
		if $pet_count >= $pet_max_count
			BC( "dialogbox", "player", -1, "Please keep a pet slot empty then try again." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63215, 1 )
		if $result != 0
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63216, 1 )
		if $result != 0
			return
		endif
		
		//??????
		$x = RandomNumber ( 1, 100 )
		
		#player_name = GetPlayerInfo( -1, "name" )
		if $x < 80
			AddPet( -1, 1060, 1, 0 )	
			BC( "chat", "server", -1, "The hero ",#player_name,"You got pet Archangel." )
			BC( "screen", "server", -1, "The hero ",#player_name,"You got pet Archangel." )
		else
			if $x > 95
				AddPet( -1, 1062, 1, 0 )
				BC( "chat", "server", -1, "The hero ",#player_name,"You got pet Mutant Archangel." )
				BC( "screen", "server", -1, "The hero ",#player_name,"You got pet Mutant Archangel.")
			else
				AddPet( -1, 1061, 1, 0 )
				BC( "chat", "server", -1, "The hero ",#player_name,"You got pet Mutant Archangel." )
				BC( "screen", "server", -1, "The hero ",#player_name,"You got pet Mutant Archangel." )					
			endif
		endif
		BC( "screen", "player", -1, "Exchange succeeds!" )
	}
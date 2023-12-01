	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-4-26
	//		Author:???-??
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){

	
	}

//5???????,??5?????
	function OnOption0(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4241)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV1 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4241, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4001, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5???????,??5??????
	function OnOption1(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4241)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV1 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4241, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4011, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5???????,??5????
	function OnOption2(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4241)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV1 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4241, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4021, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//5???????,??5??????
	function OnOption3(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4241)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV1 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4241, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4031, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	
	//??????
	function OnOption4(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4242)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV2 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4242, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4002, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	
	//???????
	function OnOption5(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4242)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV2 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4242, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4012, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//???
	function OnOption6(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4242)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV2 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4242, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4022, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//?????
	function OnOption7(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4242)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV2 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4242, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4032, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//????
	function OnOption8(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4243)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV3 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4243, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4003, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//?????
	function OnOption9(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4243)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV3 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4243, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4013, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//???
	function OnOption10(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4243)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV3 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4243, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4023, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//?????
	function OnOption11(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4243)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV3 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4243, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4033, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	
	//????
	function OnOption12(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4244)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV4 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4244, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4004, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	
	//????
	function OnOption13(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4244)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV4 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4244, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4014, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	
	//??
	function OnOption14(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4244)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV4 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4244, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4024, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	
	//?????
	function OnOption15(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4244)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV4 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4244, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4034, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	
	//????
	
	function OnOption16(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4245)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV5 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4245, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4005, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//????
	
	function OnOption17(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4245)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV5 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4245, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4015, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//???
	
	function OnOption18(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4245)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV5 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4245, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4025, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//????????
	
	function OnOption19(){
	
		//????
		$count = GetPlayerInfo( -1, "item", 4245)
		if $count < 25
			BC( "screen", "player", -1, "You have less than 25 LV5 Stardust!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 4245, 25 )
		//??????
		
		if $result != 0
			return
		endif
		AddPlayerInfo( -1, "item", 4035, 25 )
		BC( "screen", "player", -1, "Exchange completed." )
	}
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:???
	//		TaskName:HD-Pyramid-NPC-1789.s
	//		TaskID:???
	//
	//****************************************
	
	function OnRequest(){
		//??????
		$Line = GetServerLineID()
		if $Line != 8
			if $Line != 7
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
			endif
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 65
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		
	}
	
	
	function OnOption0(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 65
			BC( "dialogbox", "player", -1, "You cannot do that until level 65." )
			return
		endif
		$FlyX = 62
		$FlyY = 69
		FlyToMap( -1, 204, $FlyX, $FlyY, 1 )
	}
	
	function OnOption1(){
		$PlayerVar = GetPlayerVar( -1, 3657 )
		$RankList = GetRankListValue( 1, 499 )
		
		//????
		if $RankList < 75
		
				if $PlayerVar == 0
					BC( "dialogbox", "player", -1, "No comment reward available now." )
					return
				endif
				
				if $PlayerVar == 1
					AddPlayerInfo( -1, "money", 40000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got a C Rank, earning 40,000 Coins!" )
				endif
				
				if $PlayerVar == 2
					AddPlayerInfo( -1, "money", 80000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got a B Rank, earning 80,000 Coins!" )
				endif
				
				if $PlayerVar == 3
					AddPlayerInfo( -1, "money", 150000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an A Rank, earning 150,000 Coins!" )
				endif
				
				if $PlayerVar == 4
					AddPlayerInfo( -1, "money", 250000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an S Rank, earning 250,000 Coins!" )
				endif
				
				$NullItem = GetPlayerInfo( -1, "nullitem", 0 )
				if $NullItem < 1
					BC( "dialogbox", "player", -1, "Insufficient bag slots" )
					return
				endif
				
				if $PlayerVar == 5
					AddPlayerInfo( -1, "money", 250000 )
					AddPlayerInfo( -1, "item", 59838, 1 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an SS Rank, earning 250,000 Coins and a LV2 Gem Coin!" )		
				endif
		endif
	
		//1???
		if $RankList >= 75
			if $RankList <= 89
		
				if $PlayerVar == 0
					BC( "dialogbox", "player", -1, "No comment reward available now." )
					return
				endif
				
				if $PlayerVar == 1
					AddPlayerInfo( -1, "money", 50000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations! You've achieved the Rank: C, and gained 50000 coins!" )
				endif
				
				if $PlayerVar == 2
					AddPlayerInfo( -1, "money", 100000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations! You've achieved the Rank: B, and gained 100000 coins!" )
				endif
				
				if $PlayerVar == 3
					AddPlayerInfo( -1, "money", 200000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations! You've achieved the Rank: A, and gained 200000 coins!" )
				endif
				
				if $PlayerVar == 4
					AddPlayerInfo( -1, "money", 300000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations! You've achieved the Rank: S, and gained 300000 coins!" )
				endif
				
				$NullItem = GetPlayerInfo( -1, "nullitem", 0 )
				if $NullItem < 1
					BC( "dialogbox", "player", -1, "Insufficient bag slots" )
					return
				endif
				
				if $PlayerVar == 5
					AddPlayerInfo( -1, "money", 300000 )
					AddPlayerInfo( -1, "item", 59838, 1 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations, you have earned an SS Rank! You have been awarded 300,000 Coins and a LV2 Gem Coin." )		
				endif
			endif
		endif
	
	//2???
		if $RankList >= 90
			if $RankList <= 99
		
				if $PlayerVar == 0
					BC( "dialogbox", "player", -1, "No comment reward available now." )
					return
				endif
				
				if $PlayerVar == 1
					AddPlayerInfo( -1, "money", 50000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations! You've achieved the Rank: C, and gained 50000 coins!" )
				endif
				
				if $PlayerVar == 2
					AddPlayerInfo( -1, "money", 100000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations! You've achieved the Rank: B, and gained 100000 coins!" )
				endif
				
				if $PlayerVar == 3
					AddPlayerInfo( -1, "money", 200000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations! You've achieved the Rank: A, and gained 200000 coins!" )
				endif
				
				if $PlayerVar == 4
					AddPlayerInfo( -1, "money", 300000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations! You've achieved the Rank: S, and gained 300000 coins!" )
				endif
				
				$NullItem = GetPlayerInfo( -1, "nullitem", 0 )
				if $NullItem < 1
					BC( "dialogbox", "player", -1, "Insufficient bag slots" )
					return
				endif
				
				if $PlayerVar == 5
					AddPlayerInfo( -1, "money", 300000 )
					AddPlayerInfo( -1, "item", 59838, 1 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulations, you have earned an SS Rank! You have been awarded 300,000 Coins and a LV2 Gem Coin." )		
				endif
			endif
		endif
	
	//3???
		if $RankList >= 100
			if $RankList <= 109
		
				if $PlayerVar == 0
					BC( "dialogbox", "player", -1, "No comment reward available now." )
					return
				endif
				
				if $PlayerVar == 1
					AddPlayerInfo( -1, "money", 75000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got a C Rank, earning 75,000 Coins!" )
				endif
				
				if $PlayerVar == 2
					AddPlayerInfo( -1, "money", 150000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got a B Rank, earning 150,000 Coins!" )
				endif
				
				if $PlayerVar == 3
					AddPlayerInfo( -1, "money", 250000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an A Rank, earning 250,000 Coins!" )
				endif
				
				if $PlayerVar == 4
					AddPlayerInfo( -1, "money", 350000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an S Rank, earning 350,000 Coins!" )
				endif
				
				$NullItem = GetPlayerInfo( -1, "nullitem", 0 )
				if $NullItem < 1
					BC( "dialogbox", "player", -1, "Insufficient bag slots" )
					return
				endif
				
				if $PlayerVar == 5
					AddPlayerInfo( -1, "money", 350000 )
					AddPlayerInfo( -1, "item", 59838, 1 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an SS Rank, earning 350,000 Coins!" )		
				endif
			endif
		endif
				
		//4???
		if $RankList >= 110
			if $RankList <= 119
		
				if $PlayerVar == 0
					BC( "dialogbox", "player", -1, "No comment reward available now." )
					return
				endif
				
				if $PlayerVar == 1
					AddPlayerInfo( -1, "money", 100000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got a C Rank, earning 100,000 Coins!" )
				endif
				
				if $PlayerVar == 2
					AddPlayerInfo( -1, "money", 200000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got a B Rank, earning 200,000 Coins!" )
				endif
				
				if $PlayerVar == 3
					AddPlayerInfo( -1, "money", 300000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an A Rank, earning 300,000 Coins!" )
				endif
				
				if $PlayerVar == 4
					AddPlayerInfo( -1, "money", 400000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an S Rank, earning 400,000 Coins!" )
				endif
				
				$NullItem = GetPlayerInfo( -1, "nullitem", 0 )
				if $NullItem < 1
					BC( "dialogbox", "player", -1, "Insufficient bag slots" )
					return
				endif
				
				if $PlayerVar == 5
					AddPlayerInfo( -1, "money", 400000 )
					AddPlayerInfo( -1, "item", 59838, 1 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an SS Rank, earning 400,000 Coins and a LV2 Gem Coin!" )		
				endif
			endif
		endif
	
	//5???
		if $RankList >= 120
		
				if $PlayerVar == 0
					BC( "dialogbox", "player", -1, "No comment reward available now." )
					return
				endif
				
				if $PlayerVar == 1
					AddPlayerInfo( -1, "money", 150000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got a C Rank, earning 150,000 Coins!" )
				endif
				
				if $PlayerVar == 2
					AddPlayerInfo( -1, "money", 300000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got a B Rank, earning 300,000 Coins!" )
				endif
				
				if $PlayerVar == 3
					AddPlayerInfo( -1, "money", 400000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an A Rank, earning 400,000 Coins!" )
				endif
				
				if $PlayerVar == 4
					AddPlayerInfo( -1, "money", 500000 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an S Rank, earning 500,000 Coins!" )
				endif
				
				$NullItem = GetPlayerInfo( -1, "nullitem", 0 )
				if $NullItem < 1
					BC( "dialogbox", "player", -1, "Insufficient bag slots" )
					return
				endif
				
				if $PlayerVar == 5
					AddPlayerInfo( -1, "money", 500000 )
					AddPlayerInfo( -1, "item", 59838, 1 )
					SetPlayerVar( -1, 3657, 0 )
					BC( "screen", "player", -1, "Congratulatons! You got an SS Rank, earning 500,000 Coins and a LV2 Gem Coin!" )		
				endif
		endif
	
	}
	
	function OnOption2(){
		$PlayerVar1 = GetPlayerVar( -1, 3653 )
		$PlayerVar2 = GetPlayerVar( -1, 3654 )
		$PlayerVar3 = GetPlayerVar( -1, 3655 )
		$PlayerVar4 = GetPlayerVar( -1, 3656 )
		$PlayerVar5 = GetPlayerVar( -1, 3682 )
		
		BC( "dialogbox", "player", -1, "Rank Details:\nRank SS -",$PlayerVar5," accomplishments.\nRank S -",$PlayerVar1," accomplishments.\nRank A -",$PlayerVar2," accomplishments.\nRank B -",$PlayerVar3," accomplishments.\nRank C -",$PlayerVar4," accomplishments." )
	}
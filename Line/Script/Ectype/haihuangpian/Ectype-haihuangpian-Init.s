	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/1
	//		Author:???
	//		TaskName:Ectype-yilonghuangu-Init.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnCreate(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		//??????
		AddMonsterByFloat( 51649 , 1 , $ectype_ID , 163 , 140 , 0 )
		
		
		//????????????????
		$RankList = GetRankListValue( 1, 200 )
		
		if $RankList >= 0
			if $RankList <= 90
				//7????
				AddLevelMonster( 51641 , 56 , $RankList , 1 , $ectype_ID , 65 , 22 , 0 )
				AddLevelMonster( 51642 , 56 , $RankList , 1 , $ectype_ID , 105 , 45 , 0 )
				AddLevelMonster( 51643 , 56 , $RankList , 1 , $ectype_ID , 77 , 109 , 0 )
				AddLevelMonster( 51644 , 56 , $RankList , 1 , $ectype_ID , 38 , 102 , 0 )
				AddLevelMonster( 51645 , 56 , $RankList , 1 , $ectype_ID , 16 , 75 , 0 )
				AddLevelMonster( 51646 , 56 , $RankList , 1 , $ectype_ID , 17 , 39 , 0 )
				AddLevelMonster( 51647 , 56 , $RankList , 1 , $ectype_ID , 37 , 22 , 0 )
			endif
		endif
		
		if $RankList > 90
			if $RankList <= 100
				//7????
				AddLevelMonster( 51641 , 57 , $RankList , 1 , $ectype_ID , 65 , 22 , 0 )
				AddLevelMonster( 51642 , 57 , $RankList , 1 , $ectype_ID , 105 , 45 , 0 )
				AddLevelMonster( 51643 , 57 , $RankList , 1 , $ectype_ID , 77 , 109 , 0 )
				AddLevelMonster( 51644 , 57 , $RankList , 1 , $ectype_ID , 38 , 102 , 0 )
				AddLevelMonster( 51645 , 57 , $RankList , 1 , $ectype_ID , 16 , 75 , 0 )
				AddLevelMonster( 51646 , 57 , $RankList , 1 , $ectype_ID , 17 , 39 , 0 )
				AddLevelMonster( 51647 , 57 , $RankList , 1 , $ectype_ID , 37 , 22 , 0 )
			endif
		endif
		
		if $RankList > 100
			if $RankList <= 110
				//7????
				AddLevelMonster( 51641 , 58 , $RankList , 1 , $ectype_ID , 65 , 22 , 0 )
				AddLevelMonster( 51642 , 58 , $RankList , 1 , $ectype_ID , 105 , 45 , 0 )
				AddLevelMonster( 51643 , 58 , $RankList , 1 , $ectype_ID , 77 , 109 , 0 )
				AddLevelMonster( 51644 , 58 , $RankList , 1 , $ectype_ID , 38 , 102 , 0 )
				AddLevelMonster( 51645 , 58 , $RankList , 1 , $ectype_ID , 16 , 75 , 0 )
				AddLevelMonster( 51646 , 58 , $RankList , 1 , $ectype_ID , 17 , 39 , 0 )
				AddLevelMonster( 51647 , 58 , $RankList , 1 , $ectype_ID , 37 , 22 , 0 )
			endif
		endif
		
		if $RankList > 110
			if $RankList <= 120
				//7????
				AddLevelMonster( 51641 , 59 , $RankList , 1 , $ectype_ID , 65 , 22 , 0 )
				AddLevelMonster( 51642 , 59 , $RankList , 1 , $ectype_ID , 105 , 45 , 0 )
				AddLevelMonster( 51643 , 59 , $RankList , 1 , $ectype_ID , 77 , 109 , 0 )
				AddLevelMonster( 51644 , 59 , $RankList , 1 , $ectype_ID , 38 , 102 , 0 )
				AddLevelMonster( 51645 , 59 , $RankList , 1 , $ectype_ID , 16 , 75 , 0 )
				AddLevelMonster( 51646 , 59 , $RankList , 1 , $ectype_ID , 17 , 39 , 0 )
				AddLevelMonster( 51647 , 59 , $RankList , 1 , $ectype_ID , 37 , 22 , 0 )
			endif
		endif
		
		if $RankList > 120
			if $RankList <= 200
				//7????
				AddLevelMonster( 51641 , 60 , $RankList , 1 , $ectype_ID , 65 , 22 , 0 )
				AddLevelMonster( 51642 , 60 , $RankList , 1 , $ectype_ID , 105 , 45 , 0 )
				AddLevelMonster( 51643 , 60 , $RankList , 1 , $ectype_ID , 77 , 109 , 0 )
				AddLevelMonster( 51644 , 60 , $RankList , 1 , $ectype_ID , 38 , 102 , 0 )
				AddLevelMonster( 51645 , 60 , $RankList , 1 , $ectype_ID , 16 , 75 , 0 )
				AddLevelMonster( 51646 , 60 , $RankList , 1 , $ectype_ID , 17 , 39 , 0 )
				AddLevelMonster( 51647 , 60 , $RankList , 1 , $ectype_ID , 37 , 22 , 0 )
			endif
		endif

	}
	
	
	//??????
	function InitTimer(){
	
	    //??????????
	    SetEctypeTimer( 0 , 1 , "EctypeTime1" )
	 	
	}


	//????
	function EctypeTime1(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		//????
		OpenMask( 8 , $ectype_ID )
		
		BC( "screen" , "servergroup" , -1 , "Poseidon's Palace has been unsealed! Defeat Poseidon and save Athena!"  )
		BC( "chat" , "servergroup" , -1 , "Poseidon's Palace has been unsealed! Defeat Poseidon and save Athena!"  )
		
	}
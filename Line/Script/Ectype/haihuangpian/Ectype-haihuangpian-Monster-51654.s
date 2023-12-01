   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/1
	//		Author: ???
	//		TaskName:Ectype-haihuangpian-Monster-51652-58.s
	//		TaskID:
	//****************************************
	
	
	function OnDead(){
		
		
		//?????100%????????
		#name = GetPlayerInfo( -1 , "name" )
		
		//DropMonsterItems( -1 , 90092 )
		
		BC( "screen" , "servergroup" , -1 , "The hero " , #name , " has destroyed the Pillar of the North Pacific and opened the seal!"  )
		BC( "chat" , "servergroup" , -1 , "The hero " , #name , " has destroyed the Pillar of the North Pacific and opened the seal!"  )
		
		
		//??30???
		//$x = GetPlayerInfo( -1 , "mapx" )
		//$y = GetPlayerInfo( -1 , "mapy" )
		
		//AddMonsterByFloat( 51650 , 30 , 273 , 201 , 278 , 5 )
		//AddMonster( 51650 , 30 , 273 , 79 , 109 , 5 )
		
		
		//????
		OpenMask( 4 , 273 )
		
		//??????????
		DeleteNPC( 2238 )
		
		
		//?????????,????7?,5????????
		$count = GetServerVar( 142 )
		$count = $count + 1
		SetServerVar( 142 , $count )
		
		if $count == 7
			BC( "screen" , "servergroup" , -1 , "The 7 oceans have been unsealed! Poseidon will appear in 5 minutes!"  )
			BC( "chat" , "servergroup" , -1 , "The 7 oceans have been unsealed! Poseidon will appear in 5 minutes!"  )
			
			//??????,5???????????8
			$level = GetRankListValue( 1, 200 )
			if $level <= 0
				$level = 80
			endif
			AddLevelMonster( 51659 , 57 , $level , 1 , 273 , 61 , 64 , 0 )
			
			//???????
			DeleteMonster( 273 , 51649 )
		 	
		endif
		
	}
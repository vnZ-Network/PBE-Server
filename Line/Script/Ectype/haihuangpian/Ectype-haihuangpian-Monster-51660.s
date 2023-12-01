   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/1
	//		Author: ???
	//		TaskName:Ectype-haihuangpian-Monster-51660.s
	//		TaskID:
	//****************************************
	
	
	function OnDead(){	
		
		//??5?????
		DropMonsterItems( -1 , 90095 )
		
		//?????100%????????
		#name = GetPlayerInfo( -1 , "name" )
		
		BC( "screen" , "servergroup" , -1 , "The hero " , #name , " has obtained Poseidon's Force by saving Athena! All hail the hero of Atlantis!"  )
		BC( "chat" , "servergroup" , -1 , "The hero " , #name , " has obtained Poseidon's Force by saving Athena! All hail the hero of Atlantis!"  )
		
		
		//??50???
		$x = GetPlayerInfo( -1 , "mapx" )
		$y = GetPlayerInfo( -1 , "mapy" )
		
		AddMonster( 51651 , 50 , 273 , $x , $y , 10 )
		
		AddNPC( 2252 )
			
	}
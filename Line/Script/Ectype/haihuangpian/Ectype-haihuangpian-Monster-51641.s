   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/1
	//		Author: ???
	//		TaskName:Ectype-haihuangpian-Monster-51641-51647.s
	//		TaskID:
	//****************************************
	
	
	function OnDead(){
		
		//??????????NPC,?????
		DeleteNPC( 2200 )
		
		AddMonsterByFloat( 51652 , 1 , 273 , 168 , 42 , 0 )
		
		//???
		DropMonsterItems( -1 , 90092 )
		AddMonster( 51650 , 30 , 273 , 65 , 20 , 5 )
		
		#name = GetPlayerInfo( -1 , "name" )
		BC( "screen" , "servergroup" , -1 , "The hero " , #name , " has defeated one of Poseidon's lieutenants and destroyed The Pillar of the North Atlantic!"  )
		BC( "chat" , "servergroup" , -1 , "The hero " , #name , " has defeated one of Poseidon's lieutenants and destroyed The Pillar of the North Atlantic!"  )
		
	}
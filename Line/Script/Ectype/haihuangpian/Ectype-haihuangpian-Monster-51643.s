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
		DeleteNPC( 2202 )
		
		AddMonsterByFloat( 51654 , 1 , 273 , 204 , 283 , 0 )
		
		//???
		DropMonsterItems( -1 , 90092 )
		AddMonster( 51650 , 30 , 273 , 78 , 108 , 5 )
		
		#name = GetPlayerInfo( -1 , "name" )
		BC( "screen" , "servergroup" , -1 , "The hero " , #name , " has defeated one of Poseidon's lieutenants and destroyed The Pillar of the North Pacific!"  )
		BC( "chat" , "servergroup" , -1 , "The hero " , #name , " has defeated one of Poseidon's lieutenants and destroyed The Pillar of the North Pacific!"  )
		
	}
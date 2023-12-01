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
		DeleteNPC( 2204 )
		
		AddMonsterByFloat( 51656 , 1 , 273 , 35 , 190 , 0 )
		
		//???
		DropMonsterItems( -1 , 90092 )
		AddMonster( 51650 , 30 , 273 , 17 , 74 , 5 )
		
		
		#name = GetPlayerInfo( -1 , "name" )
		BC( "screen" , "servergroup" , -1 , "The hero " , #name , " has defeated one of Poseidon's lieutenants and destroyed The Pillar of the Antarctic!"  )
		BC( "chat" , "servergroup" , -1 , "The hero " , #name , " has defeated one of Poseidon's lieutenants and destroyed The Pillar of the Antarctic!"  )
		
	}
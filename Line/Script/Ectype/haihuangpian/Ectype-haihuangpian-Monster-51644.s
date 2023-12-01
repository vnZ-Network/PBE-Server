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
		DeleteNPC( 2203 )
		
		AddMonsterByFloat( 51655 , 1 , 273 , 99 , 269 , 0 )
		
		//???
		DropMonsterItems( -1 , 90092 )
		AddMonster( 51650 , 30 , 273 , 39 , 102 , 5 )
		
		#name = GetPlayerInfo( -1 , "name" )
		BC( "screen" , "servergroup" , -1 , "The hero " , #name , " has defeated one of Poseidon's lieutenants and destroyed The Pillar of the South Pacific!"  )
		BC( "chat" , "servergroup" , -1 , "The hero " , #name , " has defeated one of Poseidon's lieutenants and destroyed The Pillar of the South Pacific!"  )
		
	}
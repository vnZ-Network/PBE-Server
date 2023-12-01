   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/1
	//		Author: ???
	//		TaskName:Ectype-haihuangpian-Monster-51641-51647.s
	//		TaskID:
	//****************************************
	
	
	function OnDead(){
		
		BC( "screen" , "server" , -1 , "Poseidon's Palace has been unsealed! Defeat Poseidon and save Athena to get Poseidon's Force!" )
		BC( "screen" , "server" , -1 , "Poseidon's Palace has been unsealed! Defeat Poseidon and save Athena to get Poseidon's Force!" )
		BC( "chat" , "server" , -1 , "Poseidon's Palace has been unsealed! Defeat Poseidon and save Athena to get Poseidon's Force!" )
		
		
		//??50???
		//$x = GetPlayerInfo( -1 , "mapx" )
		//$y = GetPlayerInfo( -1 , "mapy" )
		
		//AddMonster( 51651 , 50 , 273 , $x , $y , 10 )
		
		//???????
		OpenMask( 9 , 273 )
			
	}
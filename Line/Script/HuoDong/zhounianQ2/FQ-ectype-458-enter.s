	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:Ectype-shiliandongku-enter.s
	//		TaskID:????-?????
	//
	//****************************************

	function OnCreate(){
		
	}
	
	function InitTimer(){
		$ectype_id = GetEctypeID( -1 , 458 )
		//???
		SetEctypeTimer( 1 , 3 , "EctypeTime0" )
		//??-???
	}

	function EctypeTime0(){
		
		$ectype_id = GetEctypeID( -1 , 458 )
		BC( "screen" , "map" , $ectype_id , "You entered the Burning Realm. Click on the Scarlet Phoenix Core to begin the Trial of Flame."  )
		
//		AddMonsterByFloat( 51733 , 5, $ectype_id, 97, 154, 2 )
//		AddMonsterByFloat( 51733 , 5, $ectype_id, 106, 154, 2 )
//		
//		AddMonsterByFloat( 51733 , 5, $ectype_id, 94, 162, 2 )
//		AddMonsterByFloat( 51733 , 5, $ectype_id, 110, 162, 2 )
//		
//		AddMonsterByFloat( 51733 , 5, $ectype_id, 97, 169, 2 )
//		AddMonsterByFloat( 51733 , 5, $ectype_id, 106, 169, 2 )
//		
//		AddMonsterByFloat( 51733 , 5, $ectype_id, 102, 162, 2 )

		AddMonster( 51733, 5, $ectype_id, 38, 60, 5 )
		AddMonster( 51733, 5, $ectype_id, 41, 60, 5 )
		
		AddMonster( 51733, 5, $ectype_id, 37, 63, 5 )
		AddMonster( 51733, 5, $ectype_id, 43, 63, 5 )
		
		AddMonster( 51733, 5, $ectype_id, 38, 66, 5 )
		AddMonster( 51733, 5, $ectype_id, 41, 66, 5 )
		
		AddMonster( 51733, 3, $ectype_id, 40, 63, 5 )
		
	}
	
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Milya-Ectype-quest-133.s
	//		TaskID: ?? 133???????
	//
	//****************************************
	
	function OnTaskAccept(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		DeleteNPC( 385 , $ectype_id )
		AddMonsterByFloat( 55065 , 1 , $ectype_id , 169, 131, 0 )
		
	}

	function OnTaskDone(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		SetPlayerVar( -1 , 45 , 1 )
		SetPlayerVar( -1 , 42 , 1 )
		StartEctypeTimer ($ectype_id , 2 )
		NPCAction(-1,384,frie,0)
		NPCAction(-1,388,frie,0)
		BC( "screen" , "player" , -1 , "The door of the grave has been opened, you can enter the Crypt of the Arch Priestess." )
		BC( "chat" , "player" , -1 , "The door of the grave has been opened, you can enter the Crypt of the Arch Priestess." )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	}
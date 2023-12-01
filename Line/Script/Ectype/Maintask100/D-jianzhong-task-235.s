	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/29
	//		Author:???
	//		TaskName:97-task-235.s
	//		TaskID:  XXX
	//
	//****************************************
	
	
	function OnTaskAccept(){
		$ectype_id = GetEctypeID( -1 , 255 )
		
		BC( "chat" , "player" , -1 , "Danger, Evil Spirit is here!" )
		BC( "screen" , "player" , -1 , "Danger, Evil Spirit is here!" )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
		AddMonsterByFloat( 59130, 1 , $ectype_id, 152 , 147 , 0 )
		
		$posx1 = 155
		$posy1 = 151
		AddMonsterByFloat( 59113, 1 , $ectype_id, $posx1 , $posy1 , 0 )
	
		$posx2 = 151
		$posy2 = 152
		AddMonsterByFloat( 59114, 1 , $ectype_id, $posx2 , $posy2 , 0 )
		
		$posx3 = 147
		$posy3 = 149
		AddMonsterByFloat( 59115, 1 , $ectype_id, $posx3 , $posy3 , 0 )
		
		$posx4 = 147
		$posy4 = 145
		AddMonsterByFloat( 59116, 1 , $ectype_id, $posx4 , $posy4 , 0 )
		
		$posx5 = 151
		$posy5 = 142
		AddMonsterByFloat( 59117, 1 , $ectype_id, $posx5 , $posy5 , 0 )
		
		$posx6 = 155
		$posy6 = 143
		AddMonsterByFloat( 59118, 1 , $ectype_id, $posx6 , $posy6 , 0 )
		
		$posx7 = 157
		$posy7 = 147
		AddMonsterByFloat( 59119, 1 , $ectype_id, $posx7 , $posy7 , 0 )
	}
	
	function OnTaskDone(){
	
	}
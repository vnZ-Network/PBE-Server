	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-area.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnCreate(){
		$id = GetEctypeID( -1, 217 )
		//??????
		$delgate2 = DeleteNPC( 239, -1 )
		//????
		$addboss = AddMonsterByFloat( 55040, 1, $id, 104, 162, 0 )
		DeleteNPC( 411, -1 )
		DeleteNPC( 412, -1 )

		BC( "chat", "player", -1, "A great power is blocking the entrance, you have no way to go back." )
		BC( "screen", "player", -1, "A great power is blocking the entrance, you have no way to go back." )
	 }
		
		
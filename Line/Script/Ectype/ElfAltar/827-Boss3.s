	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/10
	//		Author:???(??,??,??)
	//		TaskName:??????BOSS npc
	//		TaskID:827-Boss3.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$Boss3 = 52388
		AddMonsterByFloat($Boss3,1,$ectype_id,75,103,1,0,90)

		//????BOSS2???		
		SetEctypeVar($ectype_id,50,2)
		SetEctypeVar($ectype_id,82,2)
		//???????,????????,AI??1
		SetEctypeVar($ectype_id,84,0)
		SetEctypeVar(-1,80,100)
		SetEctypeVar(-1,81,1)							
		StartEctypeTimer($ectype_id,4)
		DeleteNPC(827,-1)
		BC("screen","map",$ectype_id,"Sylvani Oakleaf: Face this test of nature!")	
		
		

}
	
	function OnOption0(){
		
	}
	
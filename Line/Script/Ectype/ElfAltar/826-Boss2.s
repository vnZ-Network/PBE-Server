	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/10
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:826-Boss2.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$Boss2 = 52384
		AddMonsterByFloat($Boss2,1,$ectype_id,167,240,1,0,300)

		//???????,????????,AI??1
		SetEctypeVar($ectype_id,84,0)
		StartEctypeTimer($ectype_id,4)
		SetEctypeVar(-1,80,110)
		SetEctypeVar(-1,81,1)
		
		//??BOSS1???
		SetEctypeVar($ectype_id,82,2)

		

		DeleteNPC(826,-1)
		BC("screen","map",$ectype_id,"Valis Hailstorm: Face this test of ice!")		
				
		

}
	
	function OnOption0(){
		
	}
	
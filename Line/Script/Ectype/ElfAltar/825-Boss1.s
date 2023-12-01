	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/10
	//		Author:???(??,??,??)
	//		TaskName:????????
	//		TaskID:825-Boss1.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$a = 52429
		$Boss1 = 52380
		//?boss
		AddMonsterByFloat($Boss1,1,$ectype_id,216,80,1,0,60)		
		
		//????,??????120?  ????????? 1
		StartEctypeTimer($ectype_id,4)
		SetEctypeVar(-1,80,120)
		SetEctypeVar(-1,81,1)
		
		DeleteNPC(825,-1)
		BC("screen","map",$ectype_id,"Lantia Wildblaze: Face this test of fire!")


}
	
	function OnOption0(){
		
	}
	
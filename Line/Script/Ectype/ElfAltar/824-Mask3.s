	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/19
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：精灵祭坛第三道门
	//		TaskID：824-Mask3.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		OpenMask(3,$ectype_id)
		DeleteNPC(824,-1)
		StartEctypeTimer($ectype_id,0)

}
	
	function OnOption0(){
		
	}
	
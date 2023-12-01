	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/04
	//		Author：杨海勇
	//		TaskName：Ectype-yilonghuangu-Npc-2052.s
	//		TaskID：传送出副本
	//
	//****************************************
	//
	
	
	//副本编号228
	//最后一次完成副本的日期       3769
	//今天创建副本的次数           3408
	//玩家参与最后一次翼龙幻谷副本的唯一ID     3810
	
	
	//option0  普通难度进入副本
	//option1  返回副本
	
	
	
	function OnRequest(){
		
		
	}
	
	
	//出副本
	function OnOption0(){
		
		FlyToMap( -1 , 227 , 25 , 65 )
		//$ectype_ID = GetEctypeID( -1 , 228 )
		//FlyToMap( -1 , $ectype_ID , 44 , 44 )
		//AddNPC( 2055 , -1 )
		//AddNPC( 2056 , -1 )
		
	}
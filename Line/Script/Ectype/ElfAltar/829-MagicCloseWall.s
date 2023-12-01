	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/08/10
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：去掉所有阻挡
	//		TaskID：829-MagicCloseWall.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		$Switch = GetEctypeVar($ectype_id,29)
		
		if $Switch == 1
			DisableNpcOption(0)
		endif
		

}
	
	function OnOption0(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$Switch = GetEctypeVar($ectype_id,29)
		
		if $Switch == 1
			return
		endif
		
		//删除周围的魔法墙 52438
		DeleteMonster($ectype_id, 52438)
		PlayEffect(0,"common\fuhuo\tx_fuhuo_01.ini")
		
		//加NPC 命运女神 831   删除NPC 2个传送门 828 830
		AddNPC(831,-1)
		DeleteNPC(828,-1)
		DeleteNPC(830,-1)
		
		//记录开关 1 
		SetEctypeVar($ectype_id,29,1)
		
		//开启计时器刷怪
		StartEctypeTimer($ectype_id,0)
				
		
		
	}
	
	
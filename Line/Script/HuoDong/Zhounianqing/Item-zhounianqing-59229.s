		//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/06
	//		Author：黄晨
	//		TaskName：Item-59229.s
	//		TaskID：盛典小红包
	//****************************************
 
	
	//点击触发脚本
	function OnUseItem(){

	
	//删除道具
	
	$sub = SubPlayerInfo( -1 , "item" , 59229 , 1 )
	if $sub != 0
		return
	endif
	
	//给予金钱
	AddPlayerInfo( -1 , "money" , 20000 )
	
}
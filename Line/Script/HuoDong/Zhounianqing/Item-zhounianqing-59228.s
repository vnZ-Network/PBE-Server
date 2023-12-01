		//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/06
	//		Author：黄晨
	//		TaskName：Item-59228.s
	//		TaskID：盛典大红包
	//****************************************
 
	
	//点击触发脚本
	function OnUseItem(){

	
	//删除道具
	
	$sub = SubPlayerInfo( -1 , "item" , 59228 , 1 )
	if $sub != 0
		return
	endif
	
	//给予金钱
	AddPlayerInfo( -1 , "money" , 150000 )
	
}
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11/10
	//		Author：王雨
	//		TaskName：
	//		TaskID：召唤兽灵兽死亡就计数
	//
	//****************************************
//1级灵兽死亡计数
//1级共刷192只
//每次杀死少于30%，则认为没人刷
//每次杀死多余60%，则认为很多人刷
function OnDead(){
	$a = GetServerVar(291 )
	$a = $a + 1
	SetServerVar( 291, $a )
}
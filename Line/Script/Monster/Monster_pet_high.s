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
function OnDead(){
	$a = GetServerVar(291 )
	$a = $a + 1000000
	SetServerVar( 291, $a )
}
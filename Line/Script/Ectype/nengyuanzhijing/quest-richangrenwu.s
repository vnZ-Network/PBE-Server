	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/09/21
	//		Author������
	//		TaskName��quest-3533
	//		TaskID��3533
	//
	//****************************************

function OnTaskDone(){

//�ȼ�^2*50*���ȼ�*0.04-0.76��
	$lv = GetPlayerInfo( -1 , "level" )
	$a = $lv * $lv
	$b = $a * 50
	$c = $lv * 4
	$d = $c - 76
	$e = $b * $d
	$exp = $e / 100
	AddPlayerInfo( -1 , "exp" , $exp )
	
}	
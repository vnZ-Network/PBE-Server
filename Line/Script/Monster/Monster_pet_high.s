	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11/10
	//		Author������
	//		TaskName��
	//		TaskID���ٻ������������ͼ���
	//
	//****************************************
//1��������������
function OnDead(){
	$a = GetServerVar(291 )
	$a = $a + 1000000
	SetServerVar( 291, $a )
}
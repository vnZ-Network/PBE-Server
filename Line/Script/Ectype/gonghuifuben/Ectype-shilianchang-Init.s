	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/04/11
	//		Author������
	//		TaskName��Ectype-gshilianchang-Init.s
	//		TaskID�����������������ű�
	//
	//****************************************

	function OnCreate(){
	//��õ�ǰ�����ĵ�ͼID
	$ectype_ID = GetCurEctypeID()
	StartEctypeTimer($ectype_ID , 0 )
	}
	
	function InitTimer(){
		
	//��õ�ǰ�����ĵ�ͼID
	$ectype_ID = GetCurEctypeID()
	SetEctypeTimer(0 , 10 , "EctypeTime0")
	StartEctypeTimer($ectype_ID , 0 )
		
	}
	
	function EctypeTime0(){
		
	//��õ�ǰ�����ĵ�ͼID
	$ectype_ID = GetCurEctypeID()
	$level = GetEctypeVar($ectype_ID , 4 ) 
	AddLevelMonster( 51901, 1 , $level , 1, $ectype_ID , 32 , 26 , 1 )
			
	}

		//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/03/06
	//		Author���Ƴ�
	//		TaskName��Item-59228.s
	//		TaskID��ʢ�����
	//****************************************
 
	
	//��������ű�
	function OnUseItem(){

	
	//ɾ������
	
	$sub = SubPlayerInfo( -1 , "item" , 59228 , 1 )
	if $sub != 0
		return
	endif
	
	//�����Ǯ
	AddPlayerInfo( -1 , "money" , 150000 )
	
}
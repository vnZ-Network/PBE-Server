	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/10
	//		Author��˾�Ĳ�
	//		TaskName��90-Milya-Ectype-quest-3301.s
	//		TaskID�� ���� 131������ɵļ�¼
	//
	//****************************************
	
	function OnTaskAccept(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		AddMonsterByFloat( 55091 , 1 , $ectype_id , 208, 156, 0 )
		AddMonsterByFloat( 55091 , 1 , $ectype_id , 217, 153, 0 )
		AddMonsterByFloat( 55091 , 1 , $ectype_id , 225, 166, 0 )
		AddMonsterByFloat( 55091 , 1 , $ectype_id , 218, 174, 0 )
		AddMonsterByFloat( 55091 , 1 , $ectype_id , 200, 170, 0 )
		
	}	
	
	function OnTaskDone(){
		
	}
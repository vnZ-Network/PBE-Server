	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/11
	//		Author�����쳽����ϸ������������
	//		TaskName����Ч�ٻ�NPC
	//		TaskID��51877-EffectNPC.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 532
		$ectype_id = GetEctypeID(-1, 532)		
		$npc_left = 751
		$npc_right = 752
		$is = GetEctypeVar(-1, 90)
			
		
		if $is > 0
			return
		else					
			AddNPC($npc_left, $ectype_id)
			AddNPC($npc_right, $ectype_id)
			SetEctypeVar(-1, 90, 1)
		endif


		
		
		
	}
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7
	//		Author�����쳽����ϸ������������
	//		TaskName��BOSS1�����ٻ����۷䣬�������ٻ�BOSS1
	//		TaskID��Mon13_B0SS1_Bee_52426.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 541

		$ectype_id = GetEctypeID(-1, 541)

		$count = GetEctypeVar($ectype_id,87)
		$count = $count + 1
		SetEctypeVar($ectype_id,87,$count)

		$BOSS = 52380
		$level = GetEctypeVar($ectype_id,89)
		if $level == 2
			$BOSS = $BOSS + 2
		endif 
		if $level == 3
			$BOSS = $BOSS + 3
		endif
		
		$timer = 52441		
		if $count == 4 
			$mapX = GetEctypeVar($ectype_id,85)
			$mapY = GetEctypeVar($ectype_id,86)
			AddMonsterByFloat($BOSS,1,$ectype_id,$mapX,$mapY,1,0,90)
			AddMonsterByFloat($timer,1,$ectype_id,$mapX,$mapY,1,0,90)
			SetEctypeVar($ectype_id,87,0)
		endif 
		
		
	}
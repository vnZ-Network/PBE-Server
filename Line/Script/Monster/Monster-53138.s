	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7/25
	//		Author���콨��
	//		TaskName��Monster-53138.s
	//		TaskID�� 3.70����
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1,544)
		$shu = GetEctypeVar($ectype_ID,13)
		if $shu > 0
			$shu = $shu - 1
			SetEctypeVar($ectype_ID,13,$shu)
		endif
		
		
	}
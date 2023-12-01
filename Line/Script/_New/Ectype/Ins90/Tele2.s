	function OnRequest(){
	
		

	}
	
	//��������
	function OnOption0(){
	
		$ectID = GetEctypeID(-1 ,223)
		if $ectID > 0
			FlyToMap(-1 ,$ectID , 70 ,70 )
		endif
		
	}
	
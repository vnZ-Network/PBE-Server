	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/8/1
	//		Author���콨��
	//		TaskName��Monster-53130.s
	//		TaskID�� 3.70����
	//
	//****************************************
	
	function OnDead(){
		
		$istask = IsTaskAccept(-1,368)
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		$map = GetPlayerInfo(-1,"mapid")
		$ectypeid = GetEctypeID(-1,544)
		$n = GetEctypeVar($ectypeid,2)
		$n = $n + 1
		SetEctypeVar($ectypeid,2,$n)
		
		if $istask == 0
			if $n < 4			
				AddMonsterByFloat(53126,1,$map,$x,$y,0,-1)		
			else
				AddMonsterByFloat(53123,1,$map,$x,$y,0,-1)	
				SetEctypeVar($ectypeid,1,3)
			endif
		endif
		
		
		
	}
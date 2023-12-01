	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2011/11/14
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫quyu-task-387.s
	//		TaskID£∫
	//
	//****************************************
	
	
	function EnterArea(){
		
		$map = GetPlayerInfo(-1,"mapid")
		$task = IsTaskAccept(-1,387)
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		
  	if $task == 0
  		if $map == 563
  			AddMonsterByFloat(30609,1,563,$x,$y,0,-1)
  			return
  		endif
  	endif
  			
  }
  
  	function LeaveArea(){
	
	
	}
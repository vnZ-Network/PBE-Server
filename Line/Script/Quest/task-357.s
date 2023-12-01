	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-357.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
		$map = GetPlayerInfo(-1,"mapid")
		$x = 117
		$y = 134
		$x1 = $x - 2
		$x2 = $x + 2
		$y1 = $y - 2
		$y2 = $y + 2
		
		AddMonsterByFloat(53105,1,$map,$x1,$y,0)
		AddMonsterByFloat(53106,1,$map,$x2,$y,0)
		AddMonsterByFloat(53106,1,$map,$x,$y1,0)
		AddMonsterByFloat(53106,1,$map,$x,$y2,0)
		AddMonsterByFloat(53105,1,$map,$x1,$y1,0)
		AddMonsterByFloat(53106,1,$map,$x2,$y1,0)
		AddMonsterByFloat(53106,1,$map,$x1,$y2,0)
		AddMonsterByFloat(53106,1,$map,$x2,$y2,0)

          
  }                      
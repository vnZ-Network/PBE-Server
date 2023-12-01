	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-368.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
		$ectype_ID = GetEctypeID(-1, 544)
		DeleteMonster($ectype_ID,53123)
		DeleteMonster($ectype_ID,53124)
		DeleteMonster($ectype_ID,53125)
		DeleteMonster($ectype_ID,53126)
		SetEctypeVar($ectype_ID,1,0)
		SetEctypeVar($ectype_ID,2,0)
		
		AddMonsterByFloat( 53128, 1, $ectype_ID, 183, 112, 1 )
		AddMonsterByFloat( 53123, 1, $ectype_ID, 197, 107, 1 )

          
  }                      
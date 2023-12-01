	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-369.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
		$ectype_ID = GetEctypeID(-1, 544)
		
		DeleteMonster($ectype_ID,53129)
		DeleteMonster($ectype_ID,53136)
		DeleteMonster($ectype_ID,53143)
		DeleteMonster($ectype_ID,53144)
		DeleteMonster($ectype_ID,53145)
		DeleteMonster($ectype_ID,53146)
		DeleteMonster($ectype_ID,53147)
		DeleteMonster($ectype_ID,53148)
		AddMonsterByFloat( 53132, 1, $ectype_ID, 179, 103, 0 )
		AddMonsterByFloat( 53142, 1, $ectype_ID, 160, 93, 0 )
		AddMonsterByFloat( 53136, 1, $ectype_ID, 156, 100, 0 )
		SetEctypeVar($ectype_ID,3,0)
		SetEctypeVar($ectype_ID,4,0)
		SetEctypeVar($ectype_ID,5,0)
		
		

          
  }                      
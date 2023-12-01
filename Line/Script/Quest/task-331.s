	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/03/21
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫task-331.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnTaskDone(){ 
		
		$ectype_ID = GetEctypeID(-1, 539)
		AddMonsterByFloat( 30526,1,$ectype_ID,149,257,0)
		AddMonsterByFloat( 30521,1,$ectype_ID,152,257,0)
    AddMonsterByFloat( 30521,2,$ectype_ID,145,254,1)    
    AddMonsterByFloat( 30521,1,$ectype_ID,143,259,0)  
    AddMonsterByFloat( 30521,1,$ectype_ID,161,256,0)
    AddMonsterByFloat( 30521,2,$ectype_ID,160,264,1)
    AddMonsterByFloat( 30521,1,$ectype_ID,151,267,0)
    AddMonsterByFloat( 30521,1,$ectype_ID,143,266,0)
    AddMonsterByFloat( 30521,2,$ectype_ID,142,245,1)
    AddMonsterByFloat( 30521,1,$ectype_ID,151,246,0)
    AddMonsterByFloat( 30521,1,$ectype_ID,159,240,0)
	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   

  	
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  	    
		DeleteNPC(781,-1)
		$ectype_ID = GetEctypeID(-1, 539)
		DeleteMonster($ectype_ID,30512)
		AddMonsterByFloat( 30512, 1, $ectype_ID, 115, 250, 0 )
		AddMonsterByFloat( 30525, 1, $ectype_ID, 131, 257, 0 )
		AddMonsterByFloat( 30527, 1, $ectype_ID, 133, 257, 0 )
          
  }                      
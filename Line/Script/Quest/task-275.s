	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/11/14
	//		Author：朱建臣
	//		TaskName：task-275.s
	//		TaskID：
	//
	//****************************************
	
	//292 记录30289的数量
	//293 记录30290的数量
	
	function OnTaskDone(){ 
			

		
	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){    
//  	$a = GetServerVar(292)
//  	$b = GetServerVar(293)
//  	if $a == 0
//  		if $b == 0    
				DeleteMonster(44,30289)
				DeleteMonster(44,30290)
    		AddMonsterByFloat( 30289, 1, 44, 106, 190, 0, -1, 0 )    
    		AddMonsterByFloat( 30290, 1, 44, 108, 192, 0, -1, 135 )
    		SetServerVar(292,1)
    		SetServerVar(293,1)
//    	endif
//    endif
      
  }                   
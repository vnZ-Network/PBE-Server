	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/12/10
	//		Author：朱建臣
	//		TaskName：task-335.s
	//		TaskID：
	//
	//****************************************
	
	//记录杀怪数量 3306
	
	function OnTaskDone(){ 
		
	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){        
		
		//DeleteNPC(782,-1)
		$mapID = GetEctypeID(-1,539)
		DeleteMonster($mapID,30524)
		AddMonsterByFloat(30531,1,$mapID,94,125,0)
		AddMonsterByFloat(30532,2,$mapID,92,125,2)
		AddMonsterByFloat(30533,2,$mapID,94,124,2)
		AddMonsterByFloat(30534,2,$mapID,92,121,2)
		AddMonsterByFloat(30535,2,$mapID,92,128,2)
		AddMonsterByFloat(30536,2,$mapID,96,131,2)
		AddMonsterByFloat(30537,2,$mapID,100,128,2)
		AddMonsterByFloat(30532,2,$mapID,101,122,2)
		AddMonsterByFloat(30533,2,$mapID,98,119,2)
		AddMonsterByFloat(30534,2,$mapID,94,121,2)
		AddMonsterByFloat(30535,2,$mapID,90,119,2)
		AddMonsterByFloat(30536,2,$mapID,81,124,2)
		AddMonsterByFloat(30537,2,$mapID,97,126,2)
		AddMonsterByFloat(30532,2,$mapID,87,133,2)
		AddMonsterByFloat(30533,2,$mapID,90,134,2)
		AddMonsterByFloat(30534,2,$mapID,89,137,2)
		AddMonsterByFloat(30535,2,$mapID,84,134,2)
		AddMonsterByFloat(30536,2,$mapID,80,128,2)
		AddMonsterByFloat(30537,2,$mapID,98,122,2)
		AddMonsterByFloat(30532,2,$mapID,102,116,2)
		AddMonsterByFloat(30533,2,$mapID,105,122,2)
		AddMonsterByFloat(30534,2,$mapID,104,129,2)
          
  }         
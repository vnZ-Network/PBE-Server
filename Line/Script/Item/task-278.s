//	---------------------------------------------------
//	--		Copyright��PERFECT WORLD
//	--		Modified��2011/11/14
//	--		Author�������
//	--		Class:	.s
//	--		AIName��
//	--		Remark��
//	----------------------------------------------------

	function OnTaskDone(){ 
		$map_id = GetPlayerInfo(-1,"mapid")
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")


		AddMonsterByFloat( 30291, 1, 44, $posx , $posy , 1, -1 )
	
	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){        
		                  
  }                              

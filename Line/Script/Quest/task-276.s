//	---------------------------------------------------
//	--		Copyright��PERFECT WORLD
//	--		Modified��2011/11/14
//	--		Author�������
//	--		Class:	.s
//	--		AIName��
//	--		Remark��
//	----------------------------------------------------

	function OnTaskDone(){ 	
  }                              

  function OnTaskFailedDone(){                              
  }                              
                                 
  function OnTaskAccept(){ 
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		AddMonsterByFloat( 30293, 1, 44, $posx , $posy , 1, -1 )    
		                  
  }                              

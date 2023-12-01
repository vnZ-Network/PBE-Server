//	---------------------------------------------------
//	--		Copyright£∫PERFECT WORLD
//	--		Modified£∫2011/6/28
//	--		Author£∫÷ÏΩ®≥º
//	--		Class:	.s
//	--		AIName£∫
//	--		Remark£∫
//	----------------------------------------------------

	function OnTaskDone(){ 

	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){        
   	 SetEctypeVar(-1,95,0)	
   	 SetEctypeVar(-1,96,0)
		 $mapID = GetPlayerInfo(-1,"mapid") 
		 DeleteMonster($mapID,51816)
		 DeleteMonster($mapID,51817)
		 AddMonsterByFloat( 51816, 1, $mapID, 79, 252, 1, 0 , 90 )
		 AddMonsterByFloat( 51816, 1, $mapID, 79, 254, 1, 0 , 90 )
		 AddMonsterByFloat( 51816, 1, $mapID, 81, 252, 1, 0 , 90 )
		 AddMonsterByFloat( 51816, 1, $mapID, 81, 254, 1, 0 , 90 )       
		 AddMonsterByFloat( 51817, 1, $mapID, 83, 252, 1, 0 , 90 ) 
		 AddMonsterByFloat( 51817, 1, $mapID, 83, 254, 1, 0 , 90 )
		 AddMonsterByFloat( 51817, 1, $mapID, 85, 252, 1, 0 , 90 )  
     AddMonsterByFloat( 51817, 1, $mapID, 85, 254, 1, 0 , 90 )                     
  }                              

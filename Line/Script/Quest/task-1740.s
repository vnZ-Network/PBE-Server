//	---------------------------------------------------
//	--		Copyright£∫PERFECT WORLD
//	--		Modified£∫2011/9/06
//	--		Author£∫÷ÏΩ®≥º
//	--		Class:	.s
//	--		AIName£∫
//	--		Remark£∫
//	----------------------------------------------------

	function OnTaskDone(){ 
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 10
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$e = $d / 100
		$f = $e * 5
		$exp = $f / 2
		AddPlayerInfo( -1 , "exp" , $exp )
	                               	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	                             
  	                             
  }                              
                                 
  function OnTaskAccept(){        
		 AddMonsterByFloat( 30260, 1, 475, 253, 203, 1, 0 , 90 )
		 AddMonsterByFloat( 30261, 1, 475, 253, 205, 1, 0 , 90 )
		 AddMonsterByFloat( 30262, 1, 475, 253, 207, 1, 0 , 90 )
		 AddMonsterByFloat( 30263, 1, 475, 255, 203, 1, 0 , 90 )       
		 AddMonsterByFloat( 30264, 1, 475, 255, 205, 1, 0 , 90 ) 
		 AddMonsterByFloat( 30265, 1, 475, 255, 207, 1, 0 , 90 )
		 AddMonsterByFloat( 30266, 1, 475, 257, 203, 1, 0 , 90 )  
     AddMonsterByFloat( 30267, 1, 475, 257, 205, 1, 0 , 90 )   
     AddMonsterByFloat( 30268, 1, 475, 257, 207, 1, 0 , 90 )                  
  }                              

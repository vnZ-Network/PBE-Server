	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/1124
	//		Author:???
	//		TaskName:????
	//		TaskID:mapid = 532
	//
	//****************************************

	function OnCreate(){
		

	
	}
	




	function InitTimer(){

		$ectype_id = GetEctypeID( -1 , 532 )
		SetEctypeTimer( 0 , 6, "EctypeTimer0" )
		SetEctypeTimer( 1 , 1 , "EctypeTimer1" )
		SetEctypeTimer( 2 , 16 , "EctypeTimer2" )
		SetEctypeTimer( 3 , 2 , "EctypeTimer3" )
		SetEctypeTimer( 4 , 1 , "EctypeTimer4" )
		SetEctypeTimer( 5 , 10 , "EctypeTimer5" )


	}

	function EctypeTimer0(){
		$ectype_id = GetEctypeID( -1 , 532 )
		//??
		
		$mon1 = 51863
		$mon2_1 = 51864
		$mon2_2 = 51865

  	AddMonsterByFloat( $mon1 , 1, $ectype_id, 45, 252, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1 , 1, $ectype_id, 45, 257, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 51, 251, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1 , 1, $ectype_id, 51, 259, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 62, 252, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 63, 256, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 62, 261, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1 , 1, $ectype_id, 71, 252, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 71, 259, 1 ,0 ,0 )

		//??,??9?
  	AddMonsterByFloat( $mon1 , 1, $ectype_id, 47, 252, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1 , 1, $ectype_id, 47, 257, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 55, 251, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1 , 1, $ectype_id, 55, 259, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 65, 252, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 66, 256, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 65, 261, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1 , 1, $ectype_id, 74, 252, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1 , 1, $ectype_id, 74, 259, 1 ,0 ,0 )
   
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 83, 245, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 83, 266, 1 ,0 ,0 )
		
		
		//??????NPC
		DeleteNPC( 751 , -1 )
		DeleteNPC( 752 , -1 )
		DeleteNPC( 753 , -1 )
		DeleteNPC( 747 , -1 )
		DeleteNPC( 749 , -1 )
		DeleteNPC( 750 , -1 )
	
//		BC("screen","map",$ectype_id,"GUID:04384000000")
//		BC("chat","player",-1,"GUID:04384000001")
		

}		



	function EctypeTimer1(){

		//??,2????????????5?  ??? ?? 51866
		//??4 51866
		$ectype_id = GetEctypeID( -1 , 532 )
		$is_summon_2 = GetEctypeVar(-1, 2)
		$count = GetEctypeVar(-1, 98)
		$is_north = GetEctypeVar(-1, 0)
		$is_south = GetEctypeVar(-1, 1)
		$is_kill = $is_north + $is_south
		$north = 51864
		$south = 51865

//??????????,??????,5?
//????????
		if $is_summon_2 > 0
			return
		else
//??12?????
			if $count > 22
				return
			else
//?????????
				if $is_kill < 1
					return
				else
//????10?,??????,????
					if $count > 11
						$count = $count + 1
						SetEctypeVar(-1, 98, $count)
						StartEctypeTimer(-1, 1)
//						BC("screen","map",$ectype_id,"GUID:04384000002",$count,"GUID:04384000003")
//?10????????????
    				if $count == 22
  						SetEctypeVar(-1, 98, 0)
  						if $is_north > 0
  							if $is_south <= 0
        		  		DeleteMonster($ectype_id, 51876)
        		  		AddMonsterByFloat( $north , 1, $ectype_id, 83, 245, 1 ,0 ,0 )
        		  		BC("screen","map",$ectype_id,"Not enough power to destroy the sealed gate. The gate has recovered.") 	
        					SetEctypeVar(-1, 0, 0)
//        					BC("screen","map",$ectype_id,"Northern Baltic guardian pillars are re-summoned.")
        				endif
        			endif
        			if $is_south > 0
        				if $is_north <= 0
          		  	DeleteMonster($ectype_id, 51876)
          		  	AddMonsterByFloat( $south , 1, $ectype_id, 83, 266, 1 ,0 ,0 )	
          		  	BC("screen","map",$ectype_id,"Not enough power to destroy the sealed gate. The gate has recovered.")				
          		  	SetEctypeVar(-1, 1, 0)	
//          				BC("screen","map",$ectype_id,"Southern Baltic guardian pillars are re-summoned.")	
      		 			 endif
  						endif
  						if $is_south > 0
        				if $is_north > 0
          		  	DeleteMonster($ectype_id, 51876)
          		  	AddMonsterByFloat( $south , 1, $ectype_id, 83, 266, 1 ,0 ,0 )
          		  	AddMonsterByFloat( $north , 1, $ectype_id, 83, 245, 1 ,0 ,0 )	
          		  	BC("screen","map",$ectype_id,"Not enough power to destroy the sealed gate. The gate has recovered.")				
          		  	SetEctypeVar(-1, 1, 0)	
//          				BC("screen","map",$ectype_id,"Southern Baltic guardian pillars are re-summoned.")	
          				SetEctypeVar(-1, 0, 0)
//        					BC("screen","map",$ectype_id,"Northern Baltic guardian pillars are re-summoned.")
      		 			 endif
  						endif
//??98 ???1??? ??88 ??????????
						  SetEctypeVar(-1, 88, 0)
						  SetEctypeVar(-1, 98, 0)
						  PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
//						  #name = GetPlayerInfo(-1,"name")
//						  BC("screen","map",$ectype_id, "GUID:04384000011",#name)
  					endif
					endif
				endif
			endif
		endif

//??2?????????,5?
		if $is_summon_2 > 0
			return
		else
			if $count > 11
//				BC("screen","map",$ectype_id,"GUID:04384000012")
				return
			else
				if $is_kill < 1
//					BC("screen","map",$ectype_id,"GUID:04384000013")					
					return
				else
					$count = $count + 1
					SetEctypeVar(-1, 98, $count)
					StartEctypeTimer(-1, 1)
//					BC("screen","map",$ectype_id,"GUID:04384000014",$count,"GUID:04384000015")
					if $is_north > 0
						if $is_south > 0
							SetEctypeVar(-1, 97, 1)
						endif
					endif					
  					if $count == 11
  //					StartEctypeTimer(-1, 3)
  						BC("screen","map",$ectype_id,"10 seconds have passed since the first pillar was destroyed.")
  						BC("screen","map",$ectype_id,"If the second pillar is not destroyed, the seal will recover after 10 seconds.")
  					endif
					endif
				endif
			endif
		endif
		


//		BC("screen","map",$ectype_id,"111111111")
	}
	
	
	function EctypeTimer2(){

	  //Monster5 51867    Monster 6 51868   ???2????6??,??2?
	  //??????? ??7 ??,???   ???6??? ??6 ??,???
	  
	  $ectype_id = GetEctypeID( -1 , 532 )
	  $mon5 = 51867
		$mon6 = 51868
		$time = GetEctypeVar(-1, 6)
		$is_finish = GetEctypeVar(-1, 7)
		
		if $is_finish >= 1
			return
		else

		  AddMonsterByFloat( $mon5, 1, $ectype_id, 144, 211, 1)
	    AddMonsterByFloat( $mon5, 1, $ectype_id, 143, 212, 1)		
	    
		  AddMonsterByFloat( $mon6, 1, $ectype_id, 187, 211, 1)
	    AddMonsterByFloat( $mon6, 1, $ectype_id, 188, 212, 1)	    
	
			$time = $time + 1
			SetEctypeVar(-1, 6, $time )
//			BC("screen","map",$ectype_id,"GUID:04384000018",$time,"GUID:04384000019")

			if $time < 6			
				StartEctypeTimer(-1, 2)
			endif
		endif
				

//		BC("screen","map",$ectype_id,"2222222222222222222222")
	}


	function EctypeTimer3(){


		//??,2????????????8?  ??? ?? 51866
		//??4 51866
		$ectype_id = GetEctypeID( -1 , 532 )
		$is_north = GetEctypeVar(-1, 0)
		$is_south = GetEctypeVar(-1, 1)
		$is_summon_2 = GetEctypeVar(-1, 2)
		$mon2_1 = 51864
		$mon2_2 = 51865
		$mon4 = 51866
		$moneff = 51876


//		BC("screen","map",$ectype_id,"GUID:04384000020")

		//??2?????????8???,??????	???????2		
		if $is_summon_2 > 0
			BC("screen","map",$ectype_id,"The guards in Radiant Temple have been strengthened. Be careful.")
			return
		else
			if $is_north > 0
				if $is_south > 0
//					OpenMask(4, $ectype_id)
//					BC("screen","map",$ectype_id,"GUID:04384000022")				
//    			AddMonsterByFloat( $mon4, 1, $ectype_id, 105, 252, 1)
//    			AddMonsterByFloat( $mon4, 1, $ectype_id, 105, 259, 1)
//    			AddMonsterByFloat( $mon4, 1, $ectype_id, 111, 259, 1)
//    			AddMonsterByFloat( $mon4, 1, $ectype_id, 113, 252, 1)
//    			AddMonsterByFloat( $mon4, 1, $ectype_id, 124, 254, 1)
//    			AddMonsterByFloat( $mon4, 1, $ectype_id, 124, 257, 1)
//    			AddMonsterByFloat( $mon4, 1, $ectype_id, 131, 254, 1)
//    			AddMonsterByFloat( $mon4, 1, $ectype_id, 131, 258, 1)
//    			DeleteMonster($ectype_id, $moneff)
//    			SetEctypeVar(-1, 2, 1)
    			//??????????	
    			SetEctypeVar(-1, 97, 1)
  			else
		  		DeleteMonster($ectype_id, 51876)
		  		AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 83, 245, 1 ,0 ,0 )
		  		BC("screen","map",$ectype_id,"Not enough power to destroy the sealed gate. The gate has recovered.") 	
					SetEctypeVar(-1, 0, 0)
					BC("screen","map",$ectype_id,"Northern Baltic guardian pillars are re-summoned.")		  	
		  	endif
		  else
		  	DeleteMonster($ectype_id, 51876)
		  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 83, 266, 1 ,0 ,0 )	
		  	BC("screen","map",$ectype_id,"Not enough power to destroy the sealed gate. The gate has recovered.")				
		  	SetEctypeVar(-1, 1, 0)	
				BC("screen","map",$ectype_id,"Southern Baltic guardian pillars are re-summoned.")	
		  endif
			
	  endif
	  
	  //??98 ???1??? ??
	  SetEctypeVar(-1, 98, 0)
		

}

	function EctypeTimer4(){
	
	$ectype_id = GetEctypeID( -1 , 532 )	
//	BC("screen","map",$ectype_id,"GUID:04384000027")

	//--------???4??,97?????-------------------
	$is_double = GetEctypeVar(-1, 97)
	$is_summon_2 = GetEctypeVar(-1, 2)
	$n = GetEctypeVar(-1, 88)
	$mon4 = 51866

	//??????
	if $is_summon_2 > 0
		BC("screen","map",$ectype_id,"The guards in Radiant Temple have been strengthened. Be careful.")
		return
	else
		if $is_double > 0
  		if $n < 2
  			return
  		else	
  			//????
  			OpenMask(4, $ectype_id)
  			BC("screen","map",$ectype_id, "Sealed magic gate is attacked, Durability 0 / 2"
  			BC("screen","map",$ectype_id,"The first floor of the Temple has been damaged")				
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 105, 252, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 105, 259, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 111, 259, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 111, 252, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 124, 254, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 124, 257, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 131, 254, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 131, 258, 1)
  
  			//????
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 108, 252, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 108, 259, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 113, 259, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 113, 252, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 120, 254, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 120, 257, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 127, 254, 1)
  			AddMonsterByFloat( $mon4, 1, $ectype_id, 127, 258, 1)
  
  			//????
  			SetEctypeVar(-1, 2, 1)	
  		endif
		endif
	endif	
	
}

	function EctypeTimer5(){

	$ectype_id = GetEctypeID( -1 , 532 )	
	$n = GetEctypeVar(-1, 16)
	$monster1 = 51892
	$monster2 =	51893
	$monster3 = 51894
	$monster4 = 51899

//	BC("screen","map",$ectype_id,"GUID:04384000031")
	
	if $n == 2
		DeleteMonster($ectype_id,	$monster1)
//		BC("screen","map",$ectype_id,"GUID:04384000032")
	endif
	
	
	if $n == 3
		DeleteMonster($ectype_id, $monster2)
//		BC("screen","map",$ectype_id,"GUID:04384000033")
	endif

	if $n == 4
		DeleteMonster($ectype_id, $monster3)
//		BC("screen","map",$ectype_id,"GUID:04384000034")
	endif

	if $n == 5
		DeleteMonster($ectype_id, $monster4)
//		BC("screen","map",$ectype_id,"GUID:04384000035")
	endif
		

}		
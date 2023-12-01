//───────────────────────────────────────
//Phụ Bản:《"Mộ Long Đế [3 Chế Độ]"》
//───────────────────────────────────────
	function OnCreate(){
          $mapID = 226
		$ectID = GetEctypeID( -1 ,$mapID )
		DeleteNPC( 1935, $ectID )
	}
	
	
	function InitTimer(){

	  SetEctypeTimer( 0, 3, "EctypeTime1" )
	    
	}

	function EctypeTime1(){

          $mob1 = 61001
          $mob2 = 61011
          $mob3 = 61021
          $mapID = 226

		$ectID = GetEctypeID( -1, $mapID )
		$Dif = GetEctypeVar( -1, 7 )
          
		if $Dif == 0
			AddMonster( $mob1, 25, $ectID, 57, 69 , 10 )
			AddMonster( $mob1, 15, $ectID, 74, 65 , 7 )
		endif
          if $Dif == 1
			AddMonster( $mob2, 25, $ectID, 57, 69 , 10 )
			AddMonster( $mob2, 15, $ectID, 74, 65 , 7 )
		endif
          if $Dif == 2
			AddMonster( $mob3, 25, $ectID, 57, 69 , 10 )
			AddMonster( $mob3, 15, $ectID, 74, 65 , 7 )
		endif          
		
	}
	
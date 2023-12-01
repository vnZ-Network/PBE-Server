//───────────────────────────────────────
//Phụ Bản:《"Stage 2 > Stage 3"》
//───────────────────────────────────────
	function OnDead(){
          $mob1 = 61002
          $mob2 = 61012
          $mob3 = 61022
		$ectID = GetEctypeID( -1, 226 )
		$ectype_type = GetEctypeVar( -1, 112 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 112, $ectype_type )
		$ectype_type = GetEctypeVar( -1, 112 )
		if $ectype_type == 4
			$Dif = GetEctypeVar( -1, 7 )
			if $Dif == 0
				AddMonster( $mob1, 35, $ectID, 78, 61,  12 )
				AddMonster( $mob1, 35, $ectID, 50, 59,  12 )
			endif
               if $Dif == 1
				AddMonster( $mob2, 35, $ectID, 78, 61,  12 )
				AddMonster( $mob2, 35, $ectID, 50, 59,  12 )
			endif
               if $Dif == 2
				AddMonster( $mob3, 35, $ectID, 78, 61,  12 )
				AddMonster( $mob3, 35, $ectID, 50, 59,  12 )
			endif
		endif
		
	}
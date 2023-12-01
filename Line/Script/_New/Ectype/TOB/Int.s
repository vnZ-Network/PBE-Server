	function OnCreate(){
		
	}
	
	function InitTimer(){
		DeleteNPC(880 , -1)
		$ectID = GetEctypeID( -1 , 233 )
		SetEctypeTimer( 1 , 10 , "EctypeTime0" )
		SetEctypeTimer( 2 , 10 , "EctypeTime1" )
		SetEctypeTimer( 4 , 20 , "EctypeTime3" )
		
	}
	

	function EctypeTime0(){
		$ectID = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectID , 110 )
		$Dif = GetEctypeVar( $ectID , 11 )
		$monflv = GetEctypeVar(-1 ,90)
		$lang = GetPlayerVar(-1, 3301)	
		if $lv >= 80		
			if $Dif == 1
				if $monflv > 0
					AddLevelFieldMonster( 51241 , 80 , $lv , 80 , $monflv , 4 , $ectID , 59 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 80 , $lv , 80 , $monflv , 4 , $ectID , 61 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 80 , $lv , 80 , $monflv , 4 , $ectID , 61 , 61 , 1 )
					AddLevelFieldMonster( 51241 , 80 , $lv , 80 , $monflv , 3 , $ectID , 58 , 61 , 1 )
				else
					AddLevelMonster( 51241 , 80 , $lv , 4 , $ectID , 59 , 58 , 1 )
					AddLevelMonster( 51241 , 80 , $lv , 4 , $ectID , 61 , 58 , 1 )
					AddLevelMonster( 51241 , 80 , $lv , 4 , $ectID , 61 , 61 , 1 )
					AddLevelMonster( 51241 , 80 , $lv , 3 , $ectID , 58 , 61 , 1 )
				endif
			endif
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái đầu tiên sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]THe first wave of monster will spawn in: [color=ffB54ECA]Area A" )
               endif		
		else		
			if $Dif == 1
				if $monflv > 0
					AddLevelFieldMonster( 51241 , 50 , $lv , 50 , $monflv , 4 , $ectID , 59 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 50 , $lv , 50 , $monflv , 4 , $ectID , 61 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 50 , $lv , 50 , $monflv , 4 , $ectID , 61 , 61 , 1 )
					AddLevelFieldMonster( 51241 , 50 , $lv , 50 , $monflv , 3 , $ectID , 58 , 61 , 1 )
				else
					AddLevelMonster( 51241 , 50 , $lv , 4 , $ectID , 59 , 58 , 1 )
					AddLevelMonster( 51241 , 50 , $lv , 4 , $ectID , 61 , 58 , 1 )
					AddLevelMonster( 51241 , 50 , $lv , 4 , $ectID , 61 , 61 , 1 )
					AddLevelMonster( 51241 , 50 , $lv , 3 , $ectID , 58 , 61 , 1 )
				endif
					
			endif
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái đầu tiên sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]THe first wave of monster will spawn in: [color=ffB54ECA]Area A" )
               endif			
		endif
	}

	function EctypeTime1(){
		$ectID = GetEctypeID( -1 , 233 )
		StartEctypeTimer( $ectID , 2 )
		$a = GetEctypeVar( $ectID , 113 )
		$a = $a + 1
		SetEctypeVar( $ectID , 113 , $a )
	}
	
	function EctypeTime2(){
		
	}
	
	function EctypeTime3(){
	
		$ectID = GetEctypeID( -1 , 233 )
		$turnround = GetEctypeVar( $ectID , 114 )
		if $turnround == 0
			call CallMonster1()
		endif
		if $turnround == 1
			call CallMonster2()
		endif
		if $turnround == 2
			call CallMonster3()
		endif
		if $turnround == 3
			call CallMonster4()
		endif
		if $turnround == 4
			call CallMonster5()
		endif
		
	}
	
		
	function CallMonster1(){
		
		$ectID = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectID , 110 )
		$Dif = GetEctypeVar( $ectID , 11 )
		$monflv = GetEctypeVar(-1 ,90)
		
		if $Dif == 1
			if $monflv > 0
				AddLevelFieldMonster( 51242 , 51 , $lv , 51 , $monflv , 1 , $ectID , 68 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51242, 51 , $lv ,$ectID ,  68 , 67 , 1 )
			endif
		endif
		SetEctypeVar( $ectID , 115 , $a)	
		SetEctypeVar( $ectID , 114 , 1 )
          $lang = GetPlayerVar(-1, 3301)
          if $lang == 1
               BC( "chat" , "player" , -1 , "[color=FF22E974]Nếu không tiêu diệt [color=ffB54ECA]Hắc Trụ [color=FF22E974]trong 50 giây,[color=ffB54ECA] Quái Hắc Ám sẽ xuất hiện" )
          endif
          if $lang == 2
               BC( "chat" , "player" , -1 , "[color=FF22E974]If the [color=ffB54ECA]Fallen Totem [color=FF22E974]not destroyed in 50 sec,[color=ffB54ECA] it will spawn Fallen Trail Monsters" )
          endif
	}
	
	function CallMonster2(){
		$ectID = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectID , 110 )
		$Dif = GetEctypeVar( $ectID , 11 )
		$monflv = GetEctypeVar(-1 ,90)


		if $Dif == 1
			if $monflv > 0
				AddLevelFieldMonster( 51243 , 51 , $lv , 51 , $monflv , 1 , $ectID ,  68 , 61 , 1 )
			else
				$a = AddSingleLevelMonster( 51243, 51 , $lv ,$ectID ,  68 , 61 , 1 )
			endif
		endif	
		
		SetEctypeVar( $ectID , 116 , $a)
		SetEctypeVar( $ectID , 114 , 2 )
          $lang = GetPlayerVar(-1, 3301)
          if $lang == 1
               BC( "chat" , "player" , -1 , "[color=FF22E974]Nếu không tiêu diệt [color=ffB54ECA]Hắc Trụ [color=FF22E974]trong 50 giây,[color=ffB54ECA] Quái Hắc Ám sẽ xuất hiện" )
          endif
          if $lang == 2
               BC( "chat" , "player" , -1 , "[color=FF22E974]If the [color=ffB54ECA]Fallen Totem [color=FF22E974]not destroyed in 50 sec,[color=ffB54ECA] it will spawn Fallen Trail Monsters" )
          endif          
	}
	
	function CallMonster3(){
		$ectID = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectID , 110 )
		$Dif = GetEctypeVar( $ectID , 11 )		
		$monflv = GetEctypeVar(-1 ,90)


		if $Dif == 1
			if $monflv > 0
				AddLevelFieldMonster( 51244 , 51 , $lv , 51 , $monflv , 1 , $ectID ,  58 , 61 , 1 )
			else
				$a = AddSingleLevelMonster( 51244, 51 , $lv ,$ectID ,  58 , 61 , 1 )
			endif
		endif	
		
		SetEctypeVar( $ectID , 117 , $a)
		SetEctypeVar( $ectID , 114 , 3 )
          $lang = GetPlayerVar(-1, 3301)
          if $lang == 1
               BC( "chat" , "player" , -1 , "[color=FF22E974]Nếu không tiêu diệt [color=ffB54ECA]Hắc Trụ [color=FF22E974]trong 50 giây,[color=ffB54ECA] Quái Hắc Ám sẽ xuất hiện" )
          endif
          if $lang == 2
               BC( "chat" , "player" , -1 , "[color=FF22E974]If the [color=ffB54ECA]Fallen Totem [color=FF22E974]not destroyed in 50 sec,[color=ffB54ECA] it will spawn Fallen Trail Monsters" )
          endif          
	}
	
	function CallMonster4(){	
		$ectID = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectID , 110 )
		$Dif = GetEctypeVar( $ectID , 11 )
		
		if $Dif == 1
			if $monflv > 0
				AddLevelFieldMonster( 51245 , 51 , $lv , 51 , $monflv , 1 , $ectID ,  58 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51245, 51 , $lv ,$ectID ,  58 , 67 , 1 )
			endif
		endif	

		SetEctypeVar( $ectID , 118 , $a)
		SetEctypeVar( $ectID , 114 , 4 )
          $lang = GetPlayerVar(-1, 3301)
          if $lang == 1
               BC( "chat" , "player" , -1 , "[color=FF22E974]Nếu không tiêu diệt [color=ffB54ECA]Hắc Trụ [color=FF22E974]trong 50 giây,[color=ffB54ECA] Quái Hắc Ám sẽ xuất hiện" )
          endif
          if $lang == 2
               BC( "chat" , "player" , -1 , "[color=FF22E974]If the [color=ffB54ECA]Fallen Totem [color=FF22E974]not destroyed in 50 sec,[color=ffB54ECA] it will spawn Fallen Trail Monsters" )
          endif          
	}
	
	function CallMonster5(){
		$ectID = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectID , 110 )
		$Dif = GetEctypeVar( $ectID , 11 )
		
		if $Dif == 1
			if $monflv > 0
				AddLevelFieldMonster( 51246 , 51 , $lv , 51 , $monflv , 1 , $ectID ,  68 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51246, 51 , $lv ,$ectID ,  68 , 67 , 1 )
			endif
		endif	
					
		SetEctypeVar( $ectID , 119 , $a)
		SetEctypeVar( $ectID , 114 , 5 )
          $lang = GetPlayerVar(-1, 3301)
          if $lang == 1
               BC( "chat" , "player" , -1 , "[color=FF22E974]Nếu không tiêu diệt [color=ffB54ECA]Hắc Trụ [color=FF22E974]trong 50 giây,[color=ffB54ECA] Quái Hắc Ám sẽ xuất hiện" )
          endif
          if $lang == 2
               BC( "chat" , "player" , -1 , "[color=FF22E974]If the [color=ffB54ECA]Fallen Totem [color=FF22E974]not destroyed in 50 sec,[color=ffB54ECA] it will spawn Fallen Trail Monsters" )
          endif          
	}
	
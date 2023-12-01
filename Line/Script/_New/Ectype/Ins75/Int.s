	function OnCreate(){
		$ectID = GetEctypeID( -1 ,232 )
		DeleteNPC( 1990, $ectID )
		DeleteNPC( 1991, $ectID )
		DeleteNPC( 1992, $ectID )
		DeleteNPC( 1993, $ectID )
		DeleteNPC( 1994, $ectID )
		DeleteNPC( 1995, $ectID )
		DeleteNPC( 1996, $ectID )
		DeleteNPC( 1997, $ectID )
		DeleteNPC( 1998, $ectID )
		DeleteNPC( 1999, $ectID )
		DeleteNPC( 2000, $ectID )
		DeleteNPC( 2001, $ectID )
		DeleteNPC( 2002, $ectID )
		DeleteNPC( 2003, $ectID )
		DeleteNPC( 2004, $ectID )
		DeleteNPC( 2005, $ectID )
		DeleteNPC( 2006, $ectID )
		DeleteNPC( 2007, $ectID )
		DeleteNPC( 2008, $ectID )
		DeleteNPC( 2009, $ectID )
		
		$Rad = RandomNumber( 1, 4 )
		if $Rad == 1
			SetEctypeVar( -1, 110, 1 )
			AddNPC( 1998, $ectID )
			AddNPC( 1999, $ectID )
			AddNPC( 2000, $ectID )
			AddNPC( 2001, $ectID )
		endif
		if $Rad == 2
			SetEctypeVar( -1, 110, 2 )
		endif
		if $Rad == 3
			SetEctypeVar( -1, 110, 3 )
		endif
		if $Rad == 4
			SetEctypeVar( -1, 110, 4 )
			AddNPC( 2008, $ectID )
		endif
		
		$Random = RandomNumber( 1, 3 )
		if $Random == 1
			SetEctypeVar( -1, 113, 1234 )
		endif
		if $Random == 2
			SetEctypeVar( -1, 113, 2413 )
		endif
		if $Random == 3
			SetEctypeVar( -1, 113, 4123 )
		endif
		
	}
	
	
	function InitTimer(){
	  SetEctypeTimer( 0, 2, "EctypeTime1" )	    
	}

	function EctypeTime1(){

		$ectID = GetEctypeID( -1 ,232 )	
		$stage = GetEctypeVar( -1, 110 )
		$Dif = GetEctypeVar( -1, 4 )
          $lang = GetPlayerVar(-1, 3301)
    //───────────────────────────────────
    //"Cổng 1"
    //───────────────────────────────────  
		if $stage == 1
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Chạm vào các bức tượng của [color=ffB54ECA]Hoàng Hậu Hatred [color=ffB54ECA]theo thứ tự" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Touch [color=ffB54ECA]Queen's Hatred [color=ffB54ECA]statues in order to spawn her" )
               endif
		endif
    //───────────────────────────────────
    //"Cổng 2"
    //───────────────────────────────────
		if $stage == 2
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Hãy tiêu diệt hết bọ cạp để triệu hồi [color=ffB54ECA]Vua Bọ Cạp Molmes" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Kill all scorpions to spawn [color=ffB54ECA]Scopions King - Molmes[color=ffB54ECA]" )
               endif
               call Stage2()               	
		endif
    //───────────────────────────────────
    //"Cổng 3"
    //───────────────────────────────────
		if $stage == 3
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Hãy tiêu diệt hết các vũ công [color=ffB54ECA]Hoàng Tử Arbyss [color=FF22E974]sẽ xuất hiện" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Kill all Witches to spawn [color=ffB54ECA]Prince Arbyss[color=ffB54ECA]" )
               endif
               call Stage3()
		endif
    //───────────────────────────────────
    //"Cổng 4"
    //───────────────────────────────────          
		if $stage == 4
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Hãy tiêu diệt heo rừng và thu thập thịt heo, hiến tế cho[color=ffB54ECA]Tu Sĩ Arch" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]It's said that an Arch Priest, Britacesk, died of hunger in this pyramid. If enough offerings are been placed at the feet of his statue, he will appear once more...]" )
               endif          
               call Stage4()
		endif
		
	}
//───────────────────────────────────────
//"Stage 2"
//───────────────────────────────────────
     function Stage2(){
     $ectID = GetEctypeID( -1 ,232 )	
     $stage = GetEctypeVar( -1, 110 )
     $Dif = GetEctypeVar( -1, 4 )
     $lang = GetPlayerVar(-1, 3301)          
     $t1mon1 = 51228
     $t1mon2 = 51231
     $t2mon1 = 61038
     $t2mon2 = 61041
     $t3mon1 = 61058
     $t3mon2 = 61061
          if $Dif == 0
               AddMonster( $t1mon1, 20, $ectID, 48, 77 , 10 )
               AddMonster( $t1mon1, 20, $ectID, 54, 78 , 10 )
               AddMonster( $t1mon1, 10, $ectID, 56, 71 , 6 )
               $Rand = RandomNumber( 1, 5 )
               if $Rand == 1
                    AddMonster( $t1mon2, 1, $ectID, 52, 71 , 0 )
               endif
               if $Rand == 2
                    AddMonster( $t1mon2, 1, $ectID, 56, 72 , 0 )
               endif
               if $Rand == 3
                    AddMonster( $t1mon2, 1, $ectID, 56, 77 , 0 )
               endif
               if $Rand == 4
                    AddMonster( $t1mon2, 1, $ectID, 46, 71 , 0 )
               endif
               if $Rand == 5
                    AddMonster( $t1mon2, 1, $ectID, 57, 72 , 0 )
               endif
          endif
          
          if $Dif == 1
               AddMonster( $t2mon1, 20, $ectID, 48, 77 , 10 )
               AddMonster( $t2mon1, 20, $ectID, 54, 78 , 10 )
               AddMonster( $t2mon1, 10, $ectID, 56, 71 , 6 )
               $Rand = RandomNumber( 1, 5 )
               if $Rand == 1
                    AddMonster( $t2mon2, 1, $ectID, 52, 71 , 0 )
               endif
               if $Rand == 2
                    AddMonster( $t2mon2, 1, $ectID, 56, 72 , 0 )
               endif
               if $Rand == 3
                    AddMonster( $t2mon2, 1, $ectID, 56, 77 , 0 )
               endif
               if $Rand == 4
                    AddMonster( $t2mon2, 1, $ectID, 46, 71 , 0 )
               endif
               if $Rand == 5
                    AddMonster( $t2mon2, 1, $ectID, 57, 72 , 0 )
               endif
          endif

          if $Dif == 2
               AddMonster( $t3mon1, 20, $ectID, 48, 77 , 10 )
               AddMonster( $t3mon1, 20, $ectID, 54, 78 , 10 )
               AddMonster( $t3mon1, 10, $ectID, 56, 71 , 6 )
               $Rand = RandomNumber( 1, 5 )
               if $Rand == 1
                    AddMonster( $t3mon2, 1, $ectID, 52, 71 , 0 )
               endif
               if $Rand == 2
                    AddMonster( $t3mon2, 1, $ectID, 56, 72 , 0 )
               endif
               if $Rand == 3
                    AddMonster( $t3mon2, 1, $ectID, 56, 77 , 0 )
               endif
               if $Rand == 4
                    AddMonster( $t3mon2, 1, $ectID, 46, 71 , 0 )
               endif
               if $Rand == 5
                    AddMonster( $t3mon2, 1, $ectID, 57, 72 , 0 )
               endif
          endif
     }
//───────────────────────────────────────
//"Stage 3"
//───────────────────────────────────────
     function Stage3(){
     $ectID = GetEctypeID( -1 ,232 )	
     $stage = GetEctypeVar( -1, 110 )
     $Dif = GetEctypeVar( -1, 4 )
     $lang = GetPlayerVar(-1, 3301)          
     $t1mon1 = 51229
     $t2mon1 = 61039
     $t3mon1 = 61059       
          if $Dif == 0
               AddMonster( $t1mon1, 20, $ectID, 48, 77 , 9 )
               AddMonster( $t1mon1, 20, $ectID, 54, 78 , 9 )
               AddMonster( $t1mon1, 10, $ectID, 56, 71 , 6 )
          endif
          if $Dif == 1
               AddMonster( $t2mon1, 20, $ectID, 48, 77 , 9 )
               AddMonster( $t2mon1, 20, $ectID, 54, 78 , 9 )
               AddMonster( $t2mon1, 10, $ectID, 56, 71 , 6 )
          endif
          if $Dif == 2
               AddMonster( $t3mon1, 20, $ectID, 48, 77 , 9 )
               AddMonster( $t3mon1, 20, $ectID, 54, 78 , 9 )
               AddMonster( $t3mon1, 10, $ectID, 56, 71 , 6 )
          endif
     }
//───────────────────────────────────────
//"Stage 4"
//───────────────────────────────────────
     function Stage4(){
     $ectID = GetEctypeID( -1 ,232 )	
     $stage = GetEctypeVar( -1, 110 )
     $Dif = GetEctypeVar( -1, 4 )
     $lang = GetPlayerVar(-1, 3301)
     $mon1 = 51225
     $mon2 = 61035
     $mon3 = 61055
          if $Dif == 0
               AddMonster( $mon1, 1, $ectID, 48, 77 , 0 )
          endif
          if $Dif == 1
               AddMonster( $mon1, 1, $ectID, 48, 77 , 0 )
          endif
          if $Dif == 2
               AddMonster( $mon1, 1, $ectID, 48, 77 , 0 )
          endif
     }
	
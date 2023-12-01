	function OnDead(){
		$lang = GetPlayerVar(-1,3301)
		$Count = GetEctypeVar(-1 ,110)
          $Count = $Count + 1
		SetEctypeVar(-1 ,110,$Count)
		$ectype_ID = GetEctypeID(-1 ,222)
          #mobVN = "U Linh Kiếm Sĩ"
          #mobEN = "Ghost Pirate"
          
          if $Count < 50
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Đã diệt ", #mobVN, ":[color=ffB54ECA]", $Count, "/50[color=ffB54ECA]" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Defeat ", #mobEN, ":[color=ffB54ECA]", $Count, "/50[color=ffB54ECA]")
               endif
          endif
          if $Count == 10
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Vòng 2[color=FF22E974] sẽ xuất hiện sau 5 giây" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Second[color=FF22E974] round will appear in 5 seconds" )
               endif
               StartEctypeTimer(-1, 222, 1)
          endif
          if $Count == 20
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Vòng 3[color=FF22E974] sẽ xuất hiện sau 5 giây" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Third[color=FF22E974] round will appear in 5 seconds" )
               endif
               StartEctypeTimer(-1, 222, 2)
          endif
          if $Count == 30
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Vòng 4[color=FF22E974] sẽ xuất hiện sau 5 giây" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Fourth[color=FF22E974] round will appear in 5 seconds" )
               endif          
               StartEctypeTimer(-1, 222, 3)
          endif
          if $Count == 40
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Vòng 5[color=FF22E974] sẽ xuất hiện sau 5 giây" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Fifth[color=FF22E974] round will appear in 5 seconds" )
               endif          
               StartEctypeTimer(-1, 222, 4)
          endif
          if $Count == 50
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Armond[color=FF22E974] sẽ xuất hiện sau 5 giây" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Armond[color=FF22E974] will appear in 5 seconds" )
               endif          
               StartEctypeTimer(-1, 222, 5)
          endif
		
	}
		

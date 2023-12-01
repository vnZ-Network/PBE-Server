	function OnDead(){
		$ectID = GetEctypeID(-1 ,222)
		$Dif = GetEctypeVar($ectID ,0)
          $lang = GetPlayerVar(-1, 3301)
		if $Dif == 0
               AddNPC(1909, $ectID)
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Đảo U Linh [color=FF22E974]đã kết thúc vui lòng thoát Phụ Bản")
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Specter Island [color=FF22E974]has end please exit the Instance")
               endif
          endif

          if $Dif == 1
               AddNPC(1909, $ectID)
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Đảo U Linh [color=FF22E974]đã kết thúc vui lòng thoát Phụ Bản")
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Specter Island [color=FF22E974]has end please exit the Instance")
               endif               
          endif

          if $Dif == 2
               AddMonster( 51137, 1, $ectID, 61, 41,  0 )
               AddNPC(1909, $ectID)
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Thuyền Trưởng Barbert [color=FF22E974]: hãy thử sức mạnh tuyệt đối của ta")
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Captian Barbert [color=FF22E974]: Who dare challenge me !??")
               endif
          endif
	
		
	}
		

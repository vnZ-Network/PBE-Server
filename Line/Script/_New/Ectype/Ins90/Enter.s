//───────────────────────────────────────
//Phụ Bản:《"Thành Dung Nham [3 Chế Độ]"》
//───────────────────────────────────────
	function OnRequest(){
		$Ins = GetEctypeID( -1, 223 )
		$lang = GetPlayerVar( -1, 3301 )
		if $lang < 1
			BC( "messagebox", "player", -1,  "{#FFF23805=Vui lòng chọn Ngôn Ngữ\nPlease chose your Language Pack first#}" )	
               DisableNpcOption(0)
               DisableNpcOption(1)
               DisableNpcOption(2)
               DisableNpcOption(3)
               DisableNpcOption(4)
          endif

          if $Ins > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
               DisableNpcOption(2)
		else
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif                          
	}
	
//───────────────────────────────────────
//"Vào Phụ Bản - Dễ"
//───────────────────────────────────────
	function OnOption0(){
    //───────────────────────────────────
    //"Check VIP"
    //───────────────────────────────────
          call vip()
          if $Check == 2
               $Daily = 5
               //『"Người Chơi VIP"』          
          endif
          if $Check == 1
               $Daily = 5
               //『"Người Chơi Thường"』
          endif
    //───────────────────────────────────
    //"Check Thông Số"
    //───────────────────────────────────
     #instanceEN = "Lava Heights (Normal)"
     #instanceVN = "Thành Dung Nham (Thường)"
          $EctVar = 0
          $Dif = 2

		$v_done = 3401
		$v_last = 3761
		$v_return = 3804
		
		$mapID = 223		
		$posX = 96
		$posY = 98
		$global = 932
          $reqLv = 85

          $exalevel = 20
		$ectypelevel = 110
		$leaderID = GetTeamHeaderID(-1)
		$playerID = GetPlayerID()
		$today = GetSystemTime( "yday" )
		$count = GetTeamMemberCount( -1 )
		$lang = GetPlayerVar( -1, 3301)		
			
    //───────────────────────────────────
    //"Check Thông Tin"
    //───────────────────────────────────   		
		if $count < 1
			if $lang == 1
				BC( "messagebox", "player", -1,  "{#FFF23805=Cần tôi thiểu 3 thành viên để tham gia#}" )
			endif
			if $lang == 2
				BC( "messagebox", "player", -1,  "{#FFF23805=Need atleast 3 member to Enter#}" )
			endif
		    return
		endif
		
		if $playerID != $leaderID
			if $lang == 1
				BC( "messagebox", "player", -1, "{#FFF23805=Bạn không phải đội trưởng#}" )
			endif
			if $lang == 2
				BC( "messagebox", "player", -1, "{#FFF23805=You're not party Leader#}" )
			endif
		    return	
		endif
		
		$lv = GetPlayerInfo(-1 , "level")
		if $lv < $reqLv
			if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF23805=Cần tối thiểu đạt cấp ", $reqLv,"\nmới có thể tham gia#}" )			
			endif
			if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF23805=Instance require level ", $reqLv, " or above to enter#}" )
			endif
		    return
		endif
		
		$n = 0
		$teamCount = 6
		while $n < 6
			$mem = GetTeamMemberID( -1 , $n )			
			$n = $n + 1
			if $mem != -1
			#name = GetPlayerInfo( $mem, "name" )
			$lv = GetPlayerInfo($mem , "level")
				if $lv < $reqLv
                         if $lang == 1
                              BC( "messagebox", "player", $leaderID ,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                         endif
                         if $lang == 2
                              BC( "messagebox", "player", $leaderID ,#name,"{#FFF79E1C= LV is lower than 30\nunable to enter#}" )
                         endif
                         return
                    endif
				$done = GetPlayerVar( $mem, $v_done )
				$lastday = GetPlayerVar( $mem, $v_last  )
				if $today != $lastday
					SetPlayerVar( $mem , $v_done ,0 )
					$done = GetPlayerVar( $mem, $v_done )
				endif
					$teamCount = $teamCount - 1
					if $done >= $Daily
						#name = GetPlayerInfo( $mem, "name" )
                              if $lang == 1
                              BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                              endif
                              if $lang == 2
                                   BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                              endif
					    return	
					endif
				endif
			endif
		endwhile
    //───────────────────────────────────
    //"Tiến vào Phụ Bản"
    //───────────────────────────────────      
		$is_succeed = FlyToEctype( -1, $mapID, $posX, $posY )
		$lastday = GetPlayerVar( -1 , $v_last )
		if $is_succeed > 0
			$TJ_join_number = GetGlobalVar($global)
			$TJ_join_number = $TJ_join_number + $teamCount
			SetGlobalVar($global , $TJ_join_number)

			if $today != $lastday
				$ectypeUID = GetEctypeUniqueID( -1, $mapID )
				SetPlayerVar( -1, $v_last ,$today )
				SetPlayerVar( -1 , $v_done ,1 )
				SetPlayerVar( -1 , $v_return ,$ectypeUID )				
				$ectypeID = GetEctypeID( -1, $mapID )
                    StartEctypeTimer(-1, $mapID, 0)
                    StartEctypeTimer(-1, $mapID, 1)
                    StartEctypeTimer(-1, $mapID, 2)
                    SetEctypeVar($ectypeID, $EctVar, $Dif)
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Bắt đầu phụ bản:", #instanceVN, "[color=FFCA64EB] Lần x 1" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Enter Instance :", #instanceEN, "[color=FFCA64EB] Time x 1" )
                    endif 							
			else
				$ectypeUID = GetEctypeUniqueID( -1, $mapID )
				$done =  GetPlayerVar( -1 , $v_done )
				$done = $done + 1
				SetPlayerVar( -1 , $v_last ,$today )
				SetPlayerVar( -1 , $v_done ,$done )
				SetPlayerVar( -1 , $v_return ,$ectypeUID )				
				$ectypeID = GetEctypeID( -1, $mapID )
                    StartEctypeTimer(-1, $mapID, 0)
                    StartEctypeTimer(-1, $mapID, 1)
                    StartEctypeTimer(-1, $mapID, 2)
                    SetEctypeVar($ectypeID, $EctVar, $Dif)							
                    if $lang == 1
                         BC( "chat" , "player" , $leaderID , "[color=FF22E974]Bắt đầu phụ bản:", #instanceVN, "[color=FFCA64EB] Lần x ", $done )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , $leaderID , "[color=FF22E974]Enter Instance :", #instanceEN, "[color=FFCA64EB] Time x ", $done )
                    endif 
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		$n = 0
		while $n < 6
			$mem = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			if $mem != -1
				if $mem != $leaderID		
					$is_succeed = FlyToEctype( $mem, $mapID, $posX, $posY )
					if $is_succeed > 0
						$lastday = GetPlayerVar( $mem , $v_last )
						if $today != $lastday
							$ectypeUID = GetEctypeUniqueID( $mem, $mapID )
							SetPlayerVar( $mem, $v_last ,$today )
							SetPlayerVar( $mem , $v_done ,1 )
							SetPlayerVar( $mem , $v_return ,$ectypeUID )
						else
							$ectypeUID = GetEctypeUniqueID( $mem, $mapID )
							$done =  GetPlayerVar( $mem , $v_done )
							$done = $done + 1
							SetPlayerVar( $mem , $v_done ,$done )
							SetPlayerVar( $mem , $v_last ,$today )
                                   SetPlayerVar( $mem , $v_return ,$ectypeUID )
						endif					
						else
						     BC( "dialogbox", "player", $mem, "Error, error code:" , $is_succeed )
					     return
					endif
				endif
			endif
		endwhile
	}	
//───────────────────────────────────────
//"Vào Phụ Bản - Khó"
//───────────────────────────────────────
	function OnOption1(){
    //───────────────────────────────────
    //"Check VIP"
    //───────────────────────────────────
          call vip()
          if $Check == 2
               $Daily = 5
               //『"Người Chơi VIP"』          
          endif
          if $Check == 1
               $Daily = 5
               //『"Người Chơi Thường"』
          endif
    //───────────────────────────────────
    //"Check Thông Số"
    //───────────────────────────────────
     #instanceEN = "Lava Heights (Hard)"
     #instanceVN = "Thành Dung Nham (Khó)"
          $EctVar = 0
          $Dif = 0

		$v_done = 3401
		$v_last = 3761
		$v_return = 3804
		
		$mapID = 223		
		$posX = 96
		$posY = 98
		$global = 932
          $reqLv = 85

          $exalevel = 20
		$ectypelevel = 110
		$leaderID = GetTeamHeaderID(-1)
		$playerID = GetPlayerID()
		$today = GetSystemTime( "yday" )
		$count = GetTeamMemberCount( -1 )
		$lang = GetPlayerVar( -1, 3301)		
				
    //───────────────────────────────────
    //"Check Thông Tin"
    //───────────────────────────────────   		
		if $count < 1
			if $lang == 1
				BC( "messagebox", "player", -1,  "{#FFF23805=Cần tôi thiểu 3 thành viên để tham gia#}" )
			endif
			if $lang == 2
				BC( "messagebox", "player", -1,  "{#FFF23805=Need atleast 3 member to Enter#}" )
			endif
		    return
		endif
		
		if $playerID != $leaderID
			if $lang == 1
				BC( "messagebox", "player", -1, "{#FFF23805=Bạn không phải đội trưởng#}" )
			endif
			if $lang == 2
				BC( "messagebox", "player", -1, "{#FFF23805=You're not party Leader#}" )
			endif
		    return	
		endif
		
		$lv = GetPlayerInfo(-1 , "level")
		if $lv < $reqLv
			if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF23805=Cần tối thiểu đạt cấp ", $reqLv,"\nmới có thể tham gia#}" )			
			endif
			if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF23805=Instance require level ", $reqLv, " or above to enter#}" )
			endif
		    return
		endif
		
		$n = 0
		$teamCount = 6
		while $n < 6
			$mem = GetTeamMemberID( -1 , $n )			
			$n = $n + 1
			if $mem != -1
			#name = GetPlayerInfo( $mem, "name" )
			$lv = GetPlayerInfo($mem , "level")
				if $lv < $reqLv
	                    if $lang == 1
                              BC( "messagebox", "player", $leaderID ,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                         endif
                         if $lang == 2
                              BC( "messagebox", "player", $leaderID ,#name,"{#FFF79E1C= LV is lower than 30\nunable to enter#}" )
                         endif
                         return
                    endif
				$done = GetPlayerVar( $mem, $v_done )
				$lastday = GetPlayerVar( $mem, $v_last  )
				if $today != $lastday
					SetPlayerVar( $mem , $v_done ,0 )
					$done = GetPlayerVar( $mem, $v_done )
				endif
					$teamCount = $teamCount - 1
					if $done >= $Daily
						#name = GetPlayerInfo( $mem, "name" )
                              if $lang == 1
                                   BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                              endif
                              if $lang == 2
                                   BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                              endif
					    return	
					endif
				endif
			endif
		endwhile
    //───────────────────────────────────
    //"Tiến vào Phụ Bản"
    //───────────────────────────────────      
		$is_succeed = FlyToEctype( -1, $mapID, $posX, $posY )
		$lastday = GetPlayerVar( -1 , $v_last )
		if $is_succeed > 0
			$TJ_join_number = GetGlobalVar($global)
			$TJ_join_number = $TJ_join_number + $teamCount
			SetGlobalVar($global , $TJ_join_number)

			if $today != $lastday
				$ectypeUID = GetEctypeUniqueID( -1, $mapID )
				SetPlayerVar( -1, $v_last ,$today )
				SetPlayerVar( -1 , $v_done ,1 )
				SetPlayerVar( -1 , $v_return ,$ectypeUID )				
				$ectypeID = GetEctypeID( -1, $mapID )
                    StartEctypeTimer(-1, $mapID, 0)
                    StartEctypeTimer(-1, $mapID, 1)
                    StartEctypeTimer(-1, $mapID, 2)
                    SetEctypeVar($ectypeID, $EctVar, $Dif)
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Bắt đầu phụ bản:", #instanceVN, "[color=FFCA64EB] Lần x 1" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Enter Instance :", #instanceEN, "[color=FFCA64EB] Time x 1" )
                    endif 							
			else
				$ectypeUID = GetEctypeUniqueID( -1, $mapID )
				$done =  GetPlayerVar( -1 , $v_done )
				$done = $done + 1
				SetPlayerVar( -1 , $v_last ,$today )
				SetPlayerVar( -1 , $v_done ,$done )
				SetPlayerVar( -1 , $v_return ,$ectypeUID )				
				$ectypeID = GetEctypeID( -1, $mapID )
                    StartEctypeTimer(-1, $mapID, 0)
                    StartEctypeTimer(-1, $mapID, 1)
                    StartEctypeTimer(-1, $mapID, 2)
                    SetEctypeVar($ectypeID, $EctVar, $Dif)							
                    if $lang == 1
                         BC( "chat" , "player" , $leaderID , "[color=FF22E974]Bắt đầu phụ bản:", #instanceVN, "[color=FFCA64EB] Lần x ", $done )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , $leaderID , "[color=FF22E974]Enter Instance :", #instanceEN, "[color=FFCA64EB] Time x ", $done )
                    endif 
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		$n = 0
		while $n < 6
			$mem = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			if $mem != -1
				if $mem != $leaderID		
					$is_succeed = FlyToEctype( $mem, $mapID, $posX, $posY )
					if $is_succeed > 0
						$lastday = GetPlayerVar( $mem , $v_last )
						if $today != $lastday
							$ectypeUID = GetEctypeUniqueID( $mem, $mapID )
							SetPlayerVar( $mem, $v_last ,$today )
							SetPlayerVar( $mem , $v_done ,1 )
							SetPlayerVar( $mem , $v_return ,$ectypeUID )
						else
							$ectypeUID = GetEctypeUniqueID( $mem, $mapID )
							$done =  GetPlayerVar( $mem , $v_done )
							$done = $done + 1
							SetPlayerVar( $mem , $v_done ,$done )
							SetPlayerVar( $mem , $v_last ,$today )
                                   SetPlayerVar( $mem , $v_return ,$ectypeUID )
						endif					
						else
						     BC( "dialogbox", "player", $mem, "Error, error code:" , $is_succeed )
					return
					endif
				endif
			endif
		endwhile

	}
//───────────────────────────────────────
//"Vào Phụ Bản - Địa Ngục"
//───────────────────────────────────────
	function OnOption2(){
    //───────────────────────────────────
    //"Check VIP"
    //───────────────────────────────────
          call vip()
          if $Check == 2
               $Daily = 5
               //『"Người Chơi VIP"』          
          endif
          if $Check == 1
               $Daily = 5
               //『"Người Chơi Thường"』
          endif
    //───────────────────────────────────
    //"Check Thông Số"
    //───────────────────────────────────
     #instanceEN = "Lava Heights (Nightmare)"
     #instanceVN = "Thành Dung Nham (Địa Ngục)"
          $EctVar = 0
          $Dif = 1

		$v_done = 3401
		$v_last = 3761
		$v_return = 3804
		
		$mapID = 223		
		$posX = 96
		$posY = 98
		$global = 932
          $reqLv = 85

          $exalevel = 20
		$ectypelevel = 110
		$leaderID = GetTeamHeaderID(-1)
		$playerID = GetPlayerID()
		$today = GetSystemTime( "yday" )
		$count = GetTeamMemberCount( -1 )
		$lang = GetPlayerVar( -1, 3301)		
		$Vip = GetPlayerVar( -1, 4002)
    //───────────────────────────────────
    //"Check Thông Tin"
    //───────────────────────────────────   		
		if $count < 1
			if $lang == 1
				BC( "messagebox", "player", -1,  "{#FFF23805=Cần tôi thiểu 3 thành viên để tham gia#}" )
			endif
			if $lang == 2
				BC( "messagebox", "player", -1,  "{#FFF23805=Need atleast 3 member to Enter#}" )
			endif
		     return
		endif
		
		if $playerID != $leaderID
			if $lang == 1
				BC( "messagebox", "player", -1, "{#FFF23805=Bạn không phải đội trưởng#}" )
			endif
			if $lang == 2
				BC( "messagebox", "player", -1, "{#FFF23805=You're not party Leader#}" )
			endif
		     return	
		endif
		
		$lv = GetPlayerInfo(-1 , "level")
		if $lv < $reqLv
			if $lang == 1
			     BC( "messagebox", "player", -1,"{#FFF23805=Cần tối thiểu đạt cấp ", $reqLv,"\nmới có thể tham gia#}" )			
			endif
			if $lang == 2
			     BC( "messagebox", "player", -1,"{#FFF23805=Instance require level ", $reqLv, " or above to enter#}" )
			endif
		     return
		endif
		
		$n = 0
		$teamCount = 6
          while $n < 6
               $mem = GetTeamMemberID( -1 , $n )			
               $n = $n + 1
               if $mem != -1
               #name = GetPlayerInfo( $mem, "name" )
               $lv = GetPlayerInfo($mem , "level")
               $Vip = GetPlayerVar($mem, 4002)
                    if $lv < $reqLv
                         if $lang == 1
                              BC( "messagebox", "player", $leaderID ,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                         endif
                         if $lang == 2
                              BC( "messagebox", "player", $leaderID ,#name,"{#FFF79E1C= LV is lower than 30\nunable to enter#}" )
                         endif
                         return
                    endif

                    if $Vip < 1
                         if $lang == 1
                              BC( "messagebox", "player", $leaderID ,#name,"{#FFF79E1C= không có đặc quyền Quý Tộc#}" )
                         endif
                         if $lang == 2
                              BC( "messagebox", "player", $leaderID ,#name,"{#FFF79E1C= do not have Noble Privileges#}" )
                         endif
                         return
                    endif
                    
                    $done = GetPlayerVar( $mem, $v_done )
                    $lastday = GetPlayerVar( $mem, $v_last  )
                    if $today != $lastday
                         SetPlayerVar( $mem , $v_done ,0 )
                         $done = GetPlayerVar( $mem, $v_done )
                    endif
                    $teamCount = $teamCount - 1
                    if $done >= $Daily
                         #name = GetPlayerInfo( $mem, "name" )
                         if $lang == 1
                         BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                         endif
                         if $lang == 2
                              BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                         endif
                    return	
                    endif
               endif
          endwhile
    //───────────────────────────────────
    //"Tiến vào Phụ Bản"
    //───────────────────────────────────      
		$is_succeed = FlyToEctype( -1, $mapID, $posX, $posY )
		$lastday = GetPlayerVar( -1 , $v_last )
		if $is_succeed > 0
			$TJ_join_number = GetGlobalVar($global)
			$TJ_join_number = $TJ_join_number + $teamCount
			SetGlobalVar($global , $TJ_join_number)

			if $today != $lastday
				$ectypeUID = GetEctypeUniqueID( -1, $mapID )
				SetPlayerVar( -1, $v_last ,$today )
				SetPlayerVar( -1 , $v_done ,1 )
				SetPlayerVar( -1 , $v_return ,$ectypeUID )				
				$ectypeID = GetEctypeID( -1, $mapID )
                    StartEctypeTimer(-1, $mapID, 0)
                    StartEctypeTimer(-1, $mapID, 1)
                    StartEctypeTimer(-1, $mapID, 2)
                    SetEctypeVar($ectypeID, $EctVar, $Dif)
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Bắt đầu phụ bản:", #instanceVN, "[color=FFCA64EB] Lần x 1" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Enter Instance :", #instanceEN, "[color=FFCA64EB] Time x 1" )
                    endif 							
			else
				$ectypeUID = GetEctypeUniqueID( -1, $mapID )
				$done =  GetPlayerVar( -1 , $v_done )
				$done = $done + 1
				SetPlayerVar( -1 , $v_last ,$today )
				SetPlayerVar( -1 , $v_done ,$done )
				SetPlayerVar( -1 , $v_return ,$ectypeUID )				
				$ectypeID = GetEctypeID( -1, $mapID )
                    StartEctypeTimer(-1, $mapID, 0)
                    StartEctypeTimer(-1, $mapID, 1)
                    StartEctypeTimer(-1, $mapID, 2)
                    SetEctypeVar($ectypeID, $EctVar, $Dif)							
                    if $lang == 1
                         BC( "chat" , "player" , $leaderID , "[color=FF22E974]Bắt đầu phụ bản:", #instanceVN, "[color=FFCA64EB] Lần x ", $done )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , $leaderID , "[color=FF22E974]Enter Instance :", #instanceEN, "[color=FFCA64EB] Time x ", $done )
                    endif 
			endif
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		$n = 0
		while $n < 6
			$mem = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			if $mem != -1
				if $mem != $leaderID		
					$is_succeed = FlyToEctype( $mem, $mapID, $posX, $posY )
					if $is_succeed > 0
						$lastday = GetPlayerVar( $mem , $v_last )
						if $today != $lastday
							$ectypeUID = GetEctypeUniqueID( $mem, $mapID )
							SetPlayerVar( $mem, $v_last ,$today )
							SetPlayerVar( $mem , $v_done ,1 )
							SetPlayerVar( $mem , $v_return ,$ectypeUID )
						else
							$ectypeUID = GetEctypeUniqueID( $mem, $mapID )
							$done =  GetPlayerVar( $mem , $v_done )
							$done = $done + 1
							SetPlayerVar( $mem , $v_done ,$done )
							SetPlayerVar( $mem , $v_last ,$today )
                                   SetPlayerVar( $mem , $v_return ,$ectypeUID )
						endif					
						else
						     BC( "dialogbox", "player", $mem, "Error, error code:" , $is_succeed )
					return
					endif
				endif
			endif
		endwhile

	}     
//───────────────────────────────────
//"Quay lại phụ bản"
//───────────────────────────────────
     function OnOption3(){
          call vip()
          if $Check == 2
               $Daily = 5
               //『"Người Chơi VIP"』          
          endif
          if $Check == 1
               $Daily = 5
               //『"Người Chơi Thường"』
          endif

          $v_done = 3401
          $v_return = 3804
          $v_last = 3761
          $mapID = 223

          $posX = 96
          $posY = 98	
          $today = GetSystemTime( "yday" )
          #name = GetPlayerInfo( -1, "name" )
          $lv = GetPlayerInfo(-1 , "level")
          $lang = GetPlayerVar( -1, 3301)
          $reqLv = 30
          $ectypeID = GetEctypeID( -1, $mapID )
          $ectypeUID = GetEctypeUniqueID( -1, $mapID )
          $player_time =  GetPlayerVar( -1, $v_last )
          $Complete = GetMapPlayerCount( $ectypeID )
          if $Complete >= 6
               BC( "dialogbox", "player", -1, "Instance is full." )
               return
          endif
          if $ectypeID == 0
               if $lang == 1
               BC( "messagebox", "player", -1,  "{#FFF23805=Không có Phụ Bản nào để trở về#}" )			
               endif
               if $lang == 2
               BC( "messagebox", "player", -1, "{#FFF23805=There no Dungeon to return#}" )
               endif
               return
          endif		
          $Player_UID = GetPlayerVar( -1, $v_return )
          if $Player_UID != $ectypeUID
               if $player_time == $today
                    $Complete =  GetPlayerVar( -1, $v_done )
                    if $Complete >= $Daily
                         #name = GetPlayerInfo( $mem, "name" )
                         if $lang == 1
                              BC( "messagebox", "player", -1, #name,"{#FFF23805= đã hết lượt tham gia Phụ Bản#}" )	
                         endif
                         if $lang == 2
                              BC( "messagebox", "player", -1, #name,"{#FFF23805= already complete all Dungeon today#}" )
                         endif
                    return	
                    endif
               endif
          endif		
          $is_succeed = FlyToEctype( -1, $mapID, $posX, $posY )
               if $lang == 1
                    BC( "messagebox", "player", -1, "{#ffB54ECA=Trở lại Phụ Bản thành công#}" )
               endif
               if $lang == 2
                    BC( "messagebox", "player", -1, "{#ffB54ECA=Return to Dungeon#}" )
               endif
          if $is_succeed > 0
          $Player_UID = GetPlayerVar( -1, $v_return )
               if $Player_UID == $ectypeUID
               endif
          else
               if $lang == 1
                    BC( "dialogbox", "player", -1, "Dungeon đã đẩy không thể quay lại." )			
               endif
               if $lang == 2			
                    BC( "dialogbox", "player", -1, "Dungeon is full. Failed to enter." )
               endif
          endif
          
          
     }
//───────────────────────────────────────
//"Làm mới Phụ Bản"
//───────────────────────────────────────
	function OnOption4(){


		$mapID = 223
		$lang = GetPlayerVar( -1, 3301)
		
		$DUNGEON = GetEctypeID( -1, $mapID )
		if $DUNGEON > 0 
			$ectypeID = GetEctypeID(-1 , $mapID )
			$Complete = GetMapPlayerCount($ectypeID)
			if $Complete != 0
				if $lang == 1
					BC( "messagebox", "player", -1, "{#FFBF2271=Không thể làm mới Phụ Bản\nĐồng đội vẫn còn bên trong#}" )
					return
				endif
				if $lang == 2
					BC( "messagebox", "player", -1, "{#FFBF2271=Can't Reset Instance\nYour team still inside#}" )
					return
				endif
			endif
			$revalue = ReleaseEctype( -1 , $mapID )
			if $revalue == 0
				if $lang == 1
					BC( "messagebox", "player", -1, "{#ffB54ECA=Phụ Bản đã được làm mới#}" )
				endif
				if $lang == 2
					BC( "messagebox", "player", -1, "{#ffB54ECA=Instance has been Reset#}" )
				endif	
			else
				if $lang == 1
					BC( "chat", "player", -1, "[color=FFF23805]Làm mới Phụ Bản thất bại" )
				endif
				if $lang == 2
					BC( "chat", "player", -1, "[color=FFF23805]Failed to reset Instance" )
				endif
			endif
			return
		endif	
	}
//───────────────────────────────────────
//"Thông Người Chơi VIP"
//───────────────────────────────────────
    function vip(){
	$Now_Yday =  GetSystemTime( "yday" ) 
	$Vip = GetPlayerVar( -1, 4002)
	
	if $Vip >= 1
		$Check = 2
		return
	endif
    if $Vip == 0
		$Check = 1
		return
	endif           
    }
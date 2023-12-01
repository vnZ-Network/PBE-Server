//───────────────────────────────────────
//Phụ Bản:《"Thí Luyện"》
//───────────────────────────────────────
    function OnRequest(){
        $lang = GetPlayerVar(-1, 3301)
        if $lang < 1
            BC( "messagebox", "player", -1,  "{#FFF23805=Vui lòng chọn Ngôn Ngữ\nPlease chose your Language Pack first#}" )
            DisableNpcOption(0)
            DisableNpcOption(1)
            DisableNpcOption(2)
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
            $Daily = 2
            //『"Người Chơi VIP"』          
        endif
        if $Check == 1
            $Daily = 1
             //『"Người Chơi Thường"』
        endif
    //───────────────────────────────────
    //"Thông Số"
    //───────────────────────────────────
        $v_done = 3763
        $v_last = 3806
        $v_return = 3947
        $mapID = 233
        $posX = 60
        $posY = 60
        $global = 90
        $reqLv = 30
        $Dif = 0
        $last = GetPlayerVar(-1, $v_last)
        $done = GetPlayerVar(-1, $v_done)
        $return = GetPlayerVar(-1, $v_return)
        #name = GetPlayerInfo(-1,"name")
        $level = GetPlayerInfo(-1,"level")
        $today = GetSystemTime( "yday" )
        $lang = GetPlayerVar(-1, 3301)
        $team = IsPlayerInTeam(-1)
        $leaderID = GetTeamHeaderID(-1)
        $playerID = GetPlayerID()
        $count = GetTeamMemberCount(-1)
        $size = GetTeamAreaSize(-1)
        $Mem1 = GetTeamMemberID( -1, 0 )
		$Mem2 = GetTeamMemberID( -1, 1 )
		$Mem3 = GetTeamMemberID( -1, 2 )
		$Mem4 = GetTeamMemberID( -1, 3 )
		$Mem5 = GetTeamMemberID( -1, 4 )
		$Mem6 = GetTeamMemberID( -1, 5 )
        $ectypeID = GetEctypeID(-1, $mapID)
        $ectypeUID = GetEctypeUniqueID(-1, $mapID)

    //───────────────────────────────────
    //"Check Thông Tin Chung"
    //───────────────────────────────────
        //---------------『"Check tổ đội"』 
            if $team == -1
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Vui lòng thành lập tổ đội để tham gia#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=You must form a party to enter the instance#}" ) 
                endif
                return
            endif

        //---------------『"Check đội trưởng"』
            if $playerID != $leaderID   
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không phải đội trưởng#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=You are not the party leader#}" ) 
                endif
                return
            endif
    
        //---------------『"Check khoản cách"』       
            if $size > 20
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Đồng đội cách quá xa để tham gia#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=Your party members are too far away#}" ) 
                endif
                return
            endif

        //---------------『"Check số người"』  
            if $count > 3
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Phụ Bản < Dễ > tối đa 3 người tham gia#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=< Easy > Instance only allow 3 members in party#}" ) 
                endif
                return
            endif             
    //───────────────────────────────────
    //"Check Thông Tin đồng đội"
    //───────────────────────────────────
        //---------------『"Người Chơi 1"』 
            if $Mem1 != -1
                #name = GetPlayerInfo($Mem1, "name")
                $lv = GetPlayerInfo($Mem1, "level")
                $i_done = GetPlayerVar($Mem1, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif            
        //---------------『"Người Chơi 2"』 
            if $Mem2 != -1
                #name = GetPlayerInfo($Mem2, "name")
                $lv = GetPlayerInfo($Mem2, "level")
                $i_done = GetPlayerVar($Mem2, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif            
        //---------------『"Người Chơi 3"』 
            if $Mem3 != -1
                #name = GetPlayerInfo($Mem3, "name")
                $lv = GetPlayerInfo($Mem3, "level")
                $i_done = GetPlayerVar($Mem3, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif
        //---------------『"Người Chơi 4"』 
            if $Mem4 != -1
                #name = GetPlayerInfo($Mem4, "name")
                $lv = GetPlayerInfo($Mem4, "level")
                $i_done = GetPlayerVar($Mem4, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif 
        //---------------『"Người Chơi 5"』 
            if $Mem5 != -1
                #name = GetPlayerInfo($Mem5, "name")
                $lv = GetPlayerInfo($Mem5, "level")
                $i_done = GetPlayerVar($Mem5, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                    BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif  
        //---------------『"Người Chơi 6"』 
            if $Mem6 != -1
                #name = GetPlayerInfo($Mem6, "name")
                $lv = GetPlayerInfo($Mem6, "level")
                $i_done = GetPlayerVar($Mem6, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                    BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                    BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif
    //───────────────────────────────────
    //"Check Thần Cấp"
    //───────────────────────────────────
        $a = 0
        $total_fieldlv = 0
        $temp_fieldlv = 0
            if $Mem1 != -1
                $lv = GetPlayerInfo($Mem1, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem1)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif

            if $Mem2 != -1
                $lv = GetPlayerInfo($Mem2, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem2)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif

            if $Mem3 != -1
                $lv = GetPlayerInfo($Mem3, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem3)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif

            if $Mem4 != -1
                $lv = GetPlayerInfo($Mem4, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem4)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif

            if $Mem5 != -1
                $lv = GetPlayerInfo($Mem5, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem5)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif  

            if $Mem6 != -1
                $lv = GetPlayerInfo($Mem6, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem6)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif     

        //---------------『"Check tổng Thần Cấp"』
            $teamLv = $a / $count
            if $total_fieldlv > $count
                $mon_fieldlv = $total_fieldlv / $count
                if $teamLv < 120
                    $teamLv = 120
                endif
            else
                $mon_fieldlv = 0
            endif
    //───────────────────────────────────
    //"Hoàn tất - Bay vào Phụ Bản"
    //───────────────────────────────────
        $succeed = FlyToEctype($leaderID, $mapID, $posX, $posY)
        if $succeed > 0
            $TJ_join_number = GetGlobalVar($global)
            $TJ_join_number = $TJ_join_number + $count
            SetGlobalVar($global , $TJ_join_number)

            if $today != $last
                $ectypeID = GetEctypeID(-1, $mapID)
                $ectypeUID = GetEctypeUniqueID(-1, $mapID)
                $done = GetPlayerVar(-1, $v_done)
                $done = $done + 1
                SetPlayerVar(-1, $v_done, $done)
                SetPlayerVar(-1, $v_last, $ectypeUID)
                StartEctypeTimer(-1, $mapID, 1)
                StartEctypeTimer(-1, $mapID, 2)
                SetEctypeVar($ectypeID, 110, $teamLv)
                SetEctypeVar($ectypeID, 90, $mon_fieldlv)
                SetEctypeVar($ectypeID, 11, $Dif)                
                if $lang == 1
                    BC( "chat" , "player" , $leaderID , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ< Dễ >:[color=FFCA64EB]Lần x ", $done )
                endif
                if $lang == 2
                    BC( "chat" , "player" , $leaderID , "[color=FF22E974]Entering Trail of Brave< Easy >:[color=FFCA64EB]Time x ", $done )
                endif                             
            endif
        else
            if $lang == 1
                BC( "messagebox" , "player" , $leaderID , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
            endif
            if $lang == 2
                BC( "messagebox" , "player" , $leaderID , "{#FFF79E1C=Instance Error Code: TOB#}" )
            endif 
            return              
        endif
        //---------------『"Người Chơi ID: 1"』
        if $Mem1 != -1
            if $Mem1 != $leaderID
                $succeed = FlyToEctype($Mem1, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem1, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem1, $mapID)
                    $done = GetPlayerVar($Mem1, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem1, $v_done, $done)
                    SetPlayerVar($Mem1, $v_last, $ectypeUID)
                    $lang = GetPlayerVar($Mem1, 3301)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem1 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ< Dễ >:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem1 , "[color=FF22E974]Entering Trail of Brave< Easy >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem1 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem1 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif
        //---------------『"Người Chơi ID: 2"』        
        if $Mem2 != -1
            if $Mem2 != $leaderID
                $succeed = FlyToEctype($Mem2, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem2, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem2, $mapID)
                    $done = GetPlayerVar($Mem2, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem2, $v_done, $done)
                    SetPlayerVar($Mem2, $v_last, $ectypeUID)  
                    $lang = GetPlayerVar($Mem2, 3301)
                    if $lang == 1
                        BC( "chat" , "player" , $Mem2 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ< Dễ >:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem2 , "[color=FF22E974]Entering Trail of Brave< Easy >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem2 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem2 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif
        //---------------『"Người Chơi ID: 3"』        
        if $Mem3 != -1
            if $Mem3 != $leaderID
                $succeed = FlyToEctype($Mem3, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem3, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem3, $mapID)
                    $done = GetPlayerVar($Mem3, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem3, $v_done, $done)
                    SetPlayerVar($Mem3, $v_last, $ectypeUID) 
                    $lang = GetPlayerVar($Mem3, 3301) 
                    if $lang == 1
                        BC( "chat" , "player" , $Mem3 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ< Dễ >:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem3 , "[color=FF22E974]Entering Trail of Brave< Easy >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem3 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem3 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif
        //---------------『"Người Chơi ID: 4"』        
        if $Mem4 != -1
            if $Mem4 != $leaderID
                $succeed = FlyToEctype($Mem4, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem4, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem4, $mapID)
                    $done = GetPlayerVar($Mem4, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem4, $v_done, $done)
                    SetPlayerVar($Mem4, $v_last, $ectypeUID) 
                    $lang = GetPlayerVar($Mem4, 3301) 
                    if $lang == 1
                        BC( "chat" , "player" , $Mem4 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ< Dễ >:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem4 , "[color=FF22E974]Entering Trail of Brave< Easy >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem4 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem4 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif
        //---------------『"Người Chơi ID: 5"』        
        if $Mem5 != -1
            if $Mem5 != $leaderID
                $succeed = FlyToEctype($Mem5, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem5, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem5, $mapID)
                    $done = GetPlayerVar($Mem5, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem5, $v_done, $done)
                    SetPlayerVar($Mem5, $v_last, $ectypeUID)
                    $lang = GetPlayerVar($Mem5, 3301)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem5 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ< Dễ >:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem5 , "[color=FF22E974]Entering Trail of Brave< Easy >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem5 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem5 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif    
        //---------------『"Người Chơi ID: 6"』        
        if $Mem6 != -1
            if $Mem6 != $leaderID
                $succeed = FlyToEctype($Mem6, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem6, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem6, $mapID)
                    $done = GetPlayerVar($Mem6, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem6, $v_done, $done)
                    SetPlayerVar($Mem6, $v_last, $ectypeUID)
                    $lang = GetPlayerVar($Mem6, 3301)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem6 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ< Dễ >:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem6 , "[color=FF22E974]Entering Trail of Brave< Easy >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem6 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem6 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif    
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
            $Daily = 2
            //『"Người Chơi VIP"』          
        endif
        if $Check == 1
            $Daily = 1
             //『"Người Chơi Thường"』
        endif
    //───────────────────────────────────
    //"Thông Số"
    //───────────────────────────────────
        $v_done = 3763
        $v_last = 3806
        $v_return = 3947
        $mapID = 233
        $posX = 60
        $posY = 60
        $global = 90
        $reqLv = 30
        $Dif = 1
        $last = GetPlayerVar(-1, $v_last)
        $done = GetPlayerVar(-1, $v_done)
        $return = GetPlayerVar(-1, $v_return)
        #name = GetPlayerInfo(-1,"name")
        $level = GetPlayerInfo(-1,"level")
        $today = GetSystemTime( "yday" )
        $lang = GetPlayerVar(-1, 3301)
        $team = IsPlayerInTeam(-1)
        $leaderID = GetTeamHeaderID(-1)
        $playerID = GetPlayerID()
        $count = GetTeamMemberCount(-1)
        $size = GetTeamAreaSize(-1)
        $Mem1 = GetTeamMemberID( -1, 0 )
		$Mem2 = GetTeamMemberID( -1, 1 )
		$Mem3 = GetTeamMemberID( -1, 2 )
		$Mem4 = GetTeamMemberID( -1, 3 )
		$Mem5 = GetTeamMemberID( -1, 4 )
		$Mem6 = GetTeamMemberID( -1, 5 )
        $ectypeID = GetEctypeID(-1, $mapID)
        $ectypeUID = GetEctypeUniqueID(-1, $mapID)

    //───────────────────────────────────
    //"Check Thông Tin Chung"
    //───────────────────────────────────
        //---------------『"Check tổ đội"』 
            if $team == -1
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Vui lòng thành lập tổ đội để tham gia#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=You must form a party to enter the instance#}" ) 
                endif
                return
            endif

        //---------------『"Check đội trưởng"』
            if $playerID != $leaderID   
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không phải đội trưởng#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=You are not the party leader#}" ) 
                endif
                return
            endif
    
        //---------------『"Check khoản cách"』       
            if $size > 20
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Đồng đội cách quá xa để tham gia#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=Your party members are too far away#}" ) 
                endif
                return
            endif

        //---------------『"Check số người"』  
            if $count < 2
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Phụ Bản [Khó] yêu cầu ít nhất 3 người tham gia#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=< Hard >Instance require atleast 3 members in party#}" ) 
                endif
                return
            endif             
    //───────────────────────────────────
    //"Check Thông Tin đồng đội"
    //───────────────────────────────────
        //---------------『"Người Chơi 1"』 
            if $Mem1 != -1
                #name = GetPlayerInfo($Mem1, "name")
                $lv = GetPlayerInfo($Mem1, "level")
                $i_done = GetPlayerVar($Mem1, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif            
        //---------------『"Người Chơi 2"』 
            if $Mem2 != -1
                #name = GetPlayerInfo($Mem2, "name")
                $lv = GetPlayerInfo($Mem2, "level")
                $i_done = GetPlayerVar($Mem2, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif            
        //---------------『"Người Chơi 3"』 
            if $Mem3 != -1
                #name = GetPlayerInfo($Mem3, "name")
                $lv = GetPlayerInfo($Mem3, "level")
                $i_done = GetPlayerVar($Mem3, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif
        //---------------『"Người Chơi 4"』 
            if $Mem4 != -1
                #name = GetPlayerInfo($Mem4, "name")
                $lv = GetPlayerInfo($Mem4, "level")
                $i_done = GetPlayerVar($Mem4, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif 
        //---------------『"Người Chơi 5"』 
            if $Mem5 != -1
                #name = GetPlayerInfo($Mem5, "name")
                $lv = GetPlayerInfo($Mem5, "level")
                $i_done = GetPlayerVar($Mem5, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                    BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif  
        //---------------『"Người Chơi 6"』 
            if $Mem6 != -1
                #name = GetPlayerInfo($Mem6, "name")
                $lv = GetPlayerInfo($Mem6, "level")
                $i_done = GetPlayerVar($Mem6, $v_done)
                if $lv < $reqLv
                    if $lang == 1
                    BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= chưa đủ cấp để tham gia phụ bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= LV is lower than 30\nunable to move enter#}" )
                    endif
                    return
                endif
                if $i_done == $Daily
                    if $lang == 1
                    BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= đã hoàn thành phụ bản này#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox", "player", $leaderID,#name,"{#FFF79E1C= or someone else already\ncomplete this Instance#}" )
                    endif
                    return
                endif
            endif
    //───────────────────────────────────
    //"Check Thần Cấp"
    //───────────────────────────────────
        $a = 0
        $total_fieldlv = 0
        $temp_fieldlv = 0
            if $Mem1 != -1
                $lv = GetPlayerInfo($Mem1, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem1)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif

            if $Mem2 != -1
                $lv = GetPlayerInfo($Mem2, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem2)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif

            if $Mem3 != -1
                $lv = GetPlayerInfo($Mem3, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem3)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif

            if $Mem4 != -1
                $lv = GetPlayerInfo($Mem4, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem4)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif

            if $Mem5 != -1
                $lv = GetPlayerInfo($Mem5, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem5)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif  

            if $Mem6 != -1
                $lv = GetPlayerInfo($Mem6, "level")
                $a = $a + $lv
                $temp_fieldlv = GetFieldLevel($Mem6)
                $temp_fieldlv = $temp_fieldlv + 1
                $total_fieldlv = $total_fieldlv + $temp_fieldlv
            endif     

        //---------------『"Check tổng Thần Cấp"』
            $teamLv = $a / $count
            if $total_fieldlv > $count
                $mon_fieldlv = $total_fieldlv / $count
                if $teamLv < 120
                    $teamLv = 120
                endif
            else
                $mon_fieldlv = 0
            endif
    //───────────────────────────────────
    //"Hoàn tất - Bay vào Phụ Bản"
    //───────────────────────────────────
        $succeed = FlyToEctype($leaderID, $mapID, $posX, $posY)
        if $succeed > 0
            $TJ_join_number = GetGlobalVar($global)
            $TJ_join_number = $TJ_join_number + $count
            SetGlobalVar($global , $TJ_join_number)

            if $today != $last
                $ectypeID = GetEctypeID(-1, $mapID)
                $ectypeUID = GetEctypeUniqueID(-1, $mapID)
                $done = GetPlayerVar(-1, $v_done)
                $done = $done + 1
                SetPlayerVar(-1, $v_done, $done)
                SetPlayerVar(-1, $v_last, $ectypeUID)
                StartEctypeTimer(-1, $mapID, 1)
                StartEctypeTimer(-1, $mapID, 2)
                SetEctypeVar($ectypeID, 110, $teamLv)
                SetEctypeVar($ectypeID, 90, $mon_fieldlv)
                SetEctypeVar($ectypeID, 11, $Dif)                               
                if $lang == 1
                    BC( "chat" , "player" , $leaderID , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ[Khó]:[color=FFCA64EB]Lần x ", $done )
                endif
                if $lang == 2
                    BC( "chat" , "player" , $leaderID , "[color=FF22E974]Entering Trail of Brave< Hard >:[color=FFCA64EB]Time x ", $done )
                endif  
            endif
        else
            if $lang == 1
                BC( "messagebox" , "player" , $leaderID , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
            endif
            if $lang == 2
                BC( "messagebox" , "player" , $leaderID , "{#FFF79E1C=Instance Error Code: TOB#}" )
            endif 
            return              
        endif
        //---------------『"Người Chơi ID: 1"』
        if $Mem1 != -1
            if $Mem1 != $leaderID
                $succeed = FlyToEctype($Mem1, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem1, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem1, $mapID)
                    $done = GetPlayerVar($Mem1, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem1, $v_done, $done)
                    SetPlayerVar($Mem1, $v_last, $ectypeUID)
                    $lang = GetPlayerVar($Mem1, 3305)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem1 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ[Khó]:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem1 , "[color=FF22E974]Entering Trail of Brave< Hard >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem1 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem1 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif
        //---------------『"Người Chơi ID: 2"』        
        if $Mem2 != -1
            if $Mem2 != $leaderID
                $succeed = FlyToEctype($Mem2, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem2, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem2, $mapID)
                    $done = GetPlayerVar($Mem2, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem2, $v_done, $done)
                    SetPlayerVar($Mem2, $v_last, $ectypeUID)
                    $lang = GetPlayerVar($Mem2, 3305)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem2 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ[Khó]:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem2 , "[color=FF22E974]Entering Trail of Brave< Hard >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem2 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem2 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif
        //---------------『"Người Chơi ID: 3"』        
        if $Mem3 != -1
            if $Mem3 != $leaderID
                $succeed = FlyToEctype($Mem3, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem3, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem3, $mapID)
                    $done = GetPlayerVar($Mem3, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem3, $v_done, $done)
                    SetPlayerVar($Mem3, $v_last, $ectypeUID) 
                    $lang = GetPlayerVar($Mem3, 3305)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem3 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ[Khó]:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem3 , "[color=FF22E974]Entering Trail of Brave< Hard >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem3 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem3 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif
        //---------------『"Người Chơi ID: 4"』        
        if $Mem4 != -1
            if $Mem4 != $leaderID
                $succeed = FlyToEctype($Mem4, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem4, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem4, $mapID)
                    $done = GetPlayerVar($Mem4, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem4, $v_done, $done)
                    SetPlayerVar($Mem4, $v_last, $ectypeUID) 
                    $lang = GetPlayerVar($Mem4, 3305)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem4 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ[Khó]:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem4 , "[color=FF22E974]Entering Trail of Brave< Hard >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem4 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem4 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif
        //---------------『"Người Chơi ID: 5"』        
        if $Mem5 != -1
            if $Mem5 != $leaderID
                $succeed = FlyToEctype($Mem5, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem5, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem5, $mapID)
                    $done = GetPlayerVar($Mem5, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem5, $v_done, $done)
                    SetPlayerVar($Mem5, $v_last, $ectypeUID) 
                    $lang = GetPlayerVar($Mem5, 3305)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem5 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ[Khó]:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem5 , "[color=FF22E974]Entering Trail of Brave< Hard >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem5 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem5 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif    
        //---------------『"Người Chơi ID: 6"』        
        if $Mem6 != -1
            if $Mem6 != $leaderID
                $succeed = FlyToEctype($Mem6, $mapID, $posX, $posY)
                if $succeed > 0
                    $last = GetPlayerVar($Mem6, $v_last)
                    $ectypeUID = GetEctypeUniqueID($Mem6, $mapID)
                    $done = GetPlayerVar($Mem6, $v_done)
                    $done = $done + 1
                    SetPlayerVar($Mem6, $v_done, $done)
                    SetPlayerVar($Mem6, $v_last, $ectypeUID) 
                    $lang = GetPlayerVar($Mem6, 3305)  
                    if $lang == 1
                        BC( "chat" , "player" , $Mem6 , "[color=FF22E974]Bắt đầu Thí Luyện Dũng Sĩ[Khó]:[color=FFCA64EB]Lần x ", $done )
                    endif
                    if $lang == 2
                        BC( "chat" , "player" , $Mem6 , "[color=FF22E974]Entering Trail of Brave< Hard >:[color=FFCA64EB]Time x ", $done )
                    endif 
                else
                    if $lang == 1
                        BC( "messagebox" , "player" , $Mem6 , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , $Mem6 , "{#FFF79E1C=Instance Error Code: TOB#}" )
                    endif 
                    return              
                endif
            endif
        endif    
    }
//───────────────────────────────────────
//"Quay lại Phụ Bản"
//───────────────────────────────────────
    function OnOption2(){
    //───────────────────────────────────
    //"Check VIP"
    //───────────────────────────────────
        call vip()
        if $Check == 2
            $Daily = 2
            //『"Người Chơi VIP"』          
        endif
        if $Check == 1
            $Daily = 1
             //『"Người Chơi Thường"』
        endif
    //───────────────────────────────────
    //"Check Thông Số"
    //───────────────────────────────────
        $v_done = 3763
        $v_last = 3806
        $v_return = 3947
        $mapID = 233
        $posX = 60
        $posY = 60
        $today = GetSystemTime("yday")
        $level = GetPlayerInfo(-1, "level")
        $lang = GetPlayerVar(-1, 3301)
        $reqLv = 30
        $ectypeID = GetEctypeID(-1, $mapID)
        $ectypeUID = GetEctypeUniqueID(-1, $mapID)
        $last = GetPlayerVar(-1, $v_last)
        $count = GetMapPlayerCount($mapID)
        $playerUID = GetPlayerVar(-1, v_return)
    //───────────────────────────────────
    //"Check Thông Tin"
    //───────────────────────────────────   
        if $count >= 6
            if $lang == 1
                BC( "messagebox" , "player" , -1 , "{#FFF79E1C=Quay lại phụ bản thất bại#}" )
            endif
            if $lang == 2
                BC( "messagebox" , "player" , -1 , "{#FFF79E1C=Return to Instance failed#}" )
            endif
            return
        endif
        if $ectypeID == 0
            if $lang == 1
                BC( "messagebox" , "player" , -1 , "{#FFF79E1C=Không có phụ bản để quay lại#}" )
            endif
            if $lang == 2
                BC( "messagebox" , "player" , -1 , "{#FFF79E1C=There no Instance to return#}" )
            endif
            return
        endif
        if $playerUID != $ectypeUID
            if $last == $today
                if $done >= $Daily
                    if $lang == 1
                        BC( "messagebox" , "player" , -1 , "{#FFF79E1C=Có đồng đội đã hoàn thành Phụ Bản#}" )
                    endif
                    if $lang == 2
                        BC( "messagebox" , "player" , -1 , "{#FFF79E1C=There are member already complete\nthis instance for today#}" )
                  	endif 
					return               	
				endif
            endif
        endif
    //───────────────────────────────────
    //"Quay lại phụ bản"
    //───────────────────────────────────

        $success = FlyToEctype(-1, $mapID, $posX, $posY)
        if $lang == 1
            BC( "messagebox" , "player" , -1 , "{#FF22E974=Quay lại phụ bản thành công#}" )
        endif
        if $lang == 2
            BC( "messagebox" , "player" , -1 , "{#FF22E974=Return to instance success#}" )
        endif
        if $success > 0
            if $playerUID == $ectypeUID
            endif
        else
            if $lang == 1
                BC( "messagebox" , "player" , $leaderID , "{#FFF79E1C=Lỗi Phụ Bản Code: TOB#}" )
            endif
            if $lang == 2
                BC( "messagebox" , "player" , $leaderID , "{#FFF79E1C=Instance Error Code: TOB#}" )
            endif
        endif
    }
//───────────────────────────────────────
//"Làm mới Phụ Bản"
//───────────────────────────────────────
    function OnOption3(){
    //───────────────────────────────────
    //"Check Thông Số"
    //───────────────────────────────────
        $leaderID = GetTeamHeaderID(-1)
        $playerID = GetPlayerID()
        $mapID = 233
        $lang = GetPlayerVar(-1, 3301)
        $ectypeID = GetEctypeID(-1, $mapID)
        if $ectypeID > 0
            $count = GetMapPlayerCount($ectypeID)
            if $playerID != $leaderID   
                if $lang == 1
                BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không phải đội trưởng#}" )
                endif
                if $lang == 2
                    BC( "messagebox", "player", -1,"{#FFF79E1C=You are not the party leader#}" ) 
                endif
                return
            endif  
            if $count != 0
                if $lang == 1
                    BC( "messagebox" , "player" , -1 , "{#FFF79E1C=Làm mới thất bại, vẫn còn\nngười chơi trong phụ bản#}" )
                endif
                if $lang == 2
                    BC( "messagebox" , "player" , -1 , "{#FFF79E1C=Reset instance failed\nthere still player inside#}" )
                endif 
                return
            endif
            $reset = ReleaseEctype(-1, $mapID)
            if $reset == 0
                if $lang == 1
                    BC( "messagebox" , "player" , -1 , "{#FF22E974=Làm mới phụ bản thành công#}" )
                endif
                if $lang == 2
                    BC( "messagebox" , "player" , -1 , "{#FF22E974=Instance reset success#}" )
                endif
            else
                if $lang == 1
                    BC( "messagebox" , "player" , -1 , "{#FFF79E1C=Làm mới phụ bản thất bại#}" )
                endif
                if $lang == 2
                    BC( "messagebox" , "player" , -1 , "{#FFF79E1C=Instance reset failed#}" )
                endif
                return
            endif
        endif                                                  
    }
//───────────────────────────────────────
//"Thông Người Chơi VIP"
//───────────────────────────────────────
    function vip(){
	$Now_Yday =  GetSystemTime( "yday" ) 
	$Vip = GetPlayerVar( -1, 4002)
	
	if $Vip == 5
		$Check = 2
		return
	endif
    if $Vip == 0
		$Check = 1
		return
	endif           
    }
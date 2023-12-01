	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/25
	//		Author:??
	//		TaskName:ITEM-yongzhehuigui-59073.s
	//		TaskID:???????????
	//
	//****************************************
	function OnUseItem(){
	$level = GetPlayerInfo( -1, "level" )
	if $level < 30
		BC( "screen", "player", -1,"You can only use the Return of the Warriors Gem when you are above LV30." )
		return
	endif
	$task_count = GetTaskCount (-1)
    	if $task_count >= 17
      		BC( "screen", "player", -1,"Quest list full. Unable to take the 4 achievement quests related to Return of the Warriors.")
	    	return
	endif
	
	$result = SubPlayerInfo( -1, "item", 59073, 1 )
	$a = GetPlayerVar( -1, 3599 ) 
		if $result == 0
			if $a < 40
				AcceptTask( -1, 1572 )
				AcceptTask( -1, 1601 )
				AcceptTask( -1, 1563 )
				AcceptTask( -1, 1610 )
			endif
			if $a >= 40
			  if $a < 50
				AcceptTask( -1, 1573)
				AcceptTask( -1, 1620 )
				AcceptTask( -1, 1564 )
				AcceptTask( -1, 1611 )	
			  endif
			endif
			if $a >= 50
			  if $a < 60
				AcceptTask( -1, 1574)
				AcceptTask( -1, 1603 )
				AcceptTask( -1, 1565 )
				AcceptTask( -1, 1612 )	
			  endif
			endif									
			if $a >= 60
			  if $a < 70
				AcceptTask( -1, 1575)
				AcceptTask( -1, 1604 )
				AcceptTask( -1, 1566 )
				AcceptTask( -1, 1613 )	
			  endif
			endif				
			if $a >= 70
			  if $a < 80
				AcceptTask( -1, 1619)
				AcceptTask( -1, 1605 )
				AcceptTask( -1, 1567 )
				AcceptTask( -1, 1614 )	
			  endif
			endif
			if $a >= 80
			  if $a < 90
				AcceptTask( -1, 1597)
				AcceptTask( -1, 1606 )
				AcceptTask( -1, 1568 )
				AcceptTask( -1, 1615 )	
			  endif
			endif
			if $a >= 90
			  if $a < 100
				AcceptTask( -1, 1598)
				AcceptTask( -1, 1607 )
				AcceptTask( -1, 1569 )
				AcceptTask( -1, 1616 )	
			  endif
			endif
			if $a >= 100
			  if $a < 110
				AcceptTask( -1, 1621)
				AcceptTask( -1, 1608 )
				AcceptTask( -1, 1570 )
				AcceptTask( -1, 1617 )	
			  endif
			endif
			if $a >= 110
			  if $a < 115
				AcceptTask( -1, 1599)
				AcceptTask( -1, 1609 )
				AcceptTask( -1, 1571 )
				AcceptTask( -1, 1618 )	
			  endif
			endif
		endif	
	}																
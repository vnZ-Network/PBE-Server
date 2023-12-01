	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/29
	//		Author:???
	//		TaskName:ITEM-50051.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
		
		$fieldlevel = GetFieldLevel(-1)
		$level = GetPlayerInfo( -1 , "level" ) 
		  if $level < 30
		    BC( "screen", "player", -1, "You need to be at least LV30 to use the item!" )
		    return
		  endif
		  
		  $exp1 = 1454002 
		  $exp1 = $exp1 / 5
		  $exp2 = 2051840 
		  $exp2 = $exp2 / 5
		  $exp3 = 3110237 
		  $exp3 = $exp3 / 5
		  $exp4 = 4162715 
		  $exp4 = $exp4 / 5
		  $exp5 = 5340591 
		  $exp5 = $exp5 / 5
		  $exp6 = 6648668 
		  $exp6 = $exp6 / 5
		  $exp7 = 9617708 
		  $exp7 = $exp7 / 5
		  $exp8 = 26761172 
		  $exp8 = $exp8 / 5
		  $exp9 = 37217207
		  $exp9 = $exp9 / 5
		  $exp10 = 42842080 
		  $exp10 = $exp10 / 5
		  $godexp1 = 623552
		  $godexp1 = $godexp1 / 5
		  $godexp2 = 777605
		  $godexp2 = $godexp2 / 5
		  $godexp3 = 962470
		  $godexp3 = $godexp3 / 5
		  $godexp4 = 1299921
		  $godexp4 = $godexp4 / 5
		  $godexp5 = 1644709
		  $godexp5 = $godexp5 / 5
		  $godexp6 = 2130345
		  $godexp6 = $godexp6 / 5
		  $godexp7 = 2617449
		  $godexp7 = $godexp7 / 5
		  
		
		 $info = SubPlayerInfo ( -1 , "item" , 50051 , 1 )
		 if  $info != 0
			 return
		 endif
				
		if $level >= 30
		  if $level <= 39
			  AddPlayerInfo( -1 , "exp" , $exp1 )
			endif
		endif
		if $level >= 40
		  if $level <= 49
			  AddPlayerInfo( -1 , "exp" , $exp2 )
			endif
		endif
		if $level >= 50
		  if $level <= 59
			  AddPlayerInfo( -1 , "exp" , $exp3 )
			endif
		endif
		if $level >= 60
		  if $level <= 69
			  AddPlayerInfo( -1 , "exp" , $exp4 )
			endif
		endif
		if $level >= 70
		  if $level <= 79
			  AddPlayerInfo( -1 , "exp" , $exp5 )
			endif
		endif
		if $level >= 80
		  if $level <= 89
			  AddPlayerInfo( -1 , "exp" , $exp6 )
			endif
		endif
		if $level >= 90
		  if $level <= 99
			  AddPlayerInfo( -1 , "exp" , $exp7 )
			endif
		endif
		if $level >= 100
		  if $level <= 109
			  AddPlayerInfo( -1 , "exp" , $exp8 )
			endif
		endif
		if $level >= 110
		  if $level <= 119
			  AddPlayerInfo( -1 , "exp" , $exp9 )
			endif
		endif
		if $level >= 120
		    AddPlayerInfo( -1 , "exp" , $exp10 )
		endif    
		
		if $fieldlevel >= 1
		  if $fieldlevel <= 9
			  AddFieldExp( -1 , $godexp1 )
			endif
		endif
		if $fieldlevel >= 10
		  if $fieldlevel <= 19
			  AddFieldExp( -1 , $godexp2 )
			endif
		endif
		if $fieldlevel >= 20
		  if $fieldlevel <= 29
			  AddFieldExp( -1 , $godexp3 )
			endif
		endif
		if $fieldlevel >= 30
		  if $fieldlevel <= 39
			  AddFieldExp( -1 , $godexp4 )
			endif
		endif
		if $fieldlevel >= 40
		  if $fieldlevel <= 49
			  AddFieldExp( -1 , $godexp5 )
			endif
		endif
		if $fieldlevel >= 50
		  if $fieldlevel <= 59
			  AddFieldExp( -1 , $godexp6 )
			endif
		endif
		if $fieldlevel >= 60
			  AddFieldExp( -1 , $godexp7 )
		endif
		
	}
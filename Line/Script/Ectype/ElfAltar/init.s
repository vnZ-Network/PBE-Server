	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/19
	//		Author:???
	//		TaskName:ElfAltar
	//		TaskID:mapid = 541
	//
	//****************************************

	function OnCreate(){
			
}

	function InitTimer(){

		$ectype_id = GetEctypeID( -1 , 541 )
		SetEctypeTimer( 0 , 6, "EctypeTimer0" )
		SetEctypeTimer( 1 , 7 , "EctypeTimer1" )
		SetEctypeTimer( 2 , 12 , "EctypeTimer2" )
		SetEctypeTimer( 3 , 8 , "EctypeTimer3" )
		SetEctypeTimer( 4 , 2 , "EctypeTimer4" )
		SetEctypeTimer( 5 , 1 , "EctypeTimer5" )
		SetEctypeTimer( 6 , 1 , "EctypeTimer6" )

}

	function EctypeTimer0(){

		$ectype_id = GetEctypeID( -1 , 541 )
//		BC( "chat", "map", $ectype_id, "GUID:04269000000")

		//??		
		$turn = GetEctypeVar(-1, 0)		

		//?????,????,?NPC
		if $turn == 0
  	//????????
  		$mon_display_fire = 52400
  		$mon_display_ice = 52401
  		$mon_display_soul = 52402
	  	AddMonsterByFloat( $mon_display_soul , 1, $ectype_id, 256, 235, 1 ,0 ,90 )		
	  	AddMonsterByFloat( $mon_display_ice , 1, $ectype_id, 246, 238, 1 ,0 ,0 )			
			AddMonsterByFloat( $mon_display_fire , 1, $ectype_id, 266, 238, 1 ,0 ,180 )		
		//??????NPC
			DeleteNPC( 821 , -1 )
			DeleteNPC( 825 , -1 )
			DeleteNPC( 826 , -1 ) 
			DeleteNPC( 827 , -1 )
			DeleteNPC( 828 , -1 ) 
			DeleteNPC( 829 , -1 ) 
			DeleteNPC( 830 , -1 )
			DeleteNPC( 822 , -1 )
			DeleteNPC( 823 , -1 )
			DeleteNPC( 832 , -1 )
			DeleteNPC( 833 , -1 )

//			BC("screen","map",$ectype_id,"GUID:04269000001")
//			BC("chat","map",$ectype_id,"GUID:04269000002")		
						
			StartEctypeTimer($ectype_id,3)	
			
			//???? 1
			SetEctypeVar(-1, 0, 1)
			
		endif	
		
		//??1-1?
		if $turn == 1
			//??,??20????? 5???? 5??????
 
			//  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 83, 245, 1 ,0 ,0 )
			//  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 83, 266, 1 ,0 ,0 )
		  	
	  	//?? ???? 52394 ???? 52395 ????? 52396 
			$time1 = 0
			while $time1 < 20
				$time1 = $time1 + 1
				$mapX = RandomNumber(254,270)
				$mapY = RandomNumber(188,245)
				$monsterID_11 = 52394		
				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
			endwhile
		
//			$time2 = 0
//			while $time2 < 5
//				$time2 = $time2 + 1
//				$mapX = RandomNumber(254,270)
//				$mapY = RandomNumber(205,220)	
//				$mapX1 = RandomNumber(254,270)
//				$mapY1 = RandomNumber(190,205)					
//				$monsterID = 52395
//				$monsterID1 = 52396
//				AddMonsterByFloat($monsterID,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
//				AddMonsterByFloat($monsterID1,1,$ectype_id,$mapX1,$mapY1,1,0 ,0 )	
//			endwhile
		  
		  //???? 2	 	
  		SetEctypeVar(-1, 0, 2)	
  		
//  		BC("screen","map",$ectype_id,"GUID:04269000003")
//			BC("chat","map",$ectype_id,"GUID:04269000004")	
  		
		endif	

		//?M1????1-2?		
		if $turn == 2
		
			//??
			OpenMask( 1, $ectype_id)
			AddNPC(825,-1)
			PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		  	
	  	//?? ???? 52394 ???? 52395 ????? 52396 
			$time1 = 0
			while $time1 < 10
				$time1 = $time1 + 1
				$mapX = RandomNumber(223,249)
				$mapY = RandomNumber(96,114)
				$monsterID_11 = 52394	
				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
			endwhile
		
			$time2 = 0
			while $time2 < 2
				$a = $time2 * 2
				$mapY = 155 - $a
				$mapY1 = 135 - $a
				$time2 = $time2 + 1
				$mapX_L = 256 + $a
				$mapX_R = 267 - $a	
				$mapX1_L = 252 + $a
				$mapX1_R = 264 - $a							
				$monsterID = 52395
				AddMonsterByFloat($monsterID,1,$ectype_id,$mapX_L,$mapY,1,0 ,80 )	
				AddMonsterByFloat($monsterID,1,$ectype_id,$mapX_R,$mapY,1,0 ,90 )
				AddMonsterByFloat($monsterID,1,$ectype_id,$mapX1_L,$mapY1,1,0 ,80 )	
				AddMonsterByFloat($monsterID,1,$ectype_id,$mapX1_R,$mapY1,1,0 ,90 )							
			endwhile
			
			$time4 = 0
			while $time4 < 6
				$a = $time4 * 2
				$time4 = $time4 + 1
				$mapX1 = 251 + $a
				$mapY1 = RandomNumber(140,153)						
				$monsterID1 = 52396
				AddMonsterByFloat($monsterID1,1,$ectype_id,$mapX1,$mapY1,1,0 ,90 )	
			endwhile			

			//???????? 	52392
			$time3 = 0
			while $time3 < 10
				$a = 3 * $time3
				$time3 = $time3 + 1
				$mapX = 245 + $a
				$mapY = 149
				$mapY1 = 129
				$mapY2 = 161
				$mapY3 = 139
				$monsterID_trip = 52392
				AddMonsterByFloat($monsterID_trip,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
				AddMonsterByFloat($monsterID_trip,1,$ectype_id,$mapX,$mapY1,1,0 ,0 )
				AddMonsterByFloat($monsterID_trip,1,$ectype_id,$mapX,$mapY2,1,0 ,0 )	
				AddMonsterByFloat($monsterID_trip,1,$ectype_id,$mapX,$mapY3,1,0 ,0 )	
			endwhile
			
			//?????? 52438
			$time5 = 0
			while $time5 < 4
				$a = 5 * $time5			
				$mapX = 194 + $a
				$mapY = 161
				$mapX1 = 219 - $a
				$mapY1 = 114
				$mapX2 = 199 - $a
				$mapX3 = 165
				$mapY3 = 122 + $a 
				$time5 = $time5 + 1
				$monsterID_wall = 52438
				AddMonsterByFloat($monsterID_wall,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
				AddMonsterByFloat($monsterID_wall,1,$ectype_id,$mapX1,$mapY1,1,0 ,0 )
				AddMonsterByFloat($monsterID_wall,1,$ectype_id,$mapX2,$mapY1,1,0 ,0 )
				AddMonsterByFloat($monsterID_wall,1,$ectype_id,$mapX3,$mapY3,1,0 ,90 )	
			endwhile
			AddMonsterByFloat(52438,1,$ectype_id,$mapX3,142,1,0 ,90 )
			AddMonsterByFloat(52438,1,$ectype_id,224,$mapY1,1,0 ,0 )	
			StartEctypeTimer($ectype_id,1)		
		  
		  //???? 3	 	
  		SetEctypeVar(-1, 0, 3)
  			
		endif			
		
		//BOSS1??? ???? ??????
		if $turn == 3
			//2????
			AddNPC(828,-1)
			AddNPC(830,-1)
			
		//???????? 52439
			$monsterID_brokenwall = 52439
			AddMonsterByFloat($monsterID_brokenwall,1,$ectype_id,191,127,1,0 ,45 )	
			AddMonsterByFloat($monsterID_brokenwall,1,$ectype_id,192,141,1,0 ,135 )
			AddMonsterByFloat($monsterID_brokenwall,1,$ectype_id,206,141,1,0 ,45 )		
			
			//????
			SetEctypeVar($ectype_id,0,4)
			//????1????
			SetEctypeVar($ectype_id,5,1)	
			
		endif
		
		//???????	?2-1?	
		if $turn == 4
		  	
	  	//?? ???? 52403 ???? ?? 52404 ?? 52405 ???? 52406 ???? 52408 ????? 52409 ????? 52410
			$monsterID_Bomb = 52403
			$monsterID_Trap_L = 52404
			$monsterID_Trap_R = 52405
			$monsterID_Wizard = 52406
			$monsterID_Tank = 52408
			$monsterID_Archer = 52409		
			$monsterID_SlowStone = 52410

			//Tank2
			AddMonsterByFloat($monsterID_Tank,1,$ectype_id,170,138,1,0 ,270 )	
			AddMonsterByFloat($monsterID_Tank,1,$ectype_id,170,126,1,0 ,90 )	
			
			AddMonsterByFloat($monsterID_Tank,1,$ectype_id,193,129,1,0 ,90 )
			AddMonsterByFloat($monsterID_Tank,1,$ectype_id,193,142,1,0 ,90 )	
			AddMonsterByFloat($monsterID_Tank,1,$ectype_id,206,142,1,0 ,90 )	
			AddMonsterByFloat($monsterID_Tank,1,$ectype_id,206,129,1,0 ,90 )		
	
			AddMonsterByFloat($monsterID_Tank,1,$ectype_id,204,155,1,0 ,270 )	
			AddMonsterByFloat($monsterID_Tank,1,$ectype_id,196,155,1,0 ,270 )	

		
			$time2 = 0
			while $time2 < 8
				$time2 = $time2 + 1
				$mapX = RandomNumber(188,212)
				$mapY = RandomNumber(120,144)					
				AddMonsterByFloat($monsterID_Archer,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
			endwhile
			
			$time3 = 0
			while $time3 < 4
				$time3 = $time3 + 1
				$mapX = RandomNumber(195,210)
				$mapY = RandomNumber(110,144)					
				AddMonsterByFloat($monsterID_Wizard,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
			endwhile			

//-------------------------????????-----------------------------------
			
			
				AddMonsterByFloat($monsterID_Tank,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
				AddMonsterByFloat($monsterID_Tank,1,$ectype_id,$mapX1,$mapY1,1,0 ,0 )	
		
			$time5 = 0
			while $time5 < 5
				$time5 = $time5 + 1
				$mapX = RandomNumber(195,210)
				$mapY = RandomNumber(154,168)
				$mapX1 = RandomNumber(202,211)
				$mapY1 = RandomNumber(174,188)							
				AddMonsterByFloat($monsterID_Archer,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
				AddMonsterByFloat($monsterID_Archer,1,$ectype_id,$mapX1,$mapY1,1,0 ,0 )	
			endwhile
			
			$time6 = 0
			while $time6 < 2
				$time6 = $time6 + 1
				$mapX = RandomNumber(192,210)
				$mapY = RandomNumber(147,168)	
				$mapX1 = RandomNumber(202,211)
				$mapY1 = RandomNumber(168,188)									
				AddMonsterByFloat($monsterID_Wizard,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
				AddMonsterByFloat($monsterID_Wizard,1,$ectype_id,$mapX1,$mapY1,1,0 ,0 )	
			endwhile			

  		//?? ???????BOMB ? trap; ?2??????
  		StartEctypeTimer($ectype_id,1)
  		AddMonsterByFloat($monsterID_SlowStone,1,$ectype_id,202,158,1,0 ,0 )	
  		AddMonsterByFloat($monsterID_SlowStone,1,$ectype_id,206,177,1,0 ,0 )
  		
  		//??1??????		
		  SetEctypeVar(-1, 5, 2)
		  
		  //???? 4	 	
  		SetEctypeVar(-1, 0, 5)	
  		
		endif			
		
		//??M2
		if $turn == 5
			//??? 52412 ????? 52411		
			$monsterID_FrozenBridge = 52412
//			$monsterID_FrozenStone = 52411
			$monsterID_BOSS_Ice1 = 52384
			$monsterID_MagicColumn = 52453
		
			OpenMask(2,$ectype_id)
			AddNPC(826,-1)
			//?? ???? ????     ?????BOSS 52384
//			AddMonsterByFloat($monsterID_FrozenBridge,1,$ectype_id,206,177,1,0 ,0 )	
//			AddMonsterByFloat($monsterID_FrozenStone,1,$ectype_id,206,177,1,0 ,0 )	
//			AddMonsterByFloat($monsterID_FrozenStone,1,$ectype_id,206,177,1,0 ,0 )	
			
			//??BOSS2 ?????
			AddMonsterByFloat($monsterID_MagicColumn,1,$ectype_id,181,232,1,0 ,0 )	
			AddMonsterByFloat($monsterID_MagicColumn,1,$ectype_id,180,248,1,0 ,0 )	
			AddMonsterByFloat($monsterID_MagicColumn,1,$ectype_id,167,256,1,0 ,0 )	
			AddMonsterByFloat($monsterID_MagicColumn,1,$ectype_id,152,247,1,0 ,0 )	
			AddMonsterByFloat($monsterID_MagicColumn,1,$ectype_id,154,231,1,0 ,0 )	
			AddMonsterByFloat($monsterID_MagicColumn,1,$ectype_id,167,224,1,0 ,0 )			
			
			//???? 5
			SetEctypeVar(-1, 0, 6)
			
		endif

		//BOSS2???? ??M3
		if $turn == 6
			//????? 52410 ???? 52415
			$monsterID_SlowStone = 52410
			$monsterID_Butterfly = 52415
			
			//??
			$time1 = 0
			while $time1 < 10
				$time1 = $time1 + 1
				$mapX = RandomNumber(117,140)
				$mapY = RandomNumber(224,240)			
				AddMonsterByFloat($monsterID_Butterfly,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
			endwhile

			//?????
			AddMonsterByFloat($monsterID_SlowStone,1,$ectype_id,88,216,1,0 ,0 )	
			AddMonsterByFloat($monsterID_SlowStone,1,$ectype_id,103,224,1,0 ,0 )	
			
			//??1????(???? 3)
			SetEctypeVar(-1, 5, 4)
		
			//???? 6
			SetEctypeVar(-1, 0, 7)
			
		endif
		
		//M3??
		if $turn == 7
			//????? 52417 ???? 52416 ????? 52418 ???? 52420
			$monsterID_Cocoon = 52417
			$monsterID_Suicide = 52416
			$monsterID_Super_Archer = 52418
			$monsterID_Super_Tank = 52420
			
			//?????
			$time1 = 0
			while $time1 < 4
				$time1 = $time1 + 1
				$mapX = RandomNumber(64,87)
				$mapY = RandomNumber(163,190)		
				$mapX1 = RandomNumber(69,88)
				$mapY2 = RandomNumber(125,131)	
				AddMonsterByFloat($monsterID_Cocoon,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
				AddMonsterByFloat($monsterID_Cocoon,1,$ectype_id,$mapX1,$mapY2,1,0 ,0 )	
			endwhile

			
			//????
			AddMonsterByFloat($monsterID_Super_Tank,1,$ectype_id,74,153,1,0 ,0 )	
			AddMonsterByFloat($monsterID_Super_Tank,1,$ectype_id,79,153,1,0 ,0 )	
			
			//??????			
			AddMonsterByFloat($monsterID_Super_Archer,1,$ectype_id,70,149,1,0 ,0 )	
			AddMonsterByFloat($monsterID_Super_Archer,1,$ectype_id,74,149,1,0 ,0 )	
			AddMonsterByFloat($monsterID_Super_Archer,1,$ectype_id,77,149,1,0 ,0 )	
			AddMonsterByFloat($monsterID_Super_Archer,1,$ectype_id,81,149,1,0 ,0 )			

			AddMonsterByFloat($monsterID_Super_Archer,1,$ectype_id,68,144,1,0 ,0 )	
			AddMonsterByFloat($monsterID_Super_Archer,1,$ectype_id,72,144,1,0 ,0 )	
			AddMonsterByFloat($monsterID_Super_Archer,1,$ectype_id,76,144,1,0 ,0 )	
			AddMonsterByFloat($monsterID_Super_Archer,1,$ectype_id,80,144,1,0 ,0 )	
		
			//????????
			StartEctypeTimer($ectype_id,2)
		
			//???? 7
			SetEctypeVar(-1, 0, 8)
			
		endif		

		//???????,???BOSS
		if $turn == 8
  	//???BOSS 52388
			AddNPC(827,-1)				

//			BC("screen","map",$ectype_id,"GUID:04269000005")
//			BC("chat","player",-1,"GUID:04269000006")		
			
			//???? 1
			SetEctypeVar(-1, 0, 9)
			
		endif	
		
		//????BOSS,????????????
		if $turn == 9
		
			AddNPC(833,-1)
			AddNPC(821,-1)				

//			BC("screen","map",$ectype_id,"GUID:04269000007")
//			BC("chat","player",-1,"GUID:04269000008")		
			
			//???? 1
			SetEctypeVar(-1, 0, 10)
			
		endif			
		
		
		
		
		
}		



	function EctypeTimer1(){

		$ectype_id = GetEctypeID( -1 , 541 )
		$turn = GetEctypeVar(-1, 5)	
		$runtime = GetEctypeVar(-1,6)
		
//		BC( "chat", "map", $ectype_id, "GUID:04269000009")
		if $turn == 0
		//??????
			if $runtime > 250
				return
			else			
			//???????? 	52392
				$time1 = 0
				while $time1 < 10
					$a = 3 * $time1	
					$time1 = $time1 + 1
					$mapX = 245 + $a
					$mapY = 149
					$mapY1 = 129
					$mapY2 = 161
					$mapY3 = 139
					$monsterID_trip = 52392
					AddMonsterByFloat($monsterID_trip,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
					AddMonsterByFloat($monsterID_trip,1,$ectype_id,$mapX,$mapY1,1,0 ,0 )	
					AddMonsterByFloat($monsterID_trip,1,$ectype_id,$mapX,$mapY2,1,0 ,0 )
					AddMonsterByFloat($monsterID_trip,1,$ectype_id,$mapX,$mapY3,1,0 ,0 )
				endwhile	
				
//				BC("screen","map",$ectype_id,"GUID:04269000010")
//				BC("chat","player",-1,"GUID:04269000011")					
				
				$runtime = $runtime + 1
				SetEctypeVar(-1, 6,$runtime)
				
				StartEctypeTimer($ectype_id,1)
			endif
		endif

				
		//BOSS1-M2 ????
			if $turn == 2
				if $runtime > 500
					return
				else			
		  	//?? ???? 52403 ???? ?? 52404 ?? 52405
					$monsterID_Bomb = 52403
					$monsterID_Trap_L = 52404
					$monsterID_Trap_R = 52405			
					$time1 = 0
					while $time1 < 8
						$time1 = $time1 + 1
						$mapX = RandomNumber(188,212)
						$mapY = RandomNumber(112,146)			
						AddMonsterByFloat($monsterID_Bomb,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
					endwhile
					
					$time2 = 0
					while $time2 < 5
						$a = $time2 * 8
						$time2 = $time2 + 1
						$b = $a + 146
						$c = $a + 150
						$mapX = RandomNumber(179,188)
						$mapX1 = RandomNumber(221,226)
						AddMonsterByFloat($monsterID_Trap_L,1,$ectype_id,$mapX,$b,1,0 ,0 )	
						AddMonsterByFloat($monsterID_Trap_R,1,$ectype_id,$mapX1,$c,1,0 ,0 )	
					endwhile		
					
//					BC("screen","map",$ectype_id,"GUID:04269000012")
//					BC("chat","player",-1,"GUID:04269000013")						
	
					$runtime = $runtime + 1
					SetEctypeVar(-1, 6,$runtime)
		
					StartEctypeTimer($ectype_id,1)
				endif
			endif
		
		//BOSS2???? ????
		if $turn == 4
			if $runtime > 750
				return
			else	
	  	//?? ???? 52403 ???? ?? 52414 ?? 52415 
				$monsterID_Bomb = 52403
				$monsterID_Trap_UP = 52413
				$monsterID_Trap_DN = 52414				
				$time1 = 0
				while $time1 < 10
					$time1 = $time1 + 1
					$mapX = RandomNumber(115,145)
					$mapY = RandomNumber(224,244)			
					AddMonsterByFloat($monsterID_Bomb,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
				endwhile
				
				$time2 = 0
				while $time2 < 10
					$a = $time2 * 4
					$time2 = $time2 + 1
					$b = $a + 75
					$c = $a + 77
					$mapY = RandomNumber(194,196)
					$mapY1 = RandomNumber(234,238)
					AddMonsterByFloat($monsterID_Trap_UP,1,$ectype_id,$b,$mapY,1,0 ,0 )	
					AddMonsterByFloat($monsterID_Trap_DN,1,$ectype_id,$c,$mapY1,1,0 ,0 )	
				endwhile		

				$runtime = $runtime + 1
				SetEctypeVar(-1, 6,$runtime)
	
				StartEctypeTimer($ectype_id,1)
			endif
		endif		


}
	
	
	function EctypeTimer2(){
	  
	  $ectype_id = GetEctypeID( -1 , 541 )
	  //??????
	  //??? 52419
	  $monsterID_Protect = 52419
	  $time1 = 0
		while $time1 < 2
			$time1 = $time1 + 1
			$mapX = RandomNumber(70,80)
			$mapY = 155		
			AddMonsterByFloat($monsterID_Protect,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
		endwhile
	  
	  


}

	function EctypeTimer3(){

	$ectype_id = GetEctypeID( -1 , 541 )
	
	StartEctypeTimer($ectype_id,0)	

}

	function EctypeTimer4(){
		
		//2?1?????
		$ectype_id = GetEctypeID( -1 , 541 )
//		BC( "chat", "map", $ectype_id, "GUID:04269000014")

		$is_conquer_Boss3 = GetEctypeVar(-1,51)
		if $is_conquer_Boss3 == 1
			return
		endif

		$is_conquer_Boss2 = GetEctypeVar(-1,50)
		if $is_conquer_Boss2 == 1
			return
		endif

		$is_conquer_Boss1 = GetEctypeVar(-1,82)
		if $is_conquer_Boss1 == 1
			return
		endif
		
		//???
		$is_change = GetEctypeVar(-1,84)
		if $is_change == 1
			return
		endif		
		
		$time = GetEctypeVar(-1,80)
//		BC( "screen", "map",$ectype_id, "GUID:04269000015",$time )
//		BC("chat","player",-1,"GUID:04269000016",$time)						
			
		$time = $time - 2
		SetEctypeVar(-1,80,$time)

		if $time == 60
			BC( "screen", "map",$ectype_id, "1 minute remaining to challenge Elven Mage!" )
			BC( "chat", "map",$ectype_id, "1 minute remaining to challenge Elven Mage!" )							
		endif
		
		if $time == 0
			BC( "screen", "map",$ectype_id, "Elven Mage's power has weakened" )
			BC( "chat", "map",$ectype_id, "Elven Mage's power has weakened" )
			SetEctypeVar(-1,81,0)
		endif

		if $time > 0
			StartEctypeTimer($ectype_id, 4)
		endif
		
		
}
	

	function EctypeTimer5(){

		$ectype_id = GetEctypeID( -1 , 541 )	
			
		
		

}	


	function EctypeTimer6(){

	$ectype_id = GetEctypeID( -1 , 541 )	
	$progress = GetEctypeVar(-1, 0)
	
	
		

}		
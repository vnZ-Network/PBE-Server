//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2012/11/19
//		Author:???
//		TaskName:NoMercy
//		TaskID:mapid = 566
//
//****************************************
			
		function OnCreate(){
				
}
	
		function InitTimer(){
	
			$ectype_id = GetEctypeID( -1 , 566 )
			SetEctypeTimer( 0 , 2, "EctypeTimer0" )
			SetEctypeTimer( 1 , 5 , "EctypeTimer1" )
			SetEctypeTimer( 2 , 2 , "EctypeTimer2" )
			SetEctypeTimer( 3 , 2 , "EctypeTimer3" )
			SetEctypeTimer( 4 , 2 , "EctypeTimer4" )
			SetEctypeTimer( 5 , 1 , "EctypeTimer5" )
			SetEctypeTimer( 6 , 1 , "EctypeTimer6" )
	
}
	
		function EctypeTimer0(){
	
			$ectype_id = GetEctypeID( -1 , 566 )
			$mapID = GetEctypeID( -1 , 566 )
//			BC( "chat", "map", $ectype_id, "GUID:04627000000")

			$Kind = GetEctypeVar(-1,99)

	
			//??		
			$turn = GetEctypeVar(-1, 0)		
	
			//?????,????,?NPC
			if $turn == 0
	
		//??????NPC
				DeleteNPC( 837 , -1 )
				DeleteNPC( 840 , -1 )
				DeleteNPC( 841 , -1 )
							
				StartEctypeTimer($ectype_id,3)	
				
				//???? 1
				SetEctypeVar(-1, 0, 1)
				
			endif	
			
			//??1-1?
			if $turn == 1
			  	
		  	//?? 52492 52493 52494 52495
		  	$Monster_kind = RandomNumber(52492,52495)
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1
		  	
		  	//?????,??????
	  	$count = GetEctypeVar(-1,11)
		  	if $count < 15
					$time1 = 0
					while $time1 < 15
						$time1 = $time1 + 1
						$mapX = RandomNumber(19400,20600)
						$mapY = RandomNumber(8300,10100)
						$mapX = $mapX / 256
						$mapY = $mapY / 256
						$monsterID = $Monster_kind		
	//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
						AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
							
					endwhile
				endif
				if $count >= 15	
			  	if $count < 30
						$time1 = 0
						while $time1 < 15
							$time1 = $time1 + 1
							$mapX = RandomNumber(18600,19800)
							$mapY = RandomNumber(8300,10100)
							$mapX = $mapX / 256
							$mapY = $mapY / 256
							$monsterID = $Monster_kind		
		//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
							AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
								
						endwhile
					endif
				endif	
				if $count >= 30
			  	if $count < 45
						$time1 = 0
						while $time1 < 15
							$time1 = $time1 + 1
							$mapX = RandomNumber(17600,18800)
							$mapY = RandomNumber(8400,10400)
							$mapX = $mapX / 256
							$mapY = $mapY / 256
							$monsterID = $Monster_kind		
		//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
							AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
								
						endwhile
					endif	
				endif		
				if $count >= 45
			  	if $count < 60
						$time1 = 0
						while $time1 < 15
							$time1 = $time1 + 1
							$mapX = RandomNumber(16200,17400)
							$mapY = RandomNumber(8700,10700)
							$mapX = $mapX / 256
							$mapY = $mapY / 256
							$monsterID = $Monster_kind		
		//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
							AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
								
						endwhile
					endif	
				endif									
			  
			  //???? 2	 	
	  		SetEctypeVar(-1, 0, 2)	
	  		
	  		BC("screen","map",$ectype_id,"The Heartless Oasis Guardians have appeared!")
				BC("chat","map",$ectype_id,"Raidne's Guardians have appeared!")	
	  		
			endif	
	
			//??1-2?		
			if $turn == 2
			
		  	//?? 52491
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1

				$Kind = GetEctypeVar(-1,99)
				if $Kind >= 1
					$time1 = 0
					while $time1 < 15
						$time1 = $time1 + 1
						$mapX = RandomNumber(15400,17400)
						$mapY = RandomNumber(8700,10700)
						$mapX = $mapX / 256
						$mapY = $mapY / 256
						$monsterID = 52491		
						AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)					
					endwhile
				endif
		  	

				
			  $mapX = 16400 / 256
			  $mapY = 9700 / 256
			  $monsterID = 52480 + $Kind
		  	$monsterstatusID = 240 + $Kind
		  	$monsterfieldID = 240 + $Kind
			  AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)	
			  		  
			  //???? 3	 	
	  		SetEctypeVar(-1, 0, 3)	
	  		
	  		BC("screen","map",$ectype_id,"The soul harvester Scylla, has appeared.")
				BC("chat","map",$ectype_id,"Raidne's pet Scylla, has appeared to harvest your soul.")	
	  			
			endif			
			
			//BOSS1??? ???,??????,1?,15
			if $turn == 3
				
				//?????
				OpenMask(1,$ectype_id)
				
				
		  	//?? 52498 52498 52499 52501
		  	$Monster_kind = RandomNumber(52498,52501)
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1
		  	
				$time1 = 0
				while $time1 < 15
					$time1 = $time1 + 1
					$mapX = RandomNumber(12200,13500)
					$mapY = RandomNumber(11200,12900)
					$mapX = $mapX / 256
					$mapY = $mapY / 256
					$monsterID = $Monster_kind		
//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
						
				endwhile
			  
			  //???? 4	 	
	  		SetEctypeVar(-1, 0, 4)	
	  		
	  		//????????
	  		StartEctypeTimer($ectype_id,1)
	  		
	  		BC("screen","map",$ectype_id,"Heartless Canyon' gate has opened.")
				BC("chat","map",$ectype_id,"Raidne's Guardians have appeared!")	
				
			endif
			
			//???2???,1?,30
			if $turn == 4
				
		  	//?? 52498 52498 52499 52501
		  	$Monster_kind = RandomNumber(52498,52501)
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1
		  	
				$time1 = 0
				while $time1 < 15
					$time1 = $time1 + 1
					$mapX = RandomNumber(8700,10000)
					$mapY = RandomNumber(14600,16100)
					$mapX = $mapX / 256
					$mapY = $mapY / 256
					$monsterID = $Monster_kind		
//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
						
				endwhile
			  
			  //???? 5	 	
	  		SetEctypeVar(-1, 0, 5)	
	  		
	  		BC("screen","map",$ectype_id,"Guardians still roam Heartless Canyon.")
				BC("chat","map",$ectype_id,"Raidne's Guardians have appeared in the platform ahead.")	
				
			endif			
			
			//???3???,2?,60
			if $turn == 5
				
				//?????
				OpenMask(2,$ectype_id)
				
				
		  	//?? 52498 52498 52499 52501
		  	$Monster_kind = RandomNumber(52498,52501)
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1
		  	
				$time1 = 0
				while $time1 < 15
					$time1 = $time1 + 1
					$mapX = RandomNumber(13600,15700)
					$mapY = RandomNumber(17400,19500)
					$mapX = $mapX / 256
					$mapY = $mapY / 256
					$monsterID = $Monster_kind		
//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
						
				endwhile
			  
			  //???? 6	 	
	  		SetEctypeVar(-1, 0, 6)	
	  		
	  		BC("screen","map",$ectype_id,"Guardians still roam Heartless Canyon.")
				BC("chat","map",$ectype_id,"Raidne's Guardians have appeared!")	
				
			endif						

			
			//?BOSS2	
			if $turn == 6
			  	
				 //?? 52502
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1

				$Kind = GetEctypeVar(-1,99)
				if $Kind >= 1
					$time1 = 0
					while $time1 < 15
						$time1 = $time1 + 1
						$mapX = RandomNumber(13600,17400)
						$mapY = RandomNumber(17400,19500)
						$mapX = $mapX / 256
						$mapY = $mapY / 256
						$monsterID = 52502		
						AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)					
					endwhile
				endif
		  	

				
			  $mapX = 14500 / 256
			  $mapY = 18300 / 256
			  $monsterID = 52483 + $Kind
		  	$monsterstatusID = 240 + $Kind
		  	$monsterfieldID = 240 + $Kind
			  AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)	
			  		  
			  //???? 7 	
	  		SetEctypeVar(-1, 0, 7)	
	  		
	  		BC("screen","map",$ectype_id,"Tantalus has appeared!")
				BC("chat","map",$ectype_id,"Tantalus has appeared!")	
	  		
			endif			
			
			//BOSS2??,???????,2?,30
			if $turn == 7
				
				//NPC 841
				AddNPC(841,-1)

		  	//?? 52503 -- 52506
		  	$Monster_kind = RandomNumber(52503,52506)
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1
		  	
				$time1 = 0
				while $time1 < 15
					$time1 = $time1 + 1
					$mapX = RandomNumber(16300,18300)
					$mapY = RandomNumber(23800,26200)
					$mapX = $mapX / 256
					$mapY = $mapY / 256
					$monsterID = $Monster_kind		
//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
						
				endwhile
			  
			  //???? 8	 	
	  		SetEctypeVar(-1, 0, 8)	
	  		
	  		BC("screen","map",$ectype_id,"Guardians still roam Heartless Canyon.")
				BC("chat","map",$ectype_id,"Raidne's Guardians have appeared on Platform 1!")	
				
			endif
			
			//???2????,2?,60
			if $turn == 8

				//?????
				OpenMask(3,$ectype_id)

		  	//?? 52503 -- 52506
		  	$Monster_kind = RandomNumber(52503,52506)
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1
		  	
				$time1 = 0
				while $time1 < 15
					$time1 = $time1 + 1
					$mapX = RandomNumber(21600,23000)
					$mapY = RandomNumber(19700,21100)
					$mapX = $mapX / 256
					$mapY = $mapY / 256
					$monsterID = $Monster_kind		
//				AddMonsterByFloat($monsterID_11,1,$ectype_id,$mapX,$mapY,1,0 ,0 )	
					AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)
						
				endwhile

//??????				
//				//??????
//				$monsterID = 52508
//				$monsterCount = 1
//				$mapR = 1
//				$isplayer = 0
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,198,226,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,197,220,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,205,220,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,206,214,$mapR,$isplayer,$fir)
//				
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,211,186,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,215,184,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,209,183,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,213,181,$mapR,$isplayer,$fir)
//				
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,204,174,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,208,172,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,202,170,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID,$monsterCount,$mapID,206,168,$mapR,$isplayer,$fir)
//								
//				StartEctypeTimer($ectype_id,2)
			  
			  //???? 9	 	
	  		SetEctypeVar(-1, 0, 9)	
	  		
	  		BC("screen","map",$ectype_id,"Guardians still roam Heartless Canyon.")
				BC("chat","map",$ectype_id,"Raidne's Guardians have appeared on Platform 2!")	
				
			endif			
	
			//?BOSS3
			if $turn == 9

				 //?? 52507
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1

				$Kind = GetEctypeVar(-1,99)
				if $Kind >= 1
					$time1 = 0
					while $time1 < 10
						$time1 = $time1 + 1
						$mapX = RandomNumber(17100,20600)
						$mapY = RandomNumber(12400,15600)
						$mapX = $mapX / 256
						$mapY = $mapY / 256
						$monsterID = 52507		
						AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)					
					endwhile
				endif
		  	
			  $mapX = 18800 / 256
			  $mapY = 14000 / 256
			  $monsterID = 52486 + $Kind
		  	$monsterstatusID = 240 + $Kind
		  	$monsterfieldID = 240 + $Kind
			  AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)	
			  		  
			  //???? 10 	
	  		SetEctypeVar(-1, 0, 10)	
	  		
	  		BC("screen","map",$ectype_id,"The siren Raidne has appeared!")
				BC("chat","map",$ectype_id,"The siren Raidne has appeared!")	
	  		
			endif		

		
			//????BOSS,?????
			if $turn == 10
			
				AddNPC(837,-1)			
	
				BC("screen","map",$ectype_id,"The Heartless Canyon Portal has appeared.")
				BC("chat","player",-1,"The Heartless Canyon Portal has appeared.")		
				
				//???? 11
				SetEctypeVar(-1, 0, 11)
				
			endif		
			
			//?BOSSH
			if $turn == 11

				//NPC 840
				AddNPC(840,-1)

				 //?? 52507
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1
				
			  $mapX = 7500 / 256
			  $mapY = 26400 / 256
			  $monsterID = 52489
		  	$monsterstatusID = 240 + $Kind
		  	$monsterfieldID = 240 + $Kind
			  AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)	
			  		  
			  //???? 12 	
	  		SetEctypeVar(-1, 0, 12)	
	  		
	  		BC("screen","map",$ectype_id,"The reaper of souls Achelous has appeared!")
				BC("chat","map",$ectype_id,"The reaper of souls Achelous has appeared!")	
	  		
			endif					

				
			
			
			
}		
	
	
	
		function EctypeTimer1(){
	
				$ectype_id = GetEctypeID( -1 , 566 )
				$pro = GetEctypeVar(-1,0)
			
//				BC( "chat", "map", $ectype_id, "GUID:04627000023")

		
			
			if $pro < 7
				 //?? 52496
		  	$Fieldlevel = GetEctypeVar(-1,98)
		  	$Kind = GetEctypeVar(-1,99)
		  	$monsterstatusID = 238 + $Kind
		  	$monsterfieldID = 238 + $Kind
		  	$level = 125
		  	$monsterCount = 1
		  	$mapR = 1	
		  	$mapX = 12700 / 256
			  $mapY = 16100 / 256
			  $monsterID = 52496 + $Kind
			  AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)	
//			  BC("screen","map",$ectype_id,"GUID:04627000024")
			  
			  StartEctypeTimer($ectype_id,1)
				
			endif
	


	
	
}
	
		
		function EctypeTimer2(){
		  
		  	$ectype_id = GetEctypeID( -1 , 566 )
				$mapID = GetEctypeID( -1 , 566 )

				$monsterID1 = 52509
				$monsterCount = 1
				$mapR = 1
				$isplayer = 0
				
//				AddMonsterByFloat($monsterID1,$monsterCount,$mapID,195,223,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID1,$monsterCount,$mapID,202,223,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID1,$monsterCount,$mapID,202,217,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID1,$monsterCount,$mapID,208,217,$mapR,$isplayer,$fir)	
//				
//				AddMonsterByFloat($monsterID1,$monsterCount,$mapID,213,190,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID1,$monsterCount,$mapID,216,188,$mapR,$isplayer,$fir)
//				
//				AddMonsterByFloat($monsterID1,$monsterCount,$mapID,206,178,$mapR,$isplayer,$fir)
//				AddMonsterByFloat($monsterID1,$monsterCount,$mapID,210,176,$mapR,$isplayer,$fir)								
		  
		  
	
	
}
	
		function EctypeTimer3(){
	
		$ectype_id = GetEctypeID( -1 , 566 )
		
		StartEctypeTimer($ectype_id,0)	
	
}
	
		function EctypeTimer4(){
			
			//2?1?????
			$ectype_id = GetEctypeID( -1 , 566 )
	//		BC( "chat", "map", $ectype_id, "GUID:04627000025")
	
			
			
}
		
	
		function EctypeTimer5(){
	
			$ectype_id = GetEctypeID( -1 , 566 )	
				
			
			
	
}	
	
	
		function EctypeTimer6(){
	
		$ectype_id = GetEctypeID( -1 , 566 )	
		$progress = GetEctypeVar(-1, 0)
		
		
			
	
}		
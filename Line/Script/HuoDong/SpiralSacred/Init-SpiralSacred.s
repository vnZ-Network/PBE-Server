	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/11
	//		Author:???
	//		TaskName:SpiralSacred-Init.s
	//		TaskID:????
	//
	//****************************************
	
	//??:????,????0-14;????????15-29;????,????30-44;????????45-59;????,????60-74;????????75-89;
	//??????:13?99,20?98,22?97,30?96,4?95,17?94,???90
	//10??????ID:????110-119
	//????:3546???????,3547??,3548??,3549??????,3550??????,3551?????,3552??????(??100???,??100???),3553????
function OnCreate(){
	
}
function InitTimer(){
	//??+??????
	$ectype_ID = GetCurEctypeID()
	SetEctypeTimer( 1 , 15 , "EctypeTime1" )
	//?????????????5????
	SetEctypeTimer( 2 , 5 , "EctypeTime2" )
	//??????35??????
	SetEctypeTimer( 3 , 25 , "EctypeTime3" )
	StartEctypeTimer ($ectype_ID,3)
	SetEctypeVar($ectype_ID,0,26)
	SetEctypeVar($ectype_ID,15,255)
	//?npc
	AddNpcByPos( 2343, $ectype_ID, 52, 289, 180000, 0 )
	AddNpcByPos( 2342, $ectype_ID, 34, 295, 180000, 0 )
	//???
	AddMonsterByFloat( 32338, 1, $ectype_ID, 164, 179, 0)
	AddMonsterByFloat( 32349, 1, $ectype_ID, 67, 257,  0)
	AddMonsterByFloat( 32350, 1, $ectype_ID, 152, 167, 0)
	AddMonsterByFloat( 32350, 1, $ectype_ID, 157, 159, 0)
	AddMonsterByFloat( 32350, 1, $ectype_ID, 171, 159, 0)
	AddMonsterByFloat( 32350, 1, $ectype_ID, 175, 166, 0)
	AddMonsterByFloat( 32350, 1, $ectype_ID, 168, 178, 0)
	AddMonsterByFloat( 32350, 1, $ectype_ID, 160, 178, 0)
	AddMonsterByFloat( 32351, 1, $ectype_ID, 164, 172, 0)
	AddMonsterByFloat( 32352, 1, $ectype_ID, 153, 174, 0)
	AddMonsterByFloat( 32352, 1, $ectype_ID, 164, 156, 0)
	AddMonsterByFloat( 32352, 1, $ectype_ID, 174, 174, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 157, 231, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 168, 231, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 31, 236,  0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 30, 232,  0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 158, 171, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 170, 171, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 164, 161, 0)
	
	AddMonsterByFloat( 32353, 1, $ectype_ID, 35 , 236, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 34 , 232, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 28 , 168, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 23 , 155, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 30, 92, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 37, 92, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 32, 34, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 35, 42, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 93, 34, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 101, 33, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 163, 33, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 153, 26, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 233, 28, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 228, 33, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 278, 33, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 274, 42, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 293, 95, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 289, 94, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 311, 158, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 302, 152, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 291, 227, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 291, 243, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 275, 277, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 276, 294, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 239, 296, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 234, 297, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 154, 309, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 174, 311, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 96, 293, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 85, 293, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 64, 256, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 78, 259, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 44, 202, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 56, 200, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 62, 153, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 53, 170, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 49, 129, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 54, 116, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 67, 76, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 71, 80, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 130, 54, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 128, 45, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 171, 57, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 159, 56, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 197, 55, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 213, 53, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 263, 74, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 259, 64, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 268, 126, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 272, 131, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 271, 159, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 265, 154, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 278, 213, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 283, 204, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 266, 257, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 258, 263, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 213, 280, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 199, 280, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 174, 268, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 152, 267, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 127, 279, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 118, 284, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 101, 225, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 94, 223, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 104, 101, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 103, 108, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 224, 103, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 218, 104, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 225, 225, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 232, 225, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 163, 236, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 163, 233, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 126, 200, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 133, 199, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 124, 172, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 124, 160, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 128, 131, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 131, 125, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 158, 128, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 169, 128, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 202, 125, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 199, 121, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 204, 170, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 206, 159, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 199, 208, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 203, 193, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 160, 200, 0)
	AddMonsterByFloat( 32353, 1, $ectype_ID, 168, 200, 0)
	
	AddMonsterByFloat( 32354, 1, $ectype_ID, 163, 231, 0)
	AddMonsterByFloat( 32354, 1, $ectype_ID, 163, 225, 0)
	
}

function EctypeTime1(){
//BC( "chat", "map", $ectype_ID, $PlayerID)
	$ectype_ID = GetCurEctypeID()
	
	//???????
	$gezi3after = 0
	$gezi11after = 0
	$gezi13after = 0
	$gezi15after = 0
	$gezi20after = 0
	$gezi22after = 0
	$gezi23after = 0
	$gezi30after = 0
	$gezi31after = 0
	$gezi44after = 0
	SetEctypeVar($ectype_ID,95,0)
	
	//?????
	$huiheshu = GetEctypeVar($ectype_ID,90)
	$huiheshu = $huiheshu + 1
	SetEctypeVar($ectype_ID,90,$huiheshu)
	
	$radstart = RandomNumber ( 0 , 9 )
	$i = 0
	while $i < 10
		$radplus = $radstart + $i
		if $radplus > 9
			$radplus = $radplus - 10
		endif
		$ListID = 110 + $radplus
		$i = $i + 1
		//???????
		$PlayerID = GetEctypeVar($ectype_ID,$ListID)
		if $PlayerID > 0
			SetPlayerVar($PlayerID,3546,0)
			//???????
			$pmapid = GetPlayerInfo( $PlayerID, "mapid")
			if $ectype_ID == $pmapid
				//????????,??????1
				$tingliu = GetPlayerVar($PlayerID,3551)
				if $tingliu > 0
					$tingliu = $tingliu - 1
					SetPlayerVar($PlayerID,3551,$tingliu)
				else
					//????0???
					$shaishu = GetPlayerVar($PlayerID,3548)
					if $shaishu != 0
						$shaishuf1 = GetPlayerVar($PlayerID,3549)
						$shaishuf2 = GetPlayerVar($PlayerID,3550)
						if $shaishu == $shaishuf1
							if $shaishu1 == $shaishuf2
								//???????
								$itemget = RandomNumber ( 1, 100 )
								$itemid = 44544
								#itemname = "Time Bomb"
								if $itemget >= 10
									$itemid = $itemid + 1
									#itemname = "Magic Landmine"
								endif
								if $itemget >= 30
									$itemid = $itemid + 1
									#itemname = "Cursed Imp"
								endif
								if $itemget >= 60
									$itemid = $itemid + 1
									#itemname = "Thorny Wall"
								endif
								if $itemget >= 70
									$itemid = $itemid + 1
									#itemname = "Time Dice"
								endif
								if $itemget >= 75
									$itemid = $itemid + 1
									#itemname = "Swap Gadget"
								endif
								if $itemget >= 80
									$itemid = $itemid + 1
									#itemname = "Mini Chariot"
								endif
								if $itemget >= 90
									$itemid = $itemid + 1
									#itemname = "Thief's Gloves"
								endif
								if $itemget >= 95
									$itemid = $itemid + 1
									#itemname = "Magic Rocket"
								endif
								BC( "chat", "player", $PlayerID, "Great luck! You've rolled the same number 3 times in a row. You'll receive the item: ",#itemname)
								BC( "screen", "player", $PlayerID, "Great luck! You've rolled the same number 3 times in a row. You'll receive the item: ",#itemname)
								AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
							endif
						endif
						SetPlayerVar($PlayerID,3549,$shaishu)
						SetPlayerVar($PlayerID,3550,$shaishuf1)
						//?????+??????
						$weizhi = GetPlayerVar($PlayerID,3547)
						$weizhi = $weizhi + $shaishu
						SetPlayerVar($PlayerID,3548,0)
						$j = 0
						while $j < 15
							$dierciluzhang = 0
							$luzhanglist = $j
							$luzhangweizhi = GetEctypeVar($ectype_ID,$luzhanglist)
							if $luzhangweizhi > 0
								$luzhangpanding = $weizhi - $luzhangweizhi
								if $luzhangpanding >= 0
									if $luzhangpanding < 3
										$luzhangidlist = $j + 15
										$luzhangxuhao = GetEctypeVar($ectype_ID,$luzhangidlist)
										$luzhangid = GetEctypeVar($ectype_ID,$luzhangxuhao)
										#luzhangname = GetPlayerInfo($luzhangid, "name")
										#Playername = GetPlayerInfo($PlayerID, "name")
										if $luzhangxuhao == 255
											#luzhangname = "Reset"
										endif
										BC( "chat", "player", $luzhangid, "The wall of thorns has placed you on Platform ",$luzhangweizhi, ". You are trapped.",#Playername)
										BC( "screen", "player", $luzhangid, "The wall of thorns has placed you on Platform ",$luzhangweizhi, ". You are trapped.",#Playername)
										BC( "chat", "player", $PlayerID, "You are trapped ",#luzhangname, ", by the wall of thorns on Platform ",$luzhangweizhi, " Thorny Wall trapped ")
										BC( "screen", "player", $PlayerID, "You are trapped ",#luzhangname, ", by the wall of thorns on Platform ",$luzhangweizhi, " Thorny Wall trapped ")
										$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
										$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
										AddMonsterByFloat( 32355, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
										$weizhi = $luzhangweizhi
										SetEctypeVar($ectype_ID,$luzhanglist,0)
										SetEctypeVar($ectype_ID,$luzhangidlist,0)
										$j = 14
									endif
								endif
								if $luzhangweizhi == 3
									$luzhangweizhi = 19
									$dierciluzhang = 1
								else
									if $luzhangweizhi == 19
										$luzhangweizhi = 3
										$dierciluzhang = 1
									endif
								endif
								if $luzhangweizhi == 7
									$luzhangweizhi = 24
									$dierciluzhang = 1
								else
									if $luzhangweizhi == 24
										$luzhangweizhi = 7
										$dierciluzhang = 1
									endif
								endif
								if $luzhangweizhi == 11
									$luzhangweizhi = 27
									$dierciluzhang = 1
								else
									if $luzhangweizhi == 27
										$luzhangweizhi = 11
										$dierciluzhang = 1
									endif
								endif
								if $luzhangweizhi == 15
									$luzhangweizhi = 31
									$dierciluzhang = 1
								else
									if $luzhangweizhi == 15
										$luzhangweizhi = 31
										$dierciluzhang = 1
									endif
								endif
								if $dierciluzhang == 1
									$luzhangpanding = $weizhi - $luzhangweizhi
									if $luzhangpanding >= 0
										if $luzhangpanding < 3
											$luzhangidlist = $j + 15
											$luzhangxuhao = GetEctypeVar($ectype_ID,$luzhangidlist)
											$luzhangid = GetEctypeVar($ectype_ID,$luzhangxuhao)
											#luzhangname = GetPlayerInfo($luzhangid, "name")
											#Playername = GetPlayerInfo($PlayerID, "name")
											BC( "chat", "player", $luzhangid, "The wall of thorns has placed you on Platform ",$luzhangweizhi, ". You are trapped.",#Playername)
											BC( "screen", "player", $luzhangid, "The wall of thorns has placed you on Platform ",$luzhangweizhi, ". You are trapped.",#Playername)
											BC( "chat", "player", $PlayerID, "You are trapped ",#luzhangname, ", by the wall of thorns on Platform ",$luzhangweizhi, " Thorny Wall trapped ")
											BC( "screen", "player", $PlayerID, "You are trapped ",#luzhangname, ", by the wall of thorns on Platform ",$luzhangweizhi, " Thorny Wall trapped ")
											$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
											$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
											AddMonsterByFloat( 32355, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
											$weizhi = $luzhangweizhi
											SetEctypeVar($ectype_ID,$luzhanglist,0)
											SetEctypeVar($ectype_ID,$luzhangidlist,0)
											$j = 14
										endif
									endif
								endif
							endif
							$j = $j + 1
						endwhile
						//??46???
						if $weizhi > 46
							$houtui = $weizhi - 46
							BC( "chat", "player", $PlayerID, "The final step number exceeds 46. You'll go back by ",$houtui, "Platforms.")
							BC( "screen", "player", $PlayerID, "The final step number exceeds 46. You'll go back by ",$houtui, "Platforms.")
							$weizhi = 46 - $houtui
						endif
						SetPlayerVar($PlayerID,3547,$weizhi)
						//????+??????
						if $weizhi == 1 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 13 , 114)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 32 , 291, 0 )
							BC( "chat", "player", $PlayerID, "1. The Origin: the Pursuit of Rapture event is starting soon!")
							BC( "screen", "player", $PlayerID, "1. The Origin: the Pursuit of Rapture event is starting soon!")
						endif
						if $weizhi == 2 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 14 , 92 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 37 , 236, 0 )
							BC( "chat", "player", $PlayerID, "2. Vault: collect treasures to get random items.")
							BC( "screen", "player", $PlayerID, "2. Vault: collect treasures to get random items.")
						endif
						if $weizhi == 3 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 4  , 65 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 10 , 116, 0 )
							BC( "chat", "player", $PlayerID, "3. Weeping Wall: if there are 5 players on this platform at the same time, they can be teleported to Platform 19 directly.")
							BC( "screen", "player", $PlayerID, "3. Weeping Wall: if there are 5 players on this platform at the same time, they can be teleported to Platform 19 directly.")
							$gezi3after = 1
						endif
						if $weizhi == 4 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 14 , 36 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 35 , 92 , 0 )
							BC( "chat", "player", $PlayerID, "4. Mermaids Bay: the first player who casts the dice can move forward.")
							BC( "screen", "player", $PlayerID, "4. Mermaids Bay: the first player who casts the dice can move forward.")
						endif
						if $weizhi == 5 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 13 , 13 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 32 , 34 , 0 )
							$erciyidong = RandomNumber ( 1, 3 )
							BC( "chat", "player", $PlayerID, "5. Black Flag: you'll move backward ",$erciyidong, "Platforms.")
							BC( "screen", "player", $PlayerID, "5. Black Flag: you'll move backward ",$erciyidong, "Platforms.")
							SetPlayerVar($PlayerID,3552,$erciyidong)
						endif
						if $weizhi == 6 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 36 , 13 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 93 , 32 , 0 )
							$erciyidong = RandomNumber ( 1, 3 )
							BC( "chat", "player", $PlayerID, "6. Safe Journey: you'll move forward ",$erciyidong, "Platforms.")
							BC( "screen", "player", $PlayerID, "6. Safe Journey: you'll move forward ",$erciyidong, "Platforms.")
							$erciyidong = $erciyidong + 100
							SetPlayerVar($PlayerID,3552,$erciyidong)
						endif
						if $weizhi == 7 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 63 , 5  )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 160, 17 , 0 )
							BC( "chat", "player", $PlayerID, "7. Naraku's Cave: No effects.")
							BC( "screen", "player", $PlayerID, "7. Naraku's Cave: No effects.")
						endif
						if $weizhi == 8 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 91 , 13 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 234, 33 , 0 )
							BC( "chat", "player", $PlayerID, "8. Seaside Cliffs: You can move forward only if you roll a 3 or less.")
							BC( "screen", "player", $PlayerID, "8. Seaside Cliffs: You can move forward only if you roll a 3 or less.")
						endif
						if $weizhi == 9 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 116, 16 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 298, 42 , 0 )
							BC( "chat", "player", $PlayerID, "9. Gates of Hell: You are stunned by 2 turns.")
							BC( "screen", "player", $PlayerID, "9. Gates of Hell: You are stunned by 2 turns.")
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 2
								SetPlayerVar($PlayerID,3551,2)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 298, 42 , 0 )
							endif
						endif
						if $weizhi == 10
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 115, 38 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 294, 96 , 0 )
							BC( "chat", "player", $PlayerID, "10. Post House: You can move 2 more steps in the next turn.")
							BC( "screen", "player", $PlayerID, "10. Post House: You can move 2 more steps in the next turn.")
						endif
						if $weizhi == 11
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 122, 64 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 312, 165, 0 )
							BC( "chat", "player", $PlayerID, "11. Rescue Plan: If there is any player on Platform 27, then you'll be teleported there.")
							BC( "screen", "player", $PlayerID, "11. Rescue Plan: If there is any player on Platform 27, then you'll be teleported there.")
							$gezi11after = 1
						endif
						if $weizhi == 12
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 114, 92 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 291, 236, 0 )
							$itemget = RandomNumber ( 1, 100 )
							$itemid = 44544
							#itemname = "Time Bomb"
							if $itemget >= 10
								$itemid = $itemid + 1
								#itemname = "Magic Landmine"
							endif
							if $itemget >= 30
								$itemid = $itemid + 1
								#itemname = "Cursed Imp"
							endif
							if $itemget >= 60
								$itemid = $itemid + 1
								#itemname = "Thorny Wall"
							endif
							if $itemget >= 70
								$itemid = $itemid + 1
								#itemname = "Time Dice"
							endif
							if $itemget >= 75
								$itemid = $itemid + 1
								#itemname = "Swap Gadget"
							endif
							if $itemget >= 80
								$itemid = $itemid + 1
								#itemname = "Mini Chariot"
							endif
							if $itemget >= 90
								$itemid = $itemid + 1
								#itemname = "Thief's Gloves"
							endif
							if $itemget >= 95
								$itemid = $itemid + 1
								#itemname = "Magic Rocket"
							endif
							BC( "chat", "player", $PlayerID, "12. Magic Table: You get an item.",#itemname)
							BC( "screen", "player", $PlayerID, "12. Magic Table: You get an item.",#itemname)
							AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
						endif
						if $weizhi == 13
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 115, 115)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 294, 295, 0 )
							$gezi13 = GetEctypeVar($ectype_ID,99)
							if $gezi13 == 0
								SubPlayerInfo( $PlayerID, "item", 44544,1 )
								SubPlayerInfo( $PlayerID, "item", 44545,1 )
								SubPlayerInfo( $PlayerID, "item", 44546,1 )
								SubPlayerInfo( $PlayerID, "item", 44547,1 )
								SubPlayerInfo( $PlayerID, "item", 44548,1 )
								SubPlayerInfo( $PlayerID, "item", 44549,1 )
								SubPlayerInfo( $PlayerID, "item", 44550,1 )
								SubPlayerInfo( $PlayerID, "item", 44551,1 )
								SubPlayerInfo( $PlayerID, "item", 44552,1 )
								RemoveStatusByID($PlayerID, 6484)
								RemoveStatusByID($PlayerID, 6485)
								BC( "chat", "player", $PlayerID, "13. Cursed Round Table: You and the last player will lose all items and status. ")
								BC( "screen", "player", $PlayerID, "13. Cursed Round Table: You and the last player will lose all items and status. ")
								$gezi13after = 1
								SetEctypeVar($ectype_ID,99,1)
							endif
						endif
						if $weizhi == 14
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 91 , 111)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 232, 283, 0 )
							BC( "chat", "player", $PlayerID, "14. The Hanging Guy: You'll move backward on the next turn.")
							BC( "screen", "player", $PlayerID, "14. The Hanging Guy: You'll move backward on the next turn.")
						endif
						if $weizhi == 15
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 123)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 163, 315, 0 )
							BC( "chat", "player", $PlayerID, "15. Equivalent Exchange: If there is a player on Platform 31, then you will switch your locations.")
							BC( "screen", "player", $PlayerID, "15. Equivalent Exchange: If there is a player on Platform 31, then you will switch your locations.")
							$gezi15after = 1
						endif
						if $weizhi == 16
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 34 , 111)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 87 , 284, 0 )
							SubPlayerInfo( $PlayerID, "item", 44544,1 )
							SubPlayerInfo( $PlayerID, "item", 44545,1 )
							SubPlayerInfo( $PlayerID, "item", 44546,1 )
							SubPlayerInfo( $PlayerID, "item", 44547,1 )
							SubPlayerInfo( $PlayerID, "item", 44548,1 )
							SubPlayerInfo( $PlayerID, "item", 44549,1 )
							SubPlayerInfo( $PlayerID, "item", 44550,1 )
							SubPlayerInfo( $PlayerID, "item", 44551,1 )
							SubPlayerInfo( $PlayerID, "item", 44552,1 )
							RemoveStatusByID($PlayerID, 6484)
							RemoveStatusByID($PlayerID, 6485)
							AddPlayerInfo( $PlayerID, "item", 44551, 1 )
							BC( "chat", "player", $PlayerID, "16. Bandits Union: If you have lost all your items and status in the previous turns, you'll gain the Bandit's Gloves.")
							BC( "screen", "player", $PlayerID, "16. Bandits Union: If you have lost all your items and status in the previous turns, you'll gain the Bandit's Gloves.")
						endif
						if $weizhi == 17
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 30 , 98 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 77 , 252, 0 )
							BC( "chat", "player", $PlayerID, "17. Dragon Cave: You can't move until you kill the giant Dragon.")
							BC( "screen", "player", $PlayerID, "17. Dragon Cave: You can't move until you kill the giant Dragon.")
						endif
						if $weizhi == 18
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 23 , 80 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 58 , 205, 0 )
							$itemtongji1 = GetPlayerInfo( $PlayerID, "item", 44544)
							$itemtongji2 = GetPlayerInfo( $PlayerID, "item", 44545)
							$itemtongji3 = GetPlayerInfo( $PlayerID, "item", 44546)
							$itemtongji4 = GetPlayerInfo( $PlayerID, "item", 44547)
							$itemtongji5 = GetPlayerInfo( $PlayerID, "item", 44548)
							$itemtongji6 = GetPlayerInfo( $PlayerID, "item", 44549)
							$itemtongji7 = GetPlayerInfo( $PlayerID, "item", 44550)
							$itemtongji8 = GetPlayerInfo( $PlayerID, "item", 44551)
							$itemtongji9 = GetPlayerInfo( $PlayerID, "item", 44552)
							$itemtongji1 = $itemtongji1 + $itemtongji2
							$itemtongji1 = $itemtongji1 + $itemtongji3
							$itemtongji1 = $itemtongji1 + $itemtongji4
							$itemtongji1 = $itemtongji1 + $itemtongji5
							$itemtongji1 = $itemtongji1 + $itemtongji6
							$itemtongji1 = $itemtongji1 + $itemtongji7
							$itemtongji1 = $itemtongji1 + $itemtongji8
							$itemtongji1 = $itemtongji1 + $itemtongji9
							if $itemtongji1 > 0
								$itemget = RandomNumber ( 1, 100 )
								$itemid = 44544
								#itemname = "Time Bomb"
								if $itemget >= 10
									$itemid = $itemid + 1
									#itemname = "Magic Landmine"
								endif
								if $itemget >= 30
									$itemid = $itemid + 1
									#itemname = "Cursed Imp"
								endif
								if $itemget >= 60
									$itemid = $itemid + 1
									#itemname = "Thorny Wall"
								endif
								if $itemget >= 70
									$itemid = $itemid + 1
									#itemname = "Time Dice"
								endif
								if $itemget >= 75
									$itemid = $itemid + 1
									#itemname = "Swap Gadget"
								endif
								if $itemget >= 80
									$itemid = $itemid + 1
									#itemname = "Mini Chariot"
								endif
								if $itemget >= 90
									$itemid = $itemid + 1
									#itemname = "Thief's Gloves"
								endif
								if $itemget >= 95
									$itemid = $itemid + 1
									#itemname = "Magic Rocket"
								endif
								BC( "chat", "player", $PlayerID, "18. Royal Garden: If you've already obtained some items, you'll gain more: ",#itemname)
								BC( "screen", "player", $PlayerID, "18. Royal Garden: If you've already obtained some items, you'll gain more: ",#itemname)
								AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
							else
								BC( "chat", "player", $PlayerID, "18. Royal Garden: If you don't have any items, you'll be trapped for one turn.")
								BC( "screen", "player", $PlayerID, "18. Royal Garden: If you don't have any items, you'll be trapped for one turn.")
								$tingliu = GetPlayerVar($PlayerID,3551)
								if $tingliu < 1
									SetPlayerVar($PlayerID,3551,1)
									AddMonsterByFloat( 32360, 1, $ectype_ID, 58 , 205 , 0 )
								endif
							endif
						endif
						if $weizhi == 19
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 28 , 66 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 72 , 168, 0 )
							BC( "chat", "player", $PlayerID, "19. Weeping Wall: No effects.")
							BC( "screen", "player", $PlayerID, "19. Weeping Wall: No effects.")
						endif
						if $weizhi == 20
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 23 , 48 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 60 , 124, 0 )
							$gezi20 = GetEctypeVar($ectype_ID,98)
							if $gezi20 == 0
								$gezi20after = 1
								BC( "chat", "player", $PlayerID, "20. Kick Down the Ladder: Can only be activated once. All players on Platform 1-20 will be trapped for one turn.")
								BC( "screen", "player", $PlayerID, "20. Kick Down the Ladder: Can only be activated once. All players on Platform 1-20 will be trapped for one turn.")
							endif
						endif
						if $weizhi == 21
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 30 , 30 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 76 , 76 , 0 )
							AddPlayerInfo( $PlayerID, "item", 44548, 1 )
							BC( "chat", "player", $PlayerID, "21. Four Leaf Clover: You've obtained a Time Dice.")
							BC( "screen", "player", $PlayerID, "21. Four Leaf Clover: You've obtained a Time Dice.")
						endif
						if $weizhi == 22
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 47 , 23 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 120, 60 , 0 )
							$gezi22 = GetEctypeVar($ectype_ID,97)
							if $gezi22 == 0
								$gezi22after = 1
								BC( "chat", "player", $PlayerID, "22. Kick Down the Ladder: Can only be activated once. All players on Platform 1-22 will be trapped for one turn.")
								BC( "screen", "player", $PlayerID, "22. Kick Down the Ladder: Can only be activated once. All players on Platform 1-22 will be trapped for one turn.")
							endif
						endif
						if $weizhi == 23
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 63 , 29 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 160, 74 , 0 )
							$gezi23after = 1
							BC( "chat", "player", $PlayerID, "23. Naraku's Cave: You will be teleported to Platform 7 if another player is currently there.")
							BC( "screen", "player", $PlayerID, "23. Naraku's Cave: You will be teleported to Platform 7 if another player is currently there.")
						endif
						if $weizhi == 24
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 81 , 23 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 207, 58 , 0 )
							$itemget = RandomNumber ( 1, 100 )
							$itemid = 44544
							#itemname = "Time Bomb"
							if $itemget >= 10
								$itemid = $itemid + 1
								#itemname = "Magic Landmine"
							endif
							if $itemget >= 30
								$itemid = $itemid + 1
								#itemname = "Cursed Imp"
							endif
							if $itemget >= 60
								$itemid = $itemid + 1
								#itemname = "Thorny Wall"
							endif
							if $itemget >= 70
								$itemid = $itemid + 1
								#itemname = "Time Dice"
							endif
							if $itemget >= 75
								$itemid = $itemid + 1
								#itemname = "Swap Gadget"
							endif
							if $itemget >= 80
								$itemid = $itemid + 1
								#itemname = "Mini Chariot"
							endif
							if $itemget >= 90
								$itemid = $itemid + 1
								#itemname = "Thief's Gloves"
							endif
							if $itemget >= 95
								$itemid = $itemid + 1
								#itemname = "Magic Rocket"
							endif
							AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($PlayerID,3551,1)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 207, 58 , 0 )
							endif
							BC( "chat", "player", $PlayerID, "24. Tower of Ivory: You'll be trapped for one turn and get a  ",#itemname)
							BC( "screen", "player", $PlayerID, "24. Tower of Ivory: You'll be trapped for one turn and get a  ",#itemname)
						endif
						if $weizhi == 25
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 98 , 30 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 251, 77 , 0 )
							RemoveStatusByID($PlayerID, 6484)
							AddStatus( $PlayerID, 6484, 5 )
							BC( "chat", "player", $PlayerID, "25. Evan's House: A Time Bomb is bound to you.")
							BC( "screen", "player", $PlayerID, "25. Evan's House: A Time Bomb is bound to you.")
						endif
						if $weizhi == 26
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 105, 47 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 268, 120, 0 )
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($PlayerID,3551,1)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 268, 120 , 0 )
							endif
							AddPlayerInfo( $PlayerID, "item", 44547, 1 )
							BC( "chat", "player", $PlayerID, "26. Wall of Rose: You'll be trapped for one turn and get a Thorny Wall.")
							BC( "screen", "player", $PlayerID, "26. Wall of Rose: You'll be trapped for one turn and get a Thorny Wall.")
						endif
						if $weizhi == 27
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 98 , 65 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 250, 166, 0 )
							BC( "chat", "player", $PlayerID, "27. Rescue Plan: No effects.")
							BC( "screen", "player", $PlayerID, "27. Rescue Plan: No effects.")
						endif
						if $weizhi == 28
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 104, 80 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 266, 206, 0 )
							BC( "chat", "player", $PlayerID, "28. Horsepond: You can move 1 more step in the next turn.")
							BC( "screen", "player", $PlayerID, "28. Horsepond: You can move 1 more step in the next turn.")
						endif
						if $weizhi == 29
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 100, 98 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 255, 251, 0 )
							BC( "chat", "player", $PlayerID, "29. Circus Troup: You'll be forced to use a Cursed Imp immediately.")
							BC( "screen", "player", $PlayerID, "29. Circus Troup: You'll be forced to use a Cursed Imp immediately.")
							$ectype_ID = GetCurEctypeID()
							$Playerlist = GetPlayerVar($PlayerID,3553)
							$suc = RandomNumber ( 0 , 2 )
							if $suc > 0
								$weizhi = GetPlayerVar($PlayerID,3547)
								$k = 0
								while $k < 15
									$itemweizhi = 60 + $k
									$itemyou = GetEctypeVar($ectype_ID,$itemweizhi)
									if $itemyou == 0
										$itemlist = 75 + $k
										SetEctypeVar($ectype_ID,$itemweizhi,$weizhi)
										SetEctypeVar($ectype_ID,$itemlist,$Playerlist)
										BC( "chat", "player", $PlayerID, "Cursed Imp is set up successfully.")
										BC( "screen", "player", $PlayerID, "Cursed Imp is set up successfully.")
										$k = 14
									endif
									$k = $k + 1
								endwhile
							else
								$radstart = RandomNumber ( 0 , 9 )
								$l = 0
								while $l < 10
									$radplus = $radstart + $l
									if $radplus > 9
										$radplus = $radplus - 10
									endif
									$Targetlist = 110 + $radplus
									$TargetID = GetEctypeVar($ectype_ID,$Targetlist)
									$weizhi = GetPlayerVar($PlayerID,3547)
									$Targetweizhi = GetPlayerVar($TargetID,3547)
									if $weizhi == $Targetweizhi
										$tingliu = GetPlayerVar($TargetID,3551)
										if $tingliu < 1
											SetPlayerVar($TargetID,3551,1)
										endif
										#Playername = GetPlayerInfo($PlayerID, "name")
										BC( "chat", "player", $TargetID, "Player ",#Playername, " has failed to use the Cursed Imp. You'll be stunned for a full turn.")
										BC( "screen", "player", $TargetID, "Player ",#Playername, " has failed to use the Cursed Imp. You'll be stunned for a full turn.")
										$PlayerX = GetPlayerInfo(	$TargetID, "mapposx" )
										$PlayerY = GetPlayerInfo( $TargetID, "mapposy" )
										AddMonsterByFloat( 32357, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
									endif
									$l = $l + 1
								endwhile
							endif
						endif
						if $weizhi == 30
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 81 , 105)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 208, 268, 0 )
							$gezi30 = GetEctypeVar($ectype_ID,96)
							if $gezi30 == 0
								SubPlayerInfo( $PlayerID, "item", 44544,1 )
								SubPlayerInfo( $PlayerID, "item", 44545,1 )
								SubPlayerInfo( $PlayerID, "item", 44546,1 )
								SubPlayerInfo( $PlayerID, "item", 44547,1 )
								SubPlayerInfo( $PlayerID, "item", 44548,1 )
								SubPlayerInfo( $PlayerID, "item", 44549,1 )
								SubPlayerInfo( $PlayerID, "item", 44550,1 )
								SubPlayerInfo( $PlayerID, "item", 44551,1 )
								SubPlayerInfo( $PlayerID, "item", 44552,1 )
								RemoveStatusByID($PlayerID, 6484)
								RemoveStatusByID($PlayerID, 6485)
								BC( "chat", "player", $PlayerID, "30. Giants Slaughter: You and the first player will lose all items and status.")
								BC( "screen", "player", $PlayerID, "30. Giants Slaughter: You and the first player will lose all items and status.")
								$gezi30after = 1
								SetEctypeVar($ectype_ID,96,1)
							endif
						endif
						if $weizhi == 31
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 107)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 163, 273, 0 )
							BC( "chat", "player", $PlayerID, "31. Equivalent Exchange: If there is a player on Platform 15, then you will switch your locations.")
							BC( "screen", "player", $PlayerID, "31. Equivalent Exchange: If there is a player on Platform 15, then you will switch your locations.")
							$gezi31after = 1
						endif
						if $weizhi == 32
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 47 , 105)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 120, 268, 0 )
							$k = 0
							while $k < 10
								$itemget = RandomNumber ( 1, 100 )
								$itemid = 44544
								#itemname = "Time Bomb"
								if $itemget >= 10
									$itemid = $itemid + 1
									#itemname = "Magic Landmine"
								endif
								if $itemget >= 30
									$itemid = $itemid + 1
									#itemname = "Cursed Imp"
								endif
								if $itemget >= 60
									$itemid = $itemid + 1
									#itemname = "Thorny Wall"
								endif
								if $itemget >= 70
									$itemid = $itemid + 1
									#itemname = "Time Dice"
								endif
								if $itemget >= 75
									$itemid = $itemid + 1
									#itemname = "Swap Gadget"
								endif
								if $itemget >= 80
									$itemid = $itemid + 1
									#itemname = "Mini Chariot"
								endif
								if $itemget >= 90
									$itemid = $itemid + 1
									#itemname = "Thief's Gloves"
								endif
								if $itemget >= 95
									$itemid = $itemid + 1
									#itemname = "Magic Rocket"
								endif
								$Xmasgift = $k + 110
								$Xmasgiftid = GetEctypeVar($ectype_ID,$Xmasgift)
								if $Xmasgiftid > 0
									AddPlayerInfo( $Xmasgiftid, "item", $itemid, 1 )
									#Xmasgiftname = GetPlayerInfo($Xmasgiftid, "name")
									#Playername = GetPlayerInfo($PlayerID, "name")
									BC( "chat", "player", $Xmasgiftid, "Player ",#Playername, " sent you a Christmas gift:",#itemname)
									BC( "screen", "player", $Xmasgiftid, "Player ",#Playername, " sent you a Christmas gift:",#itemname)
									BC( "chat", "player", $PlayerID, "32. Santa Claus: You give player ",#Xmasgiftname, ", a Christmas gift.",#itemname)
									BC( "screen", "player", $PlayerID, "32. Santa Claus: You give player ",#Xmasgiftname, ", a Christmas gift.",#itemname)
								endif
								$k = $k + 1
							endwhile
						endif
						if $weizhi == 33
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 42 , 89 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 107, 227, 0 )
							RemoveStatusByID($PlayerID, 6485)
							AddStatus( $PlayerID, 6485, 3 )
							BC( "chat", "player", $PlayerID, "33. Mini Chariot: You gain the Mini Chariot status.")
							BC( "screen", "player", $PlayerID, "33. Mini Chariot: You gain the Mini Chariot status.")
						endif
						if $weizhi == 34
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 39 , 38 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 99 , 96 , 0 )
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($PlayerID,3551,1)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 99 , 96 , 0 )
							endif
							BC( "chat", "player", $PlayerID, "34. Nepenthes: You'll be stunned for a full turn.")
							BC( "screen", "player", $PlayerID, "34. Nepenthes: You'll be stunned for a full turn.")
						endif
						if $weizhi == 35
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 89 , 38 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 229, 96 , 0 )
							SubPlayerInfo( $PlayerID, "item", 44544,1 )
							SubPlayerInfo( $PlayerID, "item", 44545,1 )
							SubPlayerInfo( $PlayerID, "item", 44546,1 )
							SubPlayerInfo( $PlayerID, "item", 44547,1 )
							SubPlayerInfo( $PlayerID, "item", 44548,1 )
							SubPlayerInfo( $PlayerID, "item", 44549,1 )
							SubPlayerInfo( $PlayerID, "item", 44550,1 )
							SubPlayerInfo( $PlayerID, "item", 44551,1 )
							SubPlayerInfo( $PlayerID, "item", 44552,1 )
							RemoveStatusByID($PlayerID, 6484)
							RemoveStatusByID($PlayerID, 6485)
							BC( "chat", "player", $PlayerID, "35. Magic Defense: You'll lose all your items and status.")
							BC( "screen", "player", $PlayerID, "35. Magic Defense: You'll lose all your items and status.")
						endif
						if $weizhi == 36
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 85 , 87 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 227, 232, 0 )
							OpenNpcDialog($PlayerID ,2345)
							BC( "chat", "player", $PlayerID, "36. Ammunition Depot: The Magic Landmine you set has been activated.")
							BC( "screen", "player", $PlayerID, "36. Ammunition Depot: The Magic Landmine you set has been activated.")
						endif
						if $weizhi == 37
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 63 , 93 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 161, 237, 0 )
							BC( "chat", "player", $PlayerID, "37. King's Treasure House: Collect treasure to earn random items.")
							BC( "screen", "player", $PlayerID, "37. King's Treasure House: Collect treasure to earn random items.")
						endif
						if $weizhi == 38
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 46 , 77 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 117, 197, 0 )
							$erciyidong = RandomNumber ( 4, 6 )
							SetPlayerVar($PlayerID,3552,$erciyidong)
							BC( "chat", "player", $PlayerID, "38. Rebound Barrier: You'll move back ",$erciyidong, "Platforms.")
							BC( "screen", "player", $PlayerID, "38. Rebound Barrier: You'll move back ",$erciyidong, "Platforms.")
						endif
						if $weizhi == 39
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 50 , 64 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 128, 165, 0 )
							BC( "chat", "player", $PlayerID, "39. Wasteland: You'll move 2 less steps in the next turn.")
							BC( "screen", "player", $PlayerID, "39. Wasteland: You'll move 2 less steps in the next turn.")
						endif
						if $weizhi == 40
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 49 , 49 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 132, 132, 0 )
							$xiaochourad = RandomNumber ( 0, 1 )
							if $itemtongji1 == 0
								$itemget = RandomNumber ( 1, 100 )
								$itemid = 44544
								#itemname = "Time Bomb"
								if $itemget >= 10
									$itemid = $itemid + 1
									#itemname = "Magic Landmine"
								endif
								if $itemget >= 30
									$itemid = $itemid + 1
									#itemname = "Cursed Imp"
								endif
								if $itemget >= 60
									$itemid = $itemid + 1
									#itemname = "Thorny Wall"
								endif
								if $itemget >= 70
									$itemid = $itemid + 1
									#itemname = "Time Dice"
								endif
								if $itemget >= 75
									$itemid = $itemid + 1
									#itemname = "Swap Gadget"
								endif
								if $itemget >= 80
									$itemid = $itemid + 1
									#itemname = "Mini Chariot"
								endif
								if $itemget >= 90
									$itemid = $itemid + 1
									#itemname = "Thief's Gloves"
								endif
								if $itemget >= 95
									$itemid = $itemid + 1
									#itemname = "Magic Rocket"
								endif
								BC( "chat", "player", $PlayerID, "40. Clown Box: You get the item:",#itemname)
								BC( "screen", "player", $PlayerID, "40. Clown Box: You get the item:",#itemname)
								AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
							else
								BC( "chat", "player", $PlayerID, "40. Clown Box: You'll be stunned for 1 turn.")
								BC( "screen", "player", $PlayerID, "40. Clown Box: You'll be stunned for 1 turn.")
								$tingliu = GetPlayerVar($PlayerID,3551)
								if $tingliu < 1
									SetPlayerVar($PlayerID,3551,1)
									AddMonsterByFloat( 32360, 1, $ectype_ID, 132, 132 , 0 )
								endif
							endif
						endif
						if $weizhi == 41
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 52 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 164, 133, 0 )
							BC( "chat", "player", $PlayerID, "41. Victory Banner:You'll move 3 more steps in the next turn.")
							BC( "screen", "player", $PlayerID, "41. Victory Banner:You'll move 3 more steps in the next turn.")
						endif
						if $weizhi == 42
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 78 , 51 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 200, 131, 0 )
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 3
								SetPlayerVar($PlayerID,3551,3)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 200, 131 , 0 )
							endif
							BC( "chat", "player", $PlayerID, "42. Bear Trap: You'll be stunned for 3 turns.")
							BC( "screen", "player", $PlayerID, "42. Bear Trap: You'll be stunned for 3 turns.")
						endif
						if $weizhi == 43
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 78 , 64 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 200, 164, 0 )
							BC( "chat", "player", $PlayerID, "43. Death Swamp: Only if you have rolled a 4 or more, you can keep moving.")
							BC( "screen", "player", $PlayerID, "43. Death Swamp: Only if you have rolled a 4 or more, you can keep moving.")
						endif
						if $weizhi == 44
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 76 , 76 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 194, 195, 0 )
							BC( "chat", "player", $PlayerID, "44. Altar: You'll switch locations with a random player.")
							BC( "screen", "player", $PlayerID, "44. Altar: You'll switch locations with a random player.")
							$gezi44after = 1
						endif
						if $weizhi == 45
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 78 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 163, 200, 0 )
							$erciyidong = RandomNumber ( 1, 6 )
							BC( "chat", "player", $PlayerID, "45. Last Step: Move forward ",$erciyidong, "Platforms.")
							BC( "screen", "player", $PlayerID, "45. Last Step: Move forward ",$erciyidong, "Platforms.")
							$erciyidong = $erciyidong + 100
							SetPlayerVar($PlayerID,3552,$erciyidong)
						endif
						if $weizhi == 46
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 66 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 164, 170, 0 )
							BC( "chat", "player", $PlayerID, "46. Heart of Spiral: Congratulations! You've finished the challenge! Come and get your treasure chest now!")
							BC( "screen", "player", $PlayerID, "46. Heart of Spiral: Congratulations! You've finished the challenge! Come and get your treasure chest now!")
						endif
					endif
				endif
			else
			//????????ID
				SetEctypeVar($ectype_ID,$ListID,0)
			endif
		endif
	endwhile
	//?????(????)
	
	if $gezi3after == 1
		$tanxileijia = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 3
					$tanxileijia = $tanxileijia + 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $tanxileijia >= 5
			$l = 0
			while $l < 10	
				$ListID = 110 + $l
				$PlayerID = GetEctypeVar($ectype_ID,$ListID)
				if $PlayerID > 0
					$weizhi = GetPlayerVar($PlayerID,3547)
					if $weizhi == 3
						SetPlayerVar($PlayerID,3547,19)
						BC( "chat", "player", $PlayerID, "There are 5 players already. You'll be teleported to Platform 19!")
						BC( "screen", "player", $PlayerID, "There are 5 players already. You'll be teleported to Platform 19!")
					endif
				endif
				$l = $l + 1
			endwhile
		endif
	endif
	if $gezi11after == 1
		$jiuyuan1 = 0
		$jiuyuan2 = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 11
					$jiuyuan1 = 1
				endif
				if $weizhi == 27
					$jiuyuan2 = 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $jiuyuan1 == 1
			if $jiuyuan2 == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == 11
							SetPlayerVar($PlayerID,3547,27)
							BC( "chat", "player", $PlayerID, "You're teleported to Platform 27 by the Rescue Plan activated by the player on that platform.")
							BC( "screen", "player", $PlayerID, "You're teleported to Platform 27 by the Rescue Plan activated by the player on that platform.")
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
	endif
	if $gezi13after == 1
		$weizhicach = 255
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi < $weizhicach 
					$weizhicach = $weizhi
				endif
			endif
			$l = $l + 1
		endwhile
		if $weizhicach > 0
			$l = 0
			while $l < 10	
				$ListID = 110 + $l
				$PlayerID = GetEctypeVar($ectype_ID,$ListID)
				if $PlayerID > 0
					$weizhi = GetPlayerVar($PlayerID,3547)
					if $weizhi == $weizhicach
						SubPlayerInfo( $PlayerID, "item", 44544,1 )
						SubPlayerInfo( $PlayerID, "item", 44545,1 )
						SubPlayerInfo( $PlayerID, "item", 44546,1 )
						SubPlayerInfo( $PlayerID, "item", 44547,1 )
						SubPlayerInfo( $PlayerID, "item", 44548,1 )
						SubPlayerInfo( $PlayerID, "item", 44549,1 )
						SubPlayerInfo( $PlayerID, "item", 44550,1 )
						SubPlayerInfo( $PlayerID, "item", 44551,1 )
						SubPlayerInfo( $PlayerID, "item", 44552,1 )
						RemoveStatusByID($PlayerID, 6484)
						RemoveStatusByID($PlayerID, 6485)
						$tingliu = GetPlayerVar($PlayerID,3551)
						if $tingliu < 1
							SetPlayerVar($PlayerID,3551,1)
							$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
							$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
							AddMonsterByFloat( 32360, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
						endif
						BC( "chat", "player", $PlayerID, "Since you ranked last, you'll lose all your items and status, and be stunned for one turn. ")
						BC( "screen", "player", $PlayerID, "Since you ranked last, you'll lose all your items and status, and be stunned for one turn. ")
					endif
				endif
				$l = $l + 1
			endwhile
		endif
	endif
	if $gezi15after == 1
		$jiaohuan1 = 0
		$jiaohuan2 = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 15
					$jiaohuan1 = 1
				endif
				if $weizhi == 31
					$jiaohuan2 = 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $jiaohuan1 == 1
			if $jiaohuan2 == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == 15
							SetPlayerVar($PlayerID,3547,31)
							BC( "chat", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 31.")
							BC( "screen", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 31.")
						endif
						if $weizhi == 31
							SetPlayerVar($PlayerID,3547,15)
							BC( "chat", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 15.")
							BC( "screen", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 15.")
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
	endif
	if $gezi20after == 1
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi < 20
					$tingliu = GetPlayerVar($PlayerID,3551)
					if $tingliu < 1
						SetPlayerVar($PlayerID,3551,1)
						$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
						$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
						AddMonsterByFloat( 32360, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
					endif
					BC( "chat", "player", $PlayerID, "Affected by Kick Down the Ladder, you'll be stunned for one turn!")
					BC( "screen", "player", $PlayerID, "Affected by Kick Down the Ladder, you'll be stunned for one turn!")
				endif
			endif
			$l = $l + 1
		endwhile
	endif
	if $gezi22after == 1
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi > 22
					$tingliu = GetPlayerVar($PlayerID,3551)
					if $tingliu < 1
						SetPlayerVar($PlayerID,3551,1)
						$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
						$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
						AddMonsterByFloat( 32360, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
					endif
					BC( "chat", "player", $PlayerID, "Affected by Kick Down the Ladder, you'll be stunned for one turn!")
					BC( "screen", "player", $PlayerID, "Affected by Kick Down the Ladder, you'll be stunned for one turn!")
				endif
			endif
			$l = $l + 1
		endwhile
	endif
	if $gezi23after == 1
		$nailuo1 = 0
		$nailuo2 = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 23
					$nailuo1 = 1
				endif
				if $weizhi == 7
					$nailuo2 = 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $nailuo1 == 1
			if $nailuo2 == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == 23
							SetPlayerVar($PlayerID,3547,7)
							BC( "chat", "player", $PlayerID, "The player on Platform 7 activated the Naraku House. You'll be teleported back to Platform 7!")
							BC( "screen", "player", $PlayerID, "The player on Platform 7 activated the Naraku House. You'll be teleported back to Platform 7!")
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
	endif
	if $gezi30after == 1
		$weizhicach = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi > $weizhicach 
					$weizhicach = $weizhi
				endif
			endif
			$l = $l + 1
		endwhile
		if $weizhicach > 0
			$l = 0
			while $l < 10	
				$ListID = 110 + $l
				$PlayerID = GetEctypeVar($ectype_ID,$ListID)
				if $PlayerID > 0
					$weizhi = GetPlayerVar($PlayerID,3547)
					if $weizhi == $weizhicach
						SubPlayerInfo( $PlayerID, "item", 44544,1 )
						SubPlayerInfo( $PlayerID, "item", 44545,1 )
						SubPlayerInfo( $PlayerID, "item", 44546,1 )
						SubPlayerInfo( $PlayerID, "item", 44547,1 )
						SubPlayerInfo( $PlayerID, "item", 44548,1 )
						SubPlayerInfo( $PlayerID, "item", 44549,1 )
						SubPlayerInfo( $PlayerID, "item", 44550,1 )
						SubPlayerInfo( $PlayerID, "item", 44551,1 )
						SubPlayerInfo( $PlayerID, "item", 44552,1 )
						RemoveStatusByID($PlayerID, 6484)
						RemoveStatusByID($PlayerID, 6485)
						$tingliu = GetPlayerVar($PlayerID,3551)
						if $tingliu < 1
							SetPlayerVar($PlayerID,3551,1)
							$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
							$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
							AddMonsterByFloat( 32360, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
						endif
						BC( "chat", "player", $PlayerID, "Since you ranked top 1, affected by the Giant Slaughter, you'll lose all your items and status, and be stunned for one turn.")
						BC( "screen", "player", $PlayerID, "Since you ranked top 1, affected by the Giant Slaughter, you'll lose all your items and status, and be stunned for one turn.")
					endif
				endif
				$l = $l + 1
			endwhile
		endif
	endif
	if $gezi31after == 1
		$jiaohuan1 = 0
		$jiaohuan2 = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 15
					$jiaohuan1 = 1
				endif
				if $weizhi == 31
					$jiaohuan2 = 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $jiaohuan1 == 1
			if $jiaohuan1 == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == 15
							SetPlayerVar($PlayerID,3547,31)
							BC( "chat", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 31.")
							BC( "screen", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 31.")
						endif
						if $weizhi == 31
							SetPlayerVar($PlayerID,3547,15)
							BC( "chat", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 15.")
							BC( "screen", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 15.")
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
	endif
	if $gezi44after == 1
		$radstart = RandomNumber ( 0 , 9 )
		$l = 1
		while $l < 11
			$radplus = $radstart + $l
			if $radplus > 10
				$radplus = $radplus - 10
			endif
			$ListID = 109 + $radplus
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 44
					$radjiaohuan = RandomNumber ( 1 , $l )
					$radplus1 = $radstart + $radjiaohuan
					if $radplus1 > 10
						$radplus1 = $radplus1 - 10
					endif
					$Targetlist = 109 + $radplus1
					$TargetID = GetEctypeVar($ectype_ID,$Targetlist)
					if $TargetID > 0
						$Targetweizhi = GetPlayerVar($TargetID,3547)
						SetPlayerVar($PlayerID,3547,$Targetweizhi)
						SetPlayerVar($TargetID,3547,44)
						#Targetname = GetPlayerInfo($TargetID, "name")
						#Playername = GetPlayerInfo($PlayerID, "name")
						BC( "chat", "player", $TargetID, "Affected by Altar, you'll exchange your location with player ",#Playername, ", and be teleported to Platform 44.")
						BC( "screen", "player", $TargetID, "Affected by Altar, you'll exchange your location with player ",#Playername, ", and be teleported to Platform 44.")
						BC( "chat", "player", $PlayerID, "Affected by Altar, you'll exchange your location with player ",#Targetname, ", and be teleported to Platform ",$Targetweizhi, ".")
						BC( "screen", "player", $PlayerID, "Affected by Altar, you'll exchange your location with player ",#Targetname, ", and be teleported to Platform ",$Targetweizhi, ".")
						$PlayerX = GetPlayerInfo(	$TargetID, "mapx" )
						$PlayerY = GetPlayerInfo( $TargetID, "mapy" )
						$PlayerX2 = GetPlayerInfo( $PlayerID, "mapx" )
						$PlayerY2 = GetPlayerInfo( $PlayerID, "mapy" )
						FlyToMap($TargetID, $ectype_ID, $PlayerX2, $PlayerX2)
						FlyToMap($PlayerID, $ectype_ID, $PlayerX, $PlayerY)
					else
						$l = $l - 1
					endif
				endif
			endif
			$l = $l + 1
		endwhile
	endif
	//???
	$radstart = RandomNumber ( 0 , 9 )
	$l = 0
	$limit = 0
	while $l < 10
		$radplus = $radstart + $l
		if $radplus > 9
			$radplus = $radplus - 10
		endif
		$ListID = 110 + $radplus
		$PlayerID = GetEctypeVar($ectype_ID,$ListID)
		if $PlayerID > 0
			$weizhi = GetPlayerVar($PlayerID,3547)
			if $weizhi > 1
				if $weizhi < 46
					$xiangzilist = $weizhi
					$baoxiangid = 32354
					if $xiangzilist == 2 
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 39  , 227, 0)
					endif
					if $xiangzilist == 3 
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 28  , 173, 0)
					endif
					if $xiangzilist == 4 
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 36  , 99 , 0)
					endif
					if $xiangzilist == 5 
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 54  , 49 , 0)
					endif
					if $xiangzilist == 6 
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 101 , 33 , 0)
					endif
					if $xiangzilist == 7 
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 156 , 33 , 0)
					endif
					if $xiangzilist == 8 
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 227 , 33 , 0)
					endif
					if $xiangzilist == 9 
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 276 , 48 , 0)
					endif
					if $xiangzilist == 10
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 291 , 102, 0)
					endif
					if $xiangzilist == 11
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 295 , 170, 0)
					endif
					if $xiangzilist == 12
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 288 , 229, 0)
					endif
					if $xiangzilist == 13
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 287 , 273, 0)
					endif
					if $xiangzilist == 14
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 240 , 288, 0)
					endif
					if $xiangzilist == 15
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 156 , 298, 0)
					endif
					if $xiangzilist == 16
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 91  , 288, 0)
					endif
					if $xiangzilist == 17
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 71  , 247, 0)
					endif
					if $xiangzilist == 18
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 48  , 214, 0)
					endif
					if $xiangzilist == 19
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 50  , 163, 0)
					endif
					if $xiangzilist == 20
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 46  , 117, 0)
					endif
					if $xiangzilist == 21
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 64  , 71 , 0)
					endif
					if $xiangzilist == 22
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 122 , 44 , 0)
					endif
					if $xiangzilist == 23
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 162 , 53 , 0)
					endif
					if $xiangzilist == 24
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 205 , 42 , 0)
					endif
					if $xiangzilist == 25
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 253 , 63 , 0)
					endif
					if $xiangzilist == 26
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 272 , 117, 0)
					endif
					if $xiangzilist == 27
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 273 , 164, 0)
					endif
					if $xiangzilist == 28
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 277 , 197, 0)
					endif
					if $xiangzilist == 29
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 252 , 256, 0)
					endif
					if $xiangzilist == 30
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 206 , 282, 0)
					endif
					if $xiangzilist == 31
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 162 , 280, 0)
					endif
					if $xiangzilist == 32
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 111 , 280, 0)
					endif
					if $xiangzilist == 33
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 96  , 231, 0)
					endif
					if $xiangzilist == 34
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 110 , 107, 0)
					endif
					if $xiangzilist == 35
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 225 , 110, 0)
					endif
					if $xiangzilist == 36
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 232 , 225, 0)
					endif
					if $xiangzilist == 37
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 163 , 221, 0)
					endif
					if $xiangzilist == 38
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 124 , 209, 0)
					endif
					if $xiangzilist == 39
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 117 , 166, 0)
					endif
					if $xiangzilist == 40
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 120 , 128, 0)
					endif
					if $xiangzilist == 41
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 163 , 121, 0)
					endif
					if $xiangzilist == 42
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 207 , 118, 0)
					endif
					if $xiangzilist == 43
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 209 , 165, 0)
					endif
					if $xiangzilist == 44
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 209 , 205, 0)
					endif
					if $xiangzilist == 45
						AddMonsterByFloat( $baoxiangid, 1, $ectype_ID, 163 , 210, 0)
					endif
					$limit = $limit + 1
					if $limit >= 3
						$l = 9
					endif
				endif
			endif
		endif
		$l = $l + 1
	endwhile
	
	StartEctypeTimer ($ectype_ID,2)
}

function EctypeTime2(){
	//????????,????,?????????

	$ectype_ID = GetCurEctypeID()
	
	//???????
	$gezi3after = 0
	$gezi11after = 0
	$gezi13after = 0
	$gezi15after = 0
	$gezi20after = 0
	$gezi22after = 0
	$gezi23after = 0
	$gezi30after = 0
	$gezi31after = 0
	$gezi44after = 0
	
	$radstart = RandomNumber ( 0 , 9 )
	$i = 0
	while $i < 10
		$radplus = $radstart + $i
		if $radplus > 9
			$radplus = $radplus - 10
		endif
		$ListID = 110 + $radplus
		$i = $i + 1
		//???????
		$PlayerID = GetEctypeVar($ectype_ID,$ListID)
		if $PlayerID > 0
			//???????
			$pmapid = GetPlayerInfo( $PlayerID, "mapid")
			if $ectype_ID == $pmapid
				//????????????
				$erciyidong = GetPlayerVar($PlayerID,3552)
				if $erciyidong > 0
						//?????
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $erciyidong < 100
							$weizhi = $weizhi - $erciyidong
						else
							$erciyidong = $erciyidong - 100
							$weizhi = $weizhi + $erciyidong
						endif
						
						//??46???
						if $weizhi > 46
							$houtui = $weizhi - 46
							BC( "chat", "player", $PlayerID, "The final step number exceeds 46. You'll go back by ",$houtui, "Platforms.")
							BC( "screen", "player", $PlayerID, "The final step number exceeds 46. You'll go back by ",$houtui, "Platforms.")
							$weizhi = 46 - $houtui
						endif
						
						SetPlayerVar($PlayerID,3547,$weizhi)
						SetPlayerVar($PlayerID,3552,0)

						//????+??????
						if $weizhi == 1 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 13 , 114)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 32 , 291, 0 )
							BC( "chat", "player", $PlayerID, "1. The Origin: the Pursuit of Rapture event is starting soon!")
							BC( "screen", "player", $PlayerID, "1. The Origin: the Pursuit of Rapture event is starting soon!")
						endif
						if $weizhi == 2 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 14 , 92 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 37 , 236, 0 )
							BC( "chat", "player", $PlayerID, "2. Vault: collect treasures to get random items.")
							BC( "screen", "player", $PlayerID, "2. Vault: collect treasures to get random items.")
						endif
						if $weizhi == 3 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 4  , 65 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 10 , 116, 0 )
							BC( "chat", "player", $PlayerID, "3. Weeping Wall: if there are 5 players on this platform at the same time, they can be teleported to Platform 19 directly.")
							BC( "screen", "player", $PlayerID, "3. Weeping Wall: if there are 5 players on this platform at the same time, they can be teleported to Platform 19 directly.")
							$gezi3after = 1
						endif
						if $weizhi == 4 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 14 , 36 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 35 , 92 , 0 )
							BC( "chat", "player", $PlayerID, "4. Mermaids Bay: the first player who casts the dice can move forward.")
							BC( "screen", "player", $PlayerID, "4. Mermaids Bay: the first player who casts the dice can move forward.")
						endif
						if $weizhi == 5 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 13 , 13 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 32 , 34 , 0 )
							$erciyidong = RandomNumber ( 1, 3 )
							BC( "chat", "player", $PlayerID, "5. Black Flag: you'll move backward ",$erciyidong, "Platforms.")
							BC( "screen", "player", $PlayerID, "5. Black Flag: you'll move backward ",$erciyidong, "Platforms.")
							SetPlayerVar($PlayerID,3552,$erciyidong)
						endif
						if $weizhi == 6 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 36 , 13 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 93 , 32 , 0 )
							$erciyidong = RandomNumber ( 1, 3 )
							BC( "chat", "player", $PlayerID, "6. Safe Journey: you'll move forward ",$erciyidong, "Platforms.")
							BC( "screen", "player", $PlayerID, "6. Safe Journey: you'll move forward ",$erciyidong, "Platforms.")
							$erciyidong = $erciyidong + 100
							SetPlayerVar($PlayerID,3552,$erciyidong)
						endif
						if $weizhi == 7 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 63 , 5  )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 160, 17 , 0 )
							BC( "chat", "player", $PlayerID, "7. Naraku's Cave: No effects.")
							BC( "screen", "player", $PlayerID, "7. Naraku's Cave: No effects.")
						endif
						if $weizhi == 8 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 91 , 13 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 234, 33 , 0 )
							BC( "chat", "player", $PlayerID, "8. Seaside Cliffs: You can move forward only if you roll a 3 or less.")
							BC( "screen", "player", $PlayerID, "8. Seaside Cliffs: You can move forward only if you roll a 3 or less.")
						endif
						if $weizhi == 9 
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 116, 16 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 298, 42 , 0 )
							BC( "chat", "player", $PlayerID, "9. Gates of Hell: You are stunned by 2 turns.")
							BC( "screen", "player", $PlayerID, "9. Gates of Hell: You are stunned by 2 turns.")
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 2
								SetPlayerVar($PlayerID,3551,2)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 298, 42 , 0 )
							endif
						endif
						if $weizhi == 10
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 115, 38 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 294, 96 , 0 )
							BC( "chat", "player", $PlayerID, "10. Post House: You can move 2 more steps in the next turn.")
							BC( "screen", "player", $PlayerID, "10. Post House: You can move 2 more steps in the next turn.")
						endif
						if $weizhi == 11
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 122, 64 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 312, 165, 0 )
							BC( "chat", "player", $PlayerID, "11. Rescue Plan: If there is any player on Platform 27, then you'll be teleported there.")
							BC( "screen", "player", $PlayerID, "11. Rescue Plan: If there is any player on Platform 27, then you'll be teleported there.")
							$gezi11after = 1
						endif
						if $weizhi == 12
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 114, 92 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 291, 236, 0 )
							$itemget = RandomNumber ( 1, 100 )
							$itemid = 44544
							#itemname = "Time Bomb"
							if $itemget >= 10
								$itemid = $itemid + 1
								#itemname = "Magic Landmine"
							endif
							if $itemget >= 30
								$itemid = $itemid + 1
								#itemname = "Cursed Imp"
							endif
							if $itemget >= 60
								$itemid = $itemid + 1
								#itemname = "Thorny Wall"
							endif
							if $itemget >= 70
								$itemid = $itemid + 1
								#itemname = "Time Dice"
							endif
							if $itemget >= 75
								$itemid = $itemid + 1
								#itemname = "Swap Gadget"
							endif
							if $itemget >= 80
								$itemid = $itemid + 1
								#itemname = "Mini Chariot"
							endif
							if $itemget >= 90
								$itemid = $itemid + 1
								#itemname = "Thief's Gloves"
							endif
							if $itemget >= 95
								$itemid = $itemid + 1
								#itemname = "Magic Rocket"
							endif
							BC( "chat", "player", $PlayerID, "12. Magic Table: You get an item.",#itemname)
							BC( "screen", "player", $PlayerID, "12. Magic Table: You get an item.",#itemname)
							AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
						endif
						if $weizhi == 13
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 115, 115)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 294, 295, 0 )
							$gezi13 = GetEctypeVar($ectype_ID,99)
							if $gezi13 == 0
								SubPlayerInfo( $PlayerID, "item", 44544,1 )
								SubPlayerInfo( $PlayerID, "item", 44545,1 )
								SubPlayerInfo( $PlayerID, "item", 44546,1 )
								SubPlayerInfo( $PlayerID, "item", 44547,1 )
								SubPlayerInfo( $PlayerID, "item", 44548,1 )
								SubPlayerInfo( $PlayerID, "item", 44549,1 )
								SubPlayerInfo( $PlayerID, "item", 44550,1 )
								SubPlayerInfo( $PlayerID, "item", 44551,1 )
								SubPlayerInfo( $PlayerID, "item", 44552,1 )
								RemoveStatusByID($PlayerID, 6484)
								RemoveStatusByID($PlayerID, 6485)
								BC( "chat", "player", $PlayerID, "13. Cursed Round Table: You and the last player will lose all items and status. ")
								BC( "screen", "player", $PlayerID, "13. Cursed Round Table: You and the last player will lose all items and status. ")
								$gezi13after = 1
								SetEctypeVar($ectype_ID,99,1)
							endif
						endif
						if $weizhi == 14
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 91 , 111)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 232, 283, 0 )
							BC( "chat", "player", $PlayerID, "14. The Hanging Guy: You'll move backward on the next turn.")
							BC( "screen", "player", $PlayerID, "14. The Hanging Guy: You'll move backward on the next turn.")
						endif
						if $weizhi == 15
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 123)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 163, 315, 0 )
							BC( "chat", "player", $PlayerID, "15. Equivalent Exchange: If there is a player on Platform 31, then you will switch your locations.")
							BC( "screen", "player", $PlayerID, "15. Equivalent Exchange: If there is a player on Platform 31, then you will switch your locations.")
							$gezi15after = 1
						endif
						if $weizhi == 16
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 34 , 111)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 87 , 284, 0 )
							SubPlayerInfo( $PlayerID, "item", 44544,1 )
							SubPlayerInfo( $PlayerID, "item", 44545,1 )
							SubPlayerInfo( $PlayerID, "item", 44546,1 )
							SubPlayerInfo( $PlayerID, "item", 44547,1 )
							SubPlayerInfo( $PlayerID, "item", 44548,1 )
							SubPlayerInfo( $PlayerID, "item", 44549,1 )
							SubPlayerInfo( $PlayerID, "item", 44550,1 )
							SubPlayerInfo( $PlayerID, "item", 44551,1 )
							SubPlayerInfo( $PlayerID, "item", 44552,1 )
							RemoveStatusByID($PlayerID, 6484)
							RemoveStatusByID($PlayerID, 6485)
							AddPlayerInfo( $PlayerID, "item", 44551, 1 )
							BC( "chat", "player", $PlayerID, "16. Bandits Union: If you have lost all your items and status in the previous turns, you'll gain the Bandit's Gloves.")
							BC( "screen", "player", $PlayerID, "16. Bandits Union: If you have lost all your items and status in the previous turns, you'll gain the Bandit's Gloves.")
						endif
						if $weizhi == 17
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 30 , 98 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 77 , 252, 0 )
							BC( "chat", "player", $PlayerID, "17. Dragon Cave: You can't move until you kill the giant Dragon.")
							BC( "screen", "player", $PlayerID, "17. Dragon Cave: You can't move until you kill the giant Dragon.")
						endif
						if $weizhi == 18
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 23 , 80 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 58 , 205, 0 )
							$itemtongji1 = GetPlayerInfo( $PlayerID, "item", 44544)
							$itemtongji2 = GetPlayerInfo( $PlayerID, "item", 44545)
							$itemtongji3 = GetPlayerInfo( $PlayerID, "item", 44546)
							$itemtongji4 = GetPlayerInfo( $PlayerID, "item", 44547)
							$itemtongji5 = GetPlayerInfo( $PlayerID, "item", 44548)
							$itemtongji6 = GetPlayerInfo( $PlayerID, "item", 44549)
							$itemtongji7 = GetPlayerInfo( $PlayerID, "item", 44550)
							$itemtongji8 = GetPlayerInfo( $PlayerID, "item", 44551)
							$itemtongji9 = GetPlayerInfo( $PlayerID, "item", 44552)
							$itemtongji1 = $itemtongji1 + $itemtongji2
							$itemtongji1 = $itemtongji1 + $itemtongji3
							$itemtongji1 = $itemtongji1 + $itemtongji4
							$itemtongji1 = $itemtongji1 + $itemtongji5
							$itemtongji1 = $itemtongji1 + $itemtongji6
							$itemtongji1 = $itemtongji1 + $itemtongji7
							$itemtongji1 = $itemtongji1 + $itemtongji8
							$itemtongji1 = $itemtongji1 + $itemtongji9
							if $itemtongji1 > 0
								$itemget = RandomNumber ( 1, 100 )
								$itemid = 44544
								#itemname = "Time Bomb"
								if $itemget >= 10
									$itemid = $itemid + 1
									#itemname = "Magic Landmine"
								endif
								if $itemget >= 30
									$itemid = $itemid + 1
									#itemname = "Cursed Imp"
								endif
								if $itemget >= 60
									$itemid = $itemid + 1
									#itemname = "Thorny Wall"
								endif
								if $itemget >= 70
									$itemid = $itemid + 1
									#itemname = "Time Dice"
								endif
								if $itemget >= 75
									$itemid = $itemid + 1
									#itemname = "Swap Gadget"
								endif
								if $itemget >= 80
									$itemid = $itemid + 1
									#itemname = "Mini Chariot"
								endif
								if $itemget >= 90
									$itemid = $itemid + 1
									#itemname = "Thief's Gloves"
								endif
								if $itemget >= 95
									$itemid = $itemid + 1
									#itemname = "Magic Rocket"
								endif
								BC( "chat", "player", $PlayerID, "18. Royal Garden: If you've already obtained some items, you'll gain more: ",#itemname)
								BC( "screen", "player", $PlayerID, "18. Royal Garden: If you've already obtained some items, you'll gain more: ",#itemname)
								AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
							else
								BC( "chat", "player", $PlayerID, "18. Royal Garden: If you don't have any items, you'll be trapped for one turn.")
								BC( "screen", "player", $PlayerID, "18. Royal Garden: If you don't have any items, you'll be trapped for one turn.")
								$tingliu = GetPlayerVar($PlayerID,3551)
								if $tingliu < 1
									SetPlayerVar($PlayerID,3551,1)
									AddMonsterByFloat( 32360, 1, $ectype_ID, 58 , 205 , 0 )
								endif
							endif
						endif
						if $weizhi == 19
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 28 , 66 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 72 , 168, 0 )
							BC( "chat", "player", $PlayerID, "19. Weeping Wall: No effects.")
							BC( "screen", "player", $PlayerID, "19. Weeping Wall: No effects.")
						endif
						if $weizhi == 20
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 23 , 48 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 60 , 124, 0 )
							$gezi20 = GetEctypeVar($ectype_ID,98)
							if $gezi20 == 0
								$gezi20after = 1
								BC( "chat", "player", $PlayerID, "20. Kick Down the Ladder: Can only be activated once. All players on Platform 1-20 will be trapped for one turn.")
								BC( "screen", "player", $PlayerID, "20. Kick Down the Ladder: Can only be activated once. All players on Platform 1-20 will be trapped for one turn.")
							endif
						endif
						if $weizhi == 21
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 30 , 30 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 76 , 76 , 0 )
							AddPlayerInfo( $PlayerID, "item", 44548, 1 )
							BC( "chat", "player", $PlayerID, "21. Four Leaf Clover: You've obtained a Time Dice.")
							BC( "screen", "player", $PlayerID, "21. Four Leaf Clover: You've obtained a Time Dice.")
						endif
						if $weizhi == 22
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 47 , 23 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 120, 60 , 0 )
							$gezi22 = GetEctypeVar($ectype_ID,97)
							if $gezi22 == 0
								$gezi22after = 1
								BC( "chat", "player", $PlayerID, "22. Kick Down the Ladder: Can only be activated once. All players on Platform 1-22 will be trapped for one turn.")
								BC( "screen", "player", $PlayerID, "22. Kick Down the Ladder: Can only be activated once. All players on Platform 1-22 will be trapped for one turn.")
							endif
						endif
						if $weizhi == 23
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 63 , 29 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 160, 74 , 0 )
							$gezi23after = 1
							BC( "chat", "player", $PlayerID, "23. Naraku's Cave: You will be teleported to Platform 7 if another player is currently there.")
							BC( "screen", "player", $PlayerID, "23. Naraku's Cave: You will be teleported to Platform 7 if another player is currently there.")
						endif
						if $weizhi == 24
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 81 , 23 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 207, 58 , 0 )
							$itemget = RandomNumber ( 1, 100 )
							$itemid = 44544
							#itemname = "Time Bomb"
							if $itemget >= 10
								$itemid = $itemid + 1
								#itemname = "Magic Landmine"
							endif
							if $itemget >= 30
								$itemid = $itemid + 1
								#itemname = "Cursed Imp"
							endif
							if $itemget >= 60
								$itemid = $itemid + 1
								#itemname = "Thorny Wall"
							endif
							if $itemget >= 70
								$itemid = $itemid + 1
								#itemname = "Time Dice"
							endif
							if $itemget >= 75
								$itemid = $itemid + 1
								#itemname = "Swap Gadget"
							endif
							if $itemget >= 80
								$itemid = $itemid + 1
								#itemname = "Mini Chariot"
							endif
							if $itemget >= 90
								$itemid = $itemid + 1
								#itemname = "Thief's Gloves"
							endif
							if $itemget >= 95
								$itemid = $itemid + 1
								#itemname = "Magic Rocket"
							endif
							AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($PlayerID,3551,1)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 207, 58 , 0 )
							endif
							BC( "chat", "player", $PlayerID, "24. Tower of Ivory: You'll be trapped for one turn and get a  ",#itemname)
							BC( "screen", "player", $PlayerID, "24. Tower of Ivory: You'll be trapped for one turn and get a  ",#itemname)
						endif
						if $weizhi == 25
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 98 , 30 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 251, 77 , 0 )
							RemoveStatusByID($PlayerID, 6484)
							AddStatus( $PlayerID, 6484, 5 )
							BC( "chat", "player", $PlayerID, "25. Evan's House: A Time Bomb is bound to you.")
							BC( "screen", "player", $PlayerID, "25. Evan's House: A Time Bomb is bound to you.")
						endif
						if $weizhi == 26
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 105, 47 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 268, 120, 0 )
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($PlayerID,3551,1)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 268, 120 , 0 )
							endif
							AddPlayerInfo( $PlayerID, "item", 44547, 1 )
							BC( "chat", "player", $PlayerID, "26. Wall of Rose: You'll be trapped for one turn and get a Thorny Wall.")
							BC( "screen", "player", $PlayerID, "26. Wall of Rose: You'll be trapped for one turn and get a Thorny Wall.")
						endif
						if $weizhi == 27
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 98 , 65 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 250, 166, 0 )
							BC( "chat", "player", $PlayerID, "27. Rescue Plan: No effects.")
							BC( "screen", "player", $PlayerID, "27. Rescue Plan: No effects.")
						endif
						if $weizhi == 28
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 104, 80 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 266, 206, 0 )
							BC( "chat", "player", $PlayerID, "28. Horsepond: You can move 1 more step in the next turn.")
							BC( "screen", "player", $PlayerID, "28. Horsepond: You can move 1 more step in the next turn.")
						endif
						if $weizhi == 29
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 100, 98 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 255, 251, 0 )
							BC( "chat", "player", $PlayerID, "29. Circus Troup: You'll be forced to use a Cursed Imp immediately.")
							BC( "screen", "player", $PlayerID, "29. Circus Troup: You'll be forced to use a Cursed Imp immediately.")
							$ectype_ID = GetCurEctypeID()
							$Playerlist = GetPlayerVar($PlayerID,3553)
							$suc = RandomNumber ( 0 , 2 )
							if $suc > 0
								$weizhi = GetPlayerVar($PlayerID,3547)
								$k = 0
								while $k < 15
									$itemweizhi = 60 + $k
									$itemyou = GetEctypeVar($ectype_ID,$itemweizhi)
									if $itemyou == 0
										$itemlist = 75 + $k
										SetEctypeVar($ectype_ID,$itemweizhi,$weizhi)
										SetEctypeVar($ectype_ID,$itemlist,$Playerlist)
										BC( "chat", "player", $PlayerID, "Cursed Imp is set up successfully.")
										BC( "screen", "player", $PlayerID, "Cursed Imp is set up successfully.")
										$k = 14
									endif
									$k = $k + 1
								endwhile
							else
								$radstart = RandomNumber ( 0 , 9 )
								$l = 0
								while $l < 10
									$radplus = $radstart + $l
									if $radplus > 9
										$radplus = $radplus - 10
									endif
									$Targetlist = 110 + $radplus
									$TargetID = GetEctypeVar($ectype_ID,$Targetlist)
									$weizhi = GetPlayerVar($PlayerID,3547)
									$Targetweizhi = GetPlayerVar($TargetID,3547)
									if $weizhi == $Targetweizhi
										$tingliu = GetPlayerVar($TargetID,3551)
										if $tingliu < 1
											SetPlayerVar($TargetID,3551,1)
										endif
										#Playername = GetPlayerInfo($PlayerID, "name")
										BC( "chat", "player", $TargetID, "Player ",#Playername, " has failed to use the Cursed Imp. You'll be stunned for a full turn.")
										BC( "screen", "player", $TargetID, "Player ",#Playername, " has failed to use the Cursed Imp. You'll be stunned for a full turn.")
										$PlayerX = GetPlayerInfo(	$TargetID, "mapposx" )
										$PlayerY = GetPlayerInfo( $TargetID, "mapposy" )
										AddMonsterByFloat( 32357, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
									endif
									$l = $l + 1
								endwhile
							endif
						endif
						if $weizhi == 30
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 81 , 105)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 208, 268, 0 )
							$gezi30 = GetEctypeVar($ectype_ID,96)
							if $gezi30 == 0
								SubPlayerInfo( $PlayerID, "item", 44544,1 )
								SubPlayerInfo( $PlayerID, "item", 44545,1 )
								SubPlayerInfo( $PlayerID, "item", 44546,1 )
								SubPlayerInfo( $PlayerID, "item", 44547,1 )
								SubPlayerInfo( $PlayerID, "item", 44548,1 )
								SubPlayerInfo( $PlayerID, "item", 44549,1 )
								SubPlayerInfo( $PlayerID, "item", 44550,1 )
								SubPlayerInfo( $PlayerID, "item", 44551,1 )
								SubPlayerInfo( $PlayerID, "item", 44552,1 )
								RemoveStatusByID($PlayerID, 6484)
								RemoveStatusByID($PlayerID, 6485)
								BC( "chat", "player", $PlayerID, "30. Giants Slaughter: You and the first player will lose all items and status.")
								BC( "screen", "player", $PlayerID, "30. Giants Slaughter: You and the first player will lose all items and status.")
								$gezi30after = 1
								SetEctypeVar($ectype_ID,96,1)
							endif
						endif
						if $weizhi == 31
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 107)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 163, 273, 0 )
							BC( "chat", "player", $PlayerID, "31. Equivalent Exchange: If there is a player on Platform 15, then you will switch your locations.")
							BC( "screen", "player", $PlayerID, "31. Equivalent Exchange: If there is a player on Platform 15, then you will switch your locations.")
							$gezi31after = 1
						endif
						if $weizhi == 32
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 47 , 105)
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 120, 268, 0 )
							$k = 0
							while $k < 10
								$itemget = RandomNumber ( 1, 100 )
								$itemid = 44544
								#itemname = "Time Bomb"
								if $itemget >= 10
									$itemid = $itemid + 1
									#itemname = "Magic Landmine"
								endif
								if $itemget >= 30
									$itemid = $itemid + 1
									#itemname = "Cursed Imp"
								endif
								if $itemget >= 60
									$itemid = $itemid + 1
									#itemname = "Thorny Wall"
								endif
								if $itemget >= 70
									$itemid = $itemid + 1
									#itemname = "Time Dice"
								endif
								if $itemget >= 75
									$itemid = $itemid + 1
									#itemname = "Swap Gadget"
								endif
								if $itemget >= 80
									$itemid = $itemid + 1
									#itemname = "Mini Chariot"
								endif
								if $itemget >= 90
									$itemid = $itemid + 1
									#itemname = "Thief's Gloves"
								endif
								if $itemget >= 95
									$itemid = $itemid + 1
									#itemname = "Magic Rocket"
								endif
								$Xmasgift = $k + 110
								$Xmasgiftid = GetEctypeVar($ectype_ID,$Xmasgift)
								if $Xmasgiftid > 0
									AddPlayerInfo( $Xmasgiftid, "item", $itemid, 1 )
									#Xmasgiftname = GetPlayerInfo($Xmasgiftid, "name")
									#Playername = GetPlayerInfo($PlayerID, "name")
									BC( "chat", "player", $Xmasgiftid, "Player ",#Playername, " sent you a Christmas gift:",#itemname)
									BC( "screen", "player", $Xmasgiftid, "Player ",#Playername, " sent you a Christmas gift:",#itemname)
									BC( "chat", "player", $PlayerID, "32. Santa Claus: You give player ",#Xmasgiftname, ", a Christmas gift.",#itemname)
									BC( "screen", "player", $PlayerID, "32. Santa Claus: You give player ",#Xmasgiftname, ", a Christmas gift.",#itemname)
								endif
								$k = $k + 1
							endwhile
						endif
						if $weizhi == 33
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 42 , 89 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 107, 227, 0 )
							RemoveStatusByID($PlayerID, 6485)
							AddStatus( $PlayerID, 6485, 3 )
							BC( "chat", "player", $PlayerID, "33. Mini Chariot: You gain the Mini Chariot status.")
							BC( "screen", "player", $PlayerID, "33. Mini Chariot: You gain the Mini Chariot status.")
						endif
						if $weizhi == 34
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 39 , 38 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 99 , 96 , 0 )
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($PlayerID,3551,1)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 99 , 96 , 0 )
							endif
							BC( "chat", "player", $PlayerID, "34. Nepenthes: You'll be stunned for a full turn.")
							BC( "screen", "player", $PlayerID, "34. Nepenthes: You'll be stunned for a full turn.")
						endif
						if $weizhi == 35
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 89 , 38 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 229, 96 , 0 )
							SubPlayerInfo( $PlayerID, "item", 44544,1 )
							SubPlayerInfo( $PlayerID, "item", 44545,1 )
							SubPlayerInfo( $PlayerID, "item", 44546,1 )
							SubPlayerInfo( $PlayerID, "item", 44547,1 )
							SubPlayerInfo( $PlayerID, "item", 44548,1 )
							SubPlayerInfo( $PlayerID, "item", 44549,1 )
							SubPlayerInfo( $PlayerID, "item", 44550,1 )
							SubPlayerInfo( $PlayerID, "item", 44551,1 )
							SubPlayerInfo( $PlayerID, "item", 44552,1 )
							RemoveStatusByID($PlayerID, 6484)
							RemoveStatusByID($PlayerID, 6485)
							BC( "chat", "player", $PlayerID, "35. Magic Defense: You'll lose all your items and status.")
							BC( "screen", "player", $PlayerID, "35. Magic Defense: You'll lose all your items and status.")
						endif
						if $weizhi == 36
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 85 , 87 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 227, 232, 0 )
							OpenNpcDialog($PlayerID ,2345)
							BC( "chat", "player", $PlayerID, "36. Ammunition Depot: The Magic Landmine you set has been activated.")
							BC( "screen", "player", $PlayerID, "36. Ammunition Depot: The Magic Landmine you set has been activated.")
						endif
						if $weizhi == 37
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 63 , 93 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 161, 237, 0 )
							BC( "chat", "player", $PlayerID, "37. King's Treasure House: Collect treasure to earn random items.")
							BC( "screen", "player", $PlayerID, "37. King's Treasure House: Collect treasure to earn random items.")
						endif
						if $weizhi == 38
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 46 , 77 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 117, 197, 0 )
							BC( "chat", "player", $PlayerID, "38. Rebound Barrier: No effects.")
							BC( "screen", "player", $PlayerID, "38. Rebound Barrier: No effects.")
						endif
						if $weizhi == 39
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 50 , 64 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 128, 165, 0 )
							BC( "chat", "player", $PlayerID, "39. Wasteland: You'll move 2 less steps in the next turn.")
							BC( "screen", "player", $PlayerID, "39. Wasteland: You'll move 2 less steps in the next turn.")
						endif
						if $weizhi == 40
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 49 , 49 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 132, 132, 0 )
							$xiaochourad = RandomNumber ( 0, 1 )
							if $itemtongji1 == 0
								$itemget = RandomNumber ( 1, 100 )
								$itemid = 44544
								#itemname = "Time Bomb"
								if $itemget >= 10
									$itemid = $itemid + 1
									#itemname = "Magic Landmine"
								endif
								if $itemget >= 30
									$itemid = $itemid + 1
									#itemname = "Cursed Imp"
								endif
								if $itemget >= 60
									$itemid = $itemid + 1
									#itemname = "Thorny Wall"
								endif
								if $itemget >= 70
									$itemid = $itemid + 1
									#itemname = "Time Dice"
								endif
								if $itemget >= 75
									$itemid = $itemid + 1
									#itemname = "Swap Gadget"
								endif
								if $itemget >= 80
									$itemid = $itemid + 1
									#itemname = "Mini Chariot"
								endif
								if $itemget >= 90
									$itemid = $itemid + 1
									#itemname = "Thief's Gloves"
								endif
								if $itemget >= 95
									$itemid = $itemid + 1
									#itemname = "Magic Rocket"
								endif
								BC( "chat", "player", $PlayerID, "40. Clown Box: You get the item:",#itemname)
								BC( "screen", "player", $PlayerID, "40. Clown Box: You get the item:",#itemname)
								AddPlayerInfo( $PlayerID, "item", $itemid, 1 )
							else
								BC( "chat", "player", $PlayerID, "40. Clown Box: You'll be stunned for 1 turn.")
								BC( "screen", "player", $PlayerID, "40. Clown Box: You'll be stunned for 1 turn.")
								$tingliu = GetPlayerVar($PlayerID,3551)
								if $tingliu < 1
									SetPlayerVar($PlayerID,3551,1)
									AddMonsterByFloat( 32360, 1, $ectype_ID, 132, 132 , 0 )
								endif
							endif
						endif
						if $weizhi == 41
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 52 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 164, 133, 0 )
							BC( "chat", "player", $PlayerID, "41. Victory Banner:You'll move 3 more steps in the next turn.")
							BC( "screen", "player", $PlayerID, "41. Victory Banner:You'll move 3 more steps in the next turn.")
						endif
						if $weizhi == 42
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 78 , 51 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 200, 131, 0 )
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 3
								SetPlayerVar($PlayerID,3551,3)
								AddMonsterByFloat( 32360, 1, $ectype_ID, 200, 131 , 0 )
							endif
							BC( "chat", "player", $PlayerID, "42. Bear Trap: You'll be stunned for 3 turns.")
							BC( "screen", "player", $PlayerID, "42. Bear Trap: You'll be stunned for 3 turns.")
						endif
						if $weizhi == 43
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 78 , 64 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 200, 164, 0 )
							BC( "chat", "player", $PlayerID, "43. Death Swamp: Only if you have rolled a 4 or more, you can keep moving.")
							BC( "screen", "player", $PlayerID, "43. Death Swamp: Only if you have rolled a 4 or more, you can keep moving.")
						endif
						if $weizhi == 44
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 76 , 76 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 194, 195, 0 )
							BC( "chat", "player", $PlayerID, "44. Altar: You'll switch locations with a random player.")
							BC( "screen", "player", $PlayerID, "44. Altar: You'll switch locations with a random player.")
							$gezi44after = 1
						endif
						if $weizhi == 45
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 78 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 163, 200, 0 )
							BC( "chat", "player", $PlayerID, "45. Last Step: No effects.")
							BC( "screen", "player", $PlayerID, "45. Last Step: No effects.")
						endif
						if $weizhi == 46
							$ectype_ID = GetEctypeID($PlayerID ,568)	
							FlyToMap( $PlayerID, $ectype_ID, 64 , 66 )
							$Playerxuhao = GetPlayerVar($PlayerID,3553)
							$baomuMid = $Playerxuhao + 32328
							AddMonsterByFloat( $baomuMid, 1, $ectype_ID, 164, 170, 0 )
							BC( "chat", "player", $PlayerID, "46. Heart of Spiral: Congratulations! You've finished the challenge! Come and get your treasure chest now!")
							BC( "screen", "player", $PlayerID, "46. Heart of Spiral: Congratulations! You've finished the challenge! Come and get your treasure chest now!")
						endif
					endif
				endif
			else
			//????????ID
				SetEctypeVar($ectype_ID,$ListID,0)
			endif
		endif
	endwhile
	//?????(????)
	if $gezi3after == 1
		$tanxileijia = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 3
					$tanxileijia = $tanxileijia + 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $tanxileijia >= 5
			$l = 0
			while $l < 10	
				$ListID = 110 + $l
				$PlayerID = GetEctypeVar($ectype_ID,$ListID)
				if $PlayerID > 0
					$weizhi = GetPlayerVar($PlayerID,3547)
					if $weizhi == 3
						SetPlayerVar($PlayerID,3547,19)
						BC( "chat", "player", $PlayerID, "There are 5 players already. You'll be teleported to Platform 19!")
						BC( "screen", "player", $PlayerID, "There are 5 players already. You'll be teleported to Platform 19!")
					endif
				endif
				$l = $l + 1
			endwhile
		endif
	endif
	if $gezi11after == 1
		$jiuyuan1 = 0
		$jiuyuan2 = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 11
					$jiuyuan1 = 1
				endif
				if $weizhi == 27
					$jiuyuan2 = 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $jiuyuan1 == 1
			if $jiuyuan2 == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == 11
							SetPlayerVar($PlayerID,3547,27)
							BC( "chat", "player", $PlayerID, "You're teleported to Platform 27 by the Rescue Plan activated by the player on that platform.")
							BC( "screen", "player", $PlayerID, "You're teleported to Platform 27 by the Rescue Plan activated by the player on that platform.")
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
	endif
	if $gezi13after == 1
		$weizhicach = 255
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi < $weizhicach 
					$weizhicach = $weizhi
				endif
			endif
			$l = $l + 1
		endwhile
		if $weizhicach > 0
			$l = 0
			while $l < 10	
				$ListID = 110 + $l
				$PlayerID = GetEctypeVar($ectype_ID,$ListID)
				if $PlayerID > 0
					$weizhi = GetPlayerVar($PlayerID,3547)
					if $weizhi == $weizhicach
						SubPlayerInfo( $PlayerID, "item", 44544,1 )
						SubPlayerInfo( $PlayerID, "item", 44545,1 )
						SubPlayerInfo( $PlayerID, "item", 44546,1 )
						SubPlayerInfo( $PlayerID, "item", 44547,1 )
						SubPlayerInfo( $PlayerID, "item", 44548,1 )
						SubPlayerInfo( $PlayerID, "item", 44549,1 )
						SubPlayerInfo( $PlayerID, "item", 44550,1 )
						SubPlayerInfo( $PlayerID, "item", 44551,1 )
						SubPlayerInfo( $PlayerID, "item", 44552,1 )
						RemoveStatusByID($PlayerID, 6484)
						RemoveStatusByID($PlayerID, 6485)
						$tingliu = GetPlayerVar($PlayerID,3551)
						if $tingliu < 1
							SetPlayerVar($PlayerID,3551,1)
							$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
							$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
							AddMonsterByFloat( 32360, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
						endif
						BC( "chat", "player", $PlayerID, "Since you ranked last, you'll lose all your items and status, and be stunned for one turn. ")
						BC( "screen", "player", $PlayerID, "Since you ranked last, you'll lose all your items and status, and be stunned for one turn. ")
					endif
				endif
				$l = $l + 1
			endwhile
		endif
	endif
	if $gezi15after == 1
		$jiaohuan1 = 0
		$jiaohuan2 = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 15
					$jiaohuan1 = 1
				endif
				if $weizhi == 31
					$jiaohuan2 = 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $jiaohuan1 == 1
			if $jiaohuan2 == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == 15
							SetPlayerVar($PlayerID,3547,31)
							BC( "chat", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 31.")
							BC( "screen", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 31.")
						endif
						if $weizhi == 31
							SetPlayerVar($PlayerID,3547,15)
							BC( "chat", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 15.")
							BC( "screen", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 15.")
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
	endif
	if $gezi20after == 1
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi < 20
					$tingliu = GetPlayerVar($PlayerID,3551)
					if $tingliu < 1
						SetPlayerVar($PlayerID,3551,1)
						$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
						$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
						AddMonsterByFloat( 32360, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
					endif
					BC( "chat", "player", $PlayerID, "Affected by Kick Down the Ladder, you'll be stunned for one turn!")
					BC( "screen", "player", $PlayerID, "Affected by Kick Down the Ladder, you'll be stunned for one turn!")
				endif
			endif
			$l = $l + 1
		endwhile
	endif
	if $gezi22after == 1
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi > 22
					$tingliu = GetPlayerVar($PlayerID,3551)
					if $tingliu < 1
						SetPlayerVar($PlayerID,3551,1)
						$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
						$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
						AddMonsterByFloat( 32360, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
					endif
					BC( "chat", "player", $PlayerID, "Affected by Kick Down the Ladder, you'll be stunned for one turn!")
					BC( "screen", "player", $PlayerID, "Affected by Kick Down the Ladder, you'll be stunned for one turn!")
				endif
			endif
			$l = $l + 1
		endwhile
	endif
	if $gezi23after == 1
		$nailuo1 = 0
		$nailuo2 = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 23
					$nailuo1 = 1
				endif
				if $weizhi == 7
					$nailuo2 = 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $nailuo1 == 1
			if $nailuo2 == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == 23
							SetPlayerVar($PlayerID,3547,7)
							BC( "chat", "player", $PlayerID, "The player on Platform 7 activated the Naraku House. You'll be teleported back to Platform 7!")
							BC( "screen", "player", $PlayerID, "The player on Platform 7 activated the Naraku House. You'll be teleported back to Platform 7!")
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
	endif
	if $gezi30after == 1
		$weizhicach = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi > $weizhicach 
					$weizhicach = $weizhi
				endif
			endif
			$l = $l + 1
		endwhile
		if $weizhicach > 0
			$l = 0
			while $l < 10	
				$ListID = 110 + $l
				$PlayerID = GetEctypeVar($ectype_ID,$ListID)
				if $PlayerID > 0
					$weizhi = GetPlayerVar($PlayerID,3547)
					if $weizhi == $weizhicach
						SubPlayerInfo( $PlayerID, "item", 44544,1 )
						SubPlayerInfo( $PlayerID, "item", 44545,1 )
						SubPlayerInfo( $PlayerID, "item", 44546,1 )
						SubPlayerInfo( $PlayerID, "item", 44547,1 )
						SubPlayerInfo( $PlayerID, "item", 44548,1 )
						SubPlayerInfo( $PlayerID, "item", 44549,1 )
						SubPlayerInfo( $PlayerID, "item", 44550,1 )
						SubPlayerInfo( $PlayerID, "item", 44551,1 )
						SubPlayerInfo( $PlayerID, "item", 44552,1 )
						RemoveStatusByID($PlayerID, 6484)
						RemoveStatusByID($PlayerID, 6485)
						$tingliu = GetPlayerVar($PlayerID,3551)
						if $tingliu < 1
							SetPlayerVar($PlayerID,3551,1)
							$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
							$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
							AddMonsterByFloat( 32360, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
						endif
						BC( "chat", "player", $PlayerID, "Since you ranked top 1, affected by the Giant Slaughter, you'll lose all your items and status, and be stunned for one turn.")
						BC( "screen", "player", $PlayerID, "Since you ranked top 1, affected by the Giant Slaughter, you'll lose all your items and status, and be stunned for one turn.")
					endif
				endif
				$l = $l + 1
			endwhile
		endif
	endif
	if $gezi31after == 1
		$jiaohuan1 = 0
		$jiaohuan2 = 0
		$l = 0
		while $l < 10	
			$ListID = 110 + $l
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 15
					$jiaohuan1 = 1
				endif
				if $weizhi == 31
					$jiaohuan2 = 1
				endif
			endif
			$l = $l + 1
		endwhile
		if $jiaohuan1 == 1
			if $jiaohuan2 == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == 15
							SetPlayerVar($PlayerID,3547,31)
							BC( "chat", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 31.")
							BC( "screen", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 31.")
						endif
						if $weizhi == 31
							SetPlayerVar($PlayerID,3547,15)
							BC( "chat", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 15.")
							BC( "screen", "player", $PlayerID, "Affected by Equivalent Exchange, you'll switch your location with the player on Platform 15.")
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
	endif
	if $gezi44after == 1
		$radstart = RandomNumber ( 0 , 9 )
		$l = 1
		while $l < 11
			$radplus = $radstart + $l
			if $radplus > 10
				$radplus = $radplus - 10
			endif
			$ListID = 109 + $radplus
			$PlayerID = GetEctypeVar($ectype_ID,$ListID)
			if $PlayerID > 0
				$weizhi = GetPlayerVar($PlayerID,3547)
				if $weizhi == 44
					$radjiaohuan = RandomNumber ( 1 , $l )
					$radplus1 = $radstart + $radjiaohuan
					if $radplus1 > 10
						$radplus1 = $radplus1 - 10
					endif
					$Targetlist = 109 + $radplus1
					$TargetID = GetEctypeVar($ectype_ID,$Targetlist)
					if $TargetID > 0
						$Targetweizhi = GetPlayerVar($TargetID,3547)
						SetPlayerVar($PlayerID,3547,$Targetweizhi)
						SetPlayerVar($TargetID,3547,44)
						#Targetname = GetPlayerInfo($TargetID, "name")
						#Playername = GetPlayerInfo($PlayerID, "name")
						BC( "chat", "player", $TargetID, "Affected by Altar, you'll exchange your location with player ",#Playername, ", and be teleported to Platform 44.")
						BC( "screen", "player", $TargetID, "Affected by Altar, you'll exchange your location with player ",#Playername, ", and be teleported to Platform 44.")
						BC( "chat", "player", $PlayerID, "Affected by Altar, you'll exchange your location with player ",#Targetname, ", and be teleported to Platform ",$Targetweizhi, ".")
						BC( "screen", "player", $PlayerID, "Affected by Altar, you'll exchange your location with player ",#Targetname, ", and be teleported to Platform ",$Targetweizhi, ".")
						$PlayerX = GetPlayerInfo(	$TargetID, "mapx" )
						$PlayerY = GetPlayerInfo( $TargetID, "mapy" )
						$PlayerX2 = GetPlayerInfo( $PlayerID, "mapx" )
						$PlayerY2 = GetPlayerInfo( $PlayerID, "mapy" )
						FlyToMap($TargetID, $ectype_ID, $PlayerX2, $PlayerX2)
						FlyToMap($PlayerID, $ectype_ID, $PlayerX, $PlayerY)
					else
						$l = $l - 1
					endif
				endif
			endif
			$l = $l + 1
		endwhile
	endif
	//??
	$j = 0
	while $j < 15
		$diercidilei = 0
		$dileilist = $j + 30
		$dileiweizhi = GetEctypeVar($ectype_ID,$dileilist)
		if $dileiweizhi > 0
			$l = 0
			while $l < 10	
				$ListID = 110 + $l
				$PlayerID = GetEctypeVar($ectype_ID,$ListID)
				if $PlayerID > 0
					$weizhi = GetPlayerVar($PlayerID,3547)
					if $weizhi == $dileiweizhi
						$tingliu = GetPlayerVar($PlayerID,3551)
						if $tingliu < 1
							SetPlayerVar($PlayerID,3551,1)
						endif
						$dileiidlist = $j + 45
						$dileixuhao = GetEctypeVar($ectype_ID,$dileiidlist)
						$dileiid = GetEctypeVar($ectype_ID,$dileixuhao)
						#dileiname = GetPlayerInfo($dileiid, "name")
						#Playername = GetPlayerInfo($PlayerID, "name")
						BC( "chat", "player", $dileiid, "The wall of thorns has placed you on Platform ",$dileiweizhi, " was activated. Player ",#Playername, " will be stunned for one turn.")
						BC( "screen", "player", $dileiid, "The wall of thorns has placed you on Platform ",$dileiweizhi, " was activated. Player ",#Playername, " will be stunned for one turn.")
						BC( "chat", "player", $PlayerID, "You are trapped ",#dileiname, ", by the wall of thorns on Platform ",$dileiweizhi, ". And you'll be stunned for one turn.")
						BC( "screen", "player", $PlayerID, "You are trapped ",#dileiname, ", by the wall of thorns on Platform ",$dileiweizhi, ". And you'll be stunned for one turn.")
						$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
						$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
						AddMonsterByFloat( 32356, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
						SetEctypeVar($ectype_ID,$dileilist,0)
						SetEctypeVar($ectype_ID,$dileiidlist,0)
					endif
				endif
				$l = $l + 1
			endwhile
			if $dileiweizhi == 3
				$dileiweizhi = 19
				$diercidilei = 1
			else
				if $dileiweizhi == 19
					$dileiweizhi = 3
					$diercidilei = 1
				endif
			endif
			if $dileiweizhi == 7
				$dileiweizhi = 24
				$diercidilei = 1
			else
				if $dileiweizhi == 24
					$dileiweizhi = 7
					$diercidilei = 1
				endif
			endif
			if $dileiweizhi == 11
				$dileiweizhi = 27
				$diercidilei = 1
			else
				if $dileiweizhi == 27
					$dileiweizhi = 11
					$diercidilei = 1
				endif
			endif
			if $dileiweizhi == 15
				$dileiweizhi = 31
				$diercidilei = 1
			else
				if $dileiweizhi == 15
					$dileiweizhi = 31
					$diercidilei = 1
				endif
			endif
			if $diercidilei == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == $dileiweizhi
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($PlayerID,3551,1)
							endif
							$dileiidlist = $j + 45
							$dileixuhao = GetEctypeVar($ectype_ID,$dileiidlist)
							$dileiid = GetEctypeVar($ectype_ID,$dileixuhao)
							#dileiname = GetPlayerInfo($dileiid, "name")
							#Playername = GetPlayerInfo($PlayerID, "name")
							BC( "chat", "player", $dileiid, "The wall of thorns has placed you on Platform ",$dileiweizhi, " was activated. Player ",#Playername, " will be stunned for one turn.")
							BC( "screen", "player", $dileiid, "The wall of thorns has placed you on Platform ",$dileiweizhi, " was activated. Player ",#Playername, " will be stunned for one turn.")
							BC( "chat", "player", $PlayerID, "You are trapped ",#dileiname, ", by the wall of thorns on Platform ",$dileiweizhi, ". And you'll be stunned for one turn.")
							BC( "screen", "player", $PlayerID, "You are trapped ",#dileiname, ", by the wall of thorns on Platform ",$dileiweizhi, ". And you'll be stunned for one turn.")
							$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
							$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
							AddMonsterByFloat( 32356, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
							SetEctypeVar($ectype_ID,$dileilist,0)
							SetEctypeVar($ectype_ID,$dileiidlist,0)
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
		$j = $j + 1
	endwhile
	//??
	$j = 0
	while $j < 15
		$diercixiaochou = 0
		$xiaochoulist = $j + 60
		$xiaochouweizhi = GetEctypeVar($ectype_ID,$xiaochoulist)
		if $xiaochouweizhi > 0
			$l = 0
			while $l < 10	
				$ListID = 110 + $l
				$PlayerID = GetEctypeVar($ectype_ID,$ListID)
				if $PlayerID > 0
					$weizhi = GetPlayerVar($PlayerID,3547)
					if $weizhi == $xiaochouweizhi
						$tingliu = GetPlayerVar($PlayerID,3551)
						if $tingliu < 1
							SetPlayerVar($PlayerID,3551,1)
						endif
						$xiaochouidlist = $j + 75
						$xiaochouxuhao = GetEctypeVar($ectype_ID,$xiaochouidlist)
						$xiaochouid = GetEctypeVar($ectype_ID,$xiaochouxuhao)
						#xiaochouname = GetPlayerInfo($xiaochouid, "name")
						#Playername = GetPlayerInfo($PlayerID, "name")
						BC( "chat", "player", $xiaochouid, "The wall of thorns has placed you on Platform ",$xiaochouweizhi, " was activated. Player ",#Playername, " will be stunned for one turn.")
						BC( "screen", "player", $xiaochouid, "The wall of thorns has placed you on Platform ",$xiaochouweizhi, " was activated. Player ",#Playername, " will be stunned for one turn.")
						BC( "chat", "player", $PlayerID, "You are trapped ",#xiaochouname, ". And you will be stunned for one turn.")
						BC( "screen", "player", $PlayerID, "You are trapped ",#xiaochouname, ". And you will be stunned for one turn.")
						$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
						$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
						AddMonsterByFloat( 32357, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
						SetEctypeVar($ectype_ID,$xiaochoulist,0)
						SetEctypeVar($ectype_ID,$xiaochouidlist,0)
					endif
				endif
				$l = $l + 1
			endwhile
			if $xiaochouweizhi == 3
				$xiaochouweizhi = 19
				$diercixiaochou = 1
			else
				if $xiaochouweizhi == 19
					$xiaochouweizhi = 3
					$diercixiaochou = 1
				endif
			endif
			if $xiaochouweizhi == 7
				$xiaochouweizhi = 24
				$diercixiaochou = 1
			else
				if $xiaochouweizhi == 24
					$xiaochouweizhi = 7
					$diercixiaochou = 1
				endif
			endif
			if $xiaochouweizhi == 11
				$xiaochouweizhi = 27
				$diercixiaochou = 1
			else
				if $xiaochouweizhi == 27
					$xiaochouweizhi = 11
					$diercixiaochou = 1
				endif
			endif
			if $xiaochouweizhi == 15
				$xiaochouweizhi = 31
				$diercixiaochou = 1
			else
				if $xiaochouweizhi == 15
					$xiaochouweizhi = 31
					$diercixiaochou = 1
				endif
			endif
			if $diercixiaochou == 1
				$l = 0
				while $l < 10	
					$ListID = 110 + $l
					$PlayerID = GetEctypeVar($ectype_ID,$ListID)
					if $PlayerID > 0
						$weizhi = GetPlayerVar($PlayerID,3547)
						if $weizhi == $xiaochouweizhi
							$tingliu = GetPlayerVar($PlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($PlayerID,3551,1)
							endif
							$xiaochouidlist = $j + 75
							$xiaochouxuhao = GetEctypeVar($ectype_ID,$xiaochouidlist)
							$xiaochouid = GetEctypeVar($ectype_ID,$xiaochouxuhao)
							#xiaochouname = GetPlayerInfo($xiaochouid, "name")
							#Playername = GetPlayerInfo($PlayerID, "name")
							BC( "chat", "player", $xiaochouid, "The wall of thorns has placed you on Platform ",$xiaochouweizhi, " was activated. Player ",#Playername, " will be stunned for one turn.")
							BC( "screen", "player", $xiaochouid, "The wall of thorns has placed you on Platform ",$xiaochouweizhi, " was activated. Player ",#Playername, " will be stunned for one turn.")
							BC( "chat", "player", $PlayerID, "You are trapped ",#xiaochouname, ". And you will be stunned for one turn.")
							BC( "screen", "player", $PlayerID, "You are trapped ",#xiaochouname, ". And you will be stunned for one turn.")
							$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
							$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
							AddMonsterByFloat( 32357, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
							SetEctypeVar($ectype_ID,$xiaochoulist,0)
							SetEctypeVar($ectype_ID,$xiaochouidlist,0)
						endif
					endif
					$l = $l + 1
				endwhile
			endif
		endif
		$j = $j + 1
	endwhile
	//??
	$l = 0
	while $l < 10	
		$ListID = 110 + $l
		$PlayerID = GetEctypeVar($ectype_ID,$ListID)
		if $PlayerID > 0
			$iszhadan = IsExistStatus($PlayerID , 6484)
			if $iszhadan == 0
				$lvzhadan = GetStatusLevel($PlayerID,6484)
				$k = 0
				$radstart = RandomNumber ( 0 , 9 )
				while $k < 10	
					$radplus = $radstart + $k
					if $radplus > 9
						$radplus = $radplus - 10
					endif
					$TListID = 110 + $radplus
					$TPlayerID = GetEctypeVar($ectype_ID,$ListID)
					$weizhi = GetPlayerVar($PlayerID,3547)
					$Tweizhi = GetPlayerVar($TPlayerID,3547)
					if $weizhi == $Tweizhi
						$Tiszhadan = IsExistStatus($TPlayerID , 6484)
						if $Tiszhadan != 0
							RemoveStatusByID($PlayerID, 6484)
							AddStatus( $TPlayerID, 6484, $lvzhadan )
							#TPlayername = GetPlayerInfo($xiaochouid, "name")
							#Playername = GetPlayerInfo($PlayerID, "name")
							BC( "chat", "player", $TPlayerID, "Player ",#Playername, " passed on the Time Bomb to you.")
							BC( "screen", "player", $TPlayerID, "Player ",#Playername, " passed on the Time Bomb to you.")
							BC( "chat", "player", $PlayerID, "You passed on the Time Bomb to player  ",#TPlayername)
							BC( "screen", "player", $PlayerID, "You passed on the Time Bomb to player  ",#TPlayername)
							$k = 9
						endif
					endif
					$k = $k + 1
				endwhile
			endif
		endif
		$l = $l + 1
	endwhile
	//??
	$l = 0
	while $l < 10	
		$ListID = 110 + $l
		$PlayerID = GetEctypeVar($ectype_ID,$ListID)
		if $PlayerID > 0
			$iszhanche = IsExistStatus($PlayerID , 6485)
			if $iszhanche == 0
				$k = 0
				while $k < 10	
					$TListID = 110 + $k
					$TPlayerID = GetEctypeVar($ectype_ID,$ListID)
					$weizhi = GetPlayerVar($PlayerID,3547)
					$Tweizhi = GetPlayerVar($TPlayerID,3547)
					if $weizhi == $Tweizhi
						$Tiszhanche = IsExistStatus($TPlayerID , 6485)
						if $Tiszhanche != 0
							$tingliu = GetPlayerVar($TPlayerID,3551)
							if $tingliu < 1
								SetPlayerVar($TPlayerID,3551,1)
							endif
							#TPlayername = GetPlayerInfo($xiaochouid, "name")
							#Playername = GetPlayerInfo($PlayerID, "name")
							BC( "chat", "player", $TPlayerID, "Player ",#Playername, "'s Mini Chariot shocked you. You'll be stunned for one turn.")
							BC( "screen", "player", $TPlayerID, "Player ",#Playername, "'s Mini Chariot shocked you. You'll be stunned for one turn.")
							BC( "chat", "player", $PlayerID, "Your Mini Chariot shocked player ",#TPlayername,". They will be stunned for one turn.")
							BC( "screen", "player", $PlayerID, "Your Mini Chariot shocked player ",#TPlayername,". They will be stunned for one turn.")
							$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
							$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
							AddMonsterByFloat( 32358, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
						endif
					endif
					$k = $k + 1
				endwhile
			endif
		endif
		$l = $l + 1
	endwhile
	//??buff,??????
	$l = 0
	while $l < 10	
		$ListID = 110 + $l
		$PlayerID = GetEctypeVar($ectype_ID,$ListID)
		if $PlayerID > 0
			$iszhadan = IsExistStatus($PlayerID , 6484)
			if $iszhadan == 0
				$lvzhadan = GetStatusLevel($PlayerID,6484)
				$lvzhadan = $lvzhadan - 1
				if $lvzhadan == 0
					RemoveStatusByID($PlayerID, 6484)
					$tingliu = GetPlayerVar($PlayerID,3551)
					if $tingliu < 1
						SetPlayerVar($PlayerID,3551,1)
					endif
					BC( "chat", "player", $PlayerID, "The Time Bomb on your body exploded! You'll be stunned for one turn.")
					BC( "screen", "player", $PlayerID, "The Time Bomb on your body exploded! You'll be stunned for one turn.")
					$PlayerX = GetPlayerInfo(	$PlayerID, "mapposx" )
					$PlayerY = GetPlayerInfo( $PlayerID, "mapposy" )
					AddMonsterByFloat( 32356, 1,$ectype_ID, $PlayerX, $PlayerY, 0 )
				endif
				if $lvzhadan > 0
					RemoveStatusByID($PlayerID, 6484)
					AddStatus( $PlayerID, 6484, $lvzhadan )
				endif
			endif
			$iszhanche = IsExistStatus($PlayerID , 6485)
			if $iszhanche == 0
				$lvzhanche = GetStatusLevel($PlayerID,6485)
				$lvzhanche = $lvzhanche - 1
				if $lvzhanche == 0
					RemoveStatusByID($PlayerID, 6485)
				endif
				if $lvzhanche > 0
					RemoveStatusByID($PlayerID, 6485)
					AddStatus( $PlayerID, 6485, $lvzhanche )
				endif
			endif
			$tingliu = GetPlayerVar($PlayerID,3551)
			if $tingliu > 0
				RemoveStatusByID($PlayerID, 6483)
				AddStatus( $PlayerID, 6483, $tingliu )
			endif
			if $tingliu == 0
				RemoveStatusByID($PlayerID, 6483)
			endif
			$houtui = GetPlayerVar($PlayerID,3552)
			if $houtui > 0
				if $houtui < 100
					RemoveStatusByID($PlayerID, 6486)
					AddStatus( $PlayerID, 6486, $houtui )
				endif
			endif
			if $houtui == 0
				RemoveStatusByID($PlayerID, 6486)
			endif
		endif
		$l = $l + 1
	endwhile
	StartEctypeTimer ($ectype_ID,1)
}
	
function EctypeTime3(){
	
	$ectype_ID = GetCurEctypeID()
	StartEctypeTimer ($ectype_ID,1)
	SetEctypeVar($ectype_ID,90,1)
}
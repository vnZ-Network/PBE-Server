	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-07
	//		Author:???
	//		TaskName:??-?? ???
	//		TaskID:mapid = 479
	//
	//****************************************

	function OnCreate(){



	}

	function InitTimer(){

		$ectype_id = GetEctypeID( -1 , 479 )
		//???
		SetEctypeTimer( 1 , 1 , "EctypeTime1" )

		SetEctypeTimer( 8 , 10 , "EctypeTime8" )
		SetEctypeTimer( 9 , 1 , "EctypeTime9" )


	}

	function EctypeTime1(){

		$ectype_id = GetEctypeID( -1 , 479 )
		$choice = GetEctypeVar($ectype_id,0)
//		BC( "screen" , "map" , $ectype_id , "GUID:04016000000" , $ectype_id )

		if $choice == 4
			AddMonsterByFloat( 51788 , 1, $ectype_id, 194, 187, 1)
		endif

		//NPC
		DeleteNPC(598, -1)
		DeleteNPC(599, -1)
		DeleteNPC(600, -1)
		DeleteNPC(601, -1)
		DeleteNPC(602, -1)
		DeleteNPC(603, -1)
		DeleteNPC(604, -1)
		DeleteNPC(605, -1)
		DeleteNPC(606, -1)
		DeleteNPC(607, -1)
		DeleteNPC(608, -1)
		DeleteNPC(609, -1)
		DeleteNPC(610, -1)
		DeleteNPC(611, -1)
		DeleteNPC(612, -1)
		DeleteNPC(613, -1)
		DeleteNPC(614, -1)
		DeleteNPC(615, -1)
		DeleteNPC(616, -1)
		DeleteNPC(617, -1)
		DeleteNPC(618, -1)
		DeleteNPC(619, -1)
		DeleteNPC(620, -1)
		DeleteNPC(621, -1)
		DeleteNPC(642, -1)
		DeleteNPC(643, -1)
		DeleteNPC(683, -1)
		DeleteNPC(684, -1)
		DeleteNPC(685, -1)
		DeleteNPC(686, -1)
		DeleteNPC(687, -1)
		DeleteNPC(688, -1)
		DeleteNPC(689, -1)

		//????
		DeleteNPC(633, -1)
		DeleteNPC(634, -1)
		DeleteNPC(635, -1)
		DeleteNPC(636, -1)
		//????
		DeleteNPC(646, -1)

		//?? ???? 628 ???? 629 ?? 630  ???? 631 ???? 632
		DeleteNPC(628, -1)
		DeleteNPC(629, -1)
		DeleteNPC(630, -1)
		DeleteNPC(631, -1)
		DeleteNPC(632, -1)

		//????npc
		DeleteNPC(647, -1)
		DeleteNPC(583, -1)
		DeleteNPC(630, -1)
		DeleteNPC(641, -1)
		DeleteNPC(685, -1)
		DeleteNPC(697, -1)
		DeleteNPC(698, -1)
		DeleteNPC(699, -1)
		DeleteNPC(700, -1)
		DeleteNPC(701, -1)
		DeleteNPC(702, -1)
		DeleteNPC(703, -1)
		DeleteNPC(704, -1)
		DeleteNPC(705, -1)
		DeleteNPC(706, -1)
		DeleteNPC(707, -1)
		DeleteNPC(708, -1)
		DeleteNPC(709, -1)
		DeleteNPC(710, -1)
		DeleteNPC(711, -1)


		//????
		DeleteNPC(648, -1)
		DeleteNPC(649, -1)
		DeleteNPC(651, -1)
		DeleteNPC(653, -1)
		DeleteNPC(655, -1)
		DeleteNPC(657, -1)
		DeleteNPC(659, -1)
		DeleteNPC(660, -1)
		DeleteNPC(661, -1)
		DeleteNPC(662, -1)
		DeleteNPC(663, -1)
		DeleteNPC(664, -1)
		DeleteNPC(665, -1)
		DeleteNPC(670, -1)
		DeleteNPC(672, -1)
		DeleteNPC(673, -1)
		DeleteNPC(674, -1)



		
	}


	function EctypeTime9(){

		$ectype_id = GetEctypeID( -1 , 479 )
//		BC( "screen" , "map" , $ectype_id , "GUID:04016000001" , $ectype_id  )

		DeleteNPC(579, -1)
		DeleteNPC(584, -1)
		DeleteNPC(585, -1)
		DeleteNPC(587, -1)
		DeleteNPC(588, -1)
		DeleteNPC(596, -1)
		DeleteNPC(597, -1)
		DeleteNPC(598, -1)
		DeleteNPC(599, -1)
		DeleteNPC(600, -1)
		DeleteNPC(601, -1)
		DeleteNPC(602, -1)
		DeleteNPC(603, -1)
		DeleteNPC(604, -1)
		DeleteNPC(605, -1)
		DeleteNPC(606, -1)
		DeleteNPC(607, -1)
		DeleteNPC(608, -1)
		DeleteNPC(609, -1)
		DeleteNPC(610, -1)
		DeleteNPC(611, -1)
		DeleteNPC(612, -1)
		DeleteNPC(613, -1)
		DeleteNPC(614, -1)
		DeleteNPC(615, -1)
		DeleteNPC(616, -1)
		DeleteNPC(617, -1)
		DeleteNPC(618, -1)
		DeleteNPC(619, -1)
		DeleteNPC(620, -1)
		DeleteNPC(621, -1)
		DeleteNPC(622, -1)
		DeleteNPC(623, -1)
		DeleteNPC(624, -1)
		DeleteNPC(625, -1)
		DeleteNPC(626, -1)
		DeleteNPC(627, -1)
		DeleteNPC(628, -1)
		DeleteNPC(629, -1)
		AddNPC(630, -1)
		DeleteNPC(631, -1)
		DeleteNPC(632, -1)
		DeleteNPC(633, -1)
		DeleteNPC(634, -1)
		DeleteNPC(635, -1)
		DeleteNPC(636, -1)
		DeleteNPC(637, -1)
		DeleteNPC(639, -1)
		DeleteNPC(640, -1)
		DeleteNPC(641, -1)
		DeleteNPC(642, -1)
		DeleteNPC(643, -1)
		DeleteNPC(644, -1)
		DeleteNPC(645, -1)
		DeleteNPC(646, -1)
		DeleteNPC(647, -1)
//		DeleteNPC(679, -1)
		DeleteNPC(683, -1)
//		DeleteNPC(684, -1)
		DeleteNPC(685, -1)
		DeleteNPC(686, -1)
		DeleteNPC(687, -1)
		DeleteNPC(688, -1)
		DeleteNPC(689, -1)
		DeleteNPC(690, -1)

		OpenMask(8,$ectype_id)

		$key = 63
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			OpenMask(9,$ectype_id)
			DeleteNPC(651,-1)
		endif
		
		$key = 64
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			AddMonsterByFloat(51766, 1, $ectype_id, 99, 132, 0)
		endif
		if $getvar == 3
			AddMonsterByFloat(51761, 1, $ectype_id, 92, 132, 0)
			DeleteNPC(655,-1)
		endif
		
		$key = 67
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			AddMonsterByFloat(51763, 1, $ectype_id, 300, 156, 0)
		endif
		if $getvar == 2
			AddMonsterByFloat(51763, 1, $ectype_id, 300, 156, 0)
		endif
		if $getvar == 3
			AddMonsterByFloat(51762, 1, $ectype_id, 300, 156, 0)
		endif
		
		$key = 69
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 0
			DeleteNPC(670,-1)
			AddMonsterByFloat(51767, 1, $ectype_id, 300, 51, 0)
		endif
		if $getvar == 1
			AddMonsterByFloat(51770, 1, $ectype_id, 300, 51, 0)
		endif
		

		
		$key = 73
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 0
			DeleteNPC(672,-1)
		endif
		if $getvar == 2
			DeleteNPC(672,-1)
		endif
		
		$key = 79
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DeleteNPC(653,-1)
		endif
		
		$key = 76
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DeleteNPC(657,-1)
		endif
		
		$key = 73
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			DeleteNPC(657,-1)
		endif
		if $getvar == 2
			DeleteNPC(657,-1)
//			AddNPC(684,-1)
		endif
		///////-----------------------------
		$key = 77
		$getvar = GetEctypeVar($ectype_id,$key)
		if $getvar == 1
			SetEctypeVar($ectype_id,$key,2)
			$monst_gui = 51754
			$monst_hun = 51755
			$monst_yuan = 51756
			$monst_niao = 51757	
			//????????????? 5? ?? 5? ??
			AddMonsterByFloat($monst_gui, 1, $ectype_id, 40, 168, 0)
			AddMonsterByFloat($monst_gui, 1, $ectype_id, 46, 163, 0)
			AddMonsterByFloat($monst_gui, 1, $ectype_id, 44, 179, 0)
			AddMonsterByFloat($monst_gui, 1, $ectype_id, 49, 181, 0)
			AddMonsterByFloat($monst_gui, 1, $ectype_id, 49, 188, 0)
			
			AddMonsterByFloat($monst_hun, 1, $ectype_id, 60, 192, 0)
			AddMonsterByFloat($monst_hun, 1, $ectype_id, 65, 192, 0)
			AddMonsterByFloat($monst_hun, 1, $ectype_id, 62, 189, 0)
			AddMonsterByFloat($monst_hun, 1, $ectype_id, 70, 189, 0)
			AddMonsterByFloat($monst_hun, 1, $ectype_id, 80, 188, 0)	
			
			//?????? 3? ?? 3? ??
			AddMonsterByFloat($monst_gui, 1, $ectype_id, 90, 159, 0)
			AddMonsterByFloat($monst_gui, 1, $ectype_id, 101, 157, 0)
			AddMonsterByFloat($monst_gui, 1, $ectype_id, 116, 157, 0)	
			
			AddMonsterByFloat($monst_hun, 1, $ectype_id, 107, 160, 0)
			AddMonsterByFloat($monst_hun, 1, $ectype_id, 128, 160, 0)
			AddMonsterByFloat($monst_hun, 1, $ectype_id, 135, 156, 0)	
			
			//????????? ?7?
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 62, 154, 0)
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 62, 155, 0)
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 62, 156, 0)
			
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 78, 202, 0)
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 79, 202, 0)
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 80, 202, 0)
			
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 140, 178, 0)
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 141, 178, 0)
			AddMonsterByFloat($monst_niao, 1, $ectype_id, 142, 178, 0)
			
			//?????? 6? ???
//			AddMonsterByFloat($monst_yuan, 1, $ectype_id, 284, 154, 0)
			AddMonsterByFloat($monst_yuan, 1, $ectype_id, 279, 157, 0)
			AddMonsterByFloat($monst_yuan, 1, $ectype_id, 270, 147, 0)
			AddMonsterByFloat($monst_yuan, 1, $ectype_id, 270, 165, 0)
			AddMonsterByFloat($monst_yuan, 1, $ectype_id, 248, 166, 0)	
			AddMonsterByFloat($monst_yuan, 1, $ectype_id, 254, 162, 0)
		endif
		///--------------------------------
		//??AI
		AddMonsterByFloat(51769,1,$ectype_id,195,271,0)
		//xiang
		AddMonsterByFloat(51768,1,$ectype_id,243,105,0)
	}


	function EctypeTime8(){
		
		$getvar = GetEctypeVar(-1,84)
		$playerid = GetEctypeVar(-1,111)
		if $getvar == 1
			//????
			ReleaseEctype($playerid,479)
		else
			//CD??
			SetEctypeVar(-1,85,0)
			BC("screen","player",$playerid,"The Ward of Inversion can be used again.")
		endif
		

		
		
		
		
	}

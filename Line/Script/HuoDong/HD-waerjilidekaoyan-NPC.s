	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/08
	//		Author:??
	//		TaskName:HD-waerjilidekaoyan-NPC.s
	//		TaskID:??????NPC??
	//
	//****************************************
	//??????
	function OnRequest(){
		
		//???????? ????
		$today_time = GetSystemTime( "yday" )
		if $today_time != 306
		  DisableNpcOption(4)
		 
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			DisableNpcOption(0)
			return
		endif
		
		//???????????????
		$title1 = HaveTitle( -1, 18 )
		$title2 = HaveTitle( -1, 19 )
		$title3 = HaveTitle( -1, 20 )
		if $title1 == 0
			DisableNpcOption(1)
		endif

		if $title2 == 0
			DisableNpcOption(2)
		endif

		if $title3 == 0
			DisableNpcOption(3)
		endif
		
		//??????????????
		$today_time = GetSystemTime( "yday" )
		//??????????
		$quest_time =  GetPlayerVar( -1	, 3606 )
		//?????????
		$switch_value = GetPlayerVar( -1 , 8 )
		//????????,?????????,?????????
		if $quest_time == $today_time
			if $switch_value == 1
				DisableNpcOption(0)
				return
			endif
		endif
		
	}
	//????1,???????????	3606
	//????2,???????????????,????	8
	//????3,?????????	3203
	
	function OnOption0(){
	//????????
		//???????0????,1????
		$Is_accept_task = 0
		//????????
		$is_exist_quest = 0
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			BC( "dialogbox", "player", -1, "You are not strong enough. Come back once you've reached LV30." )
			return
		endif
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Your quest list is full. Complete or abandon some quests, then come back here!" )
			return
		endif
	//???????????,????????????
		if $level >= 150
			BC( "dialogbox", "player", -1, "There is no quest available for your level." )
			return
		endif
		//??????????????
		$today_time = GetSystemTime( "yday" )
		
		//??????????
		$quest_time =  GetPlayerVar( -1	, 3606 )
		
		//?????????
		$switch_value = GetPlayerVar( -1 , 8 )
		
		//???????
		$quest_ring_number = GetPlayerVar( -1 , 3203 )
		//?????????
		$quest_id = 0
		//????????????????,?????
		if $quest_time == $today_time
			if $switch_value == 1
				call IsExistQuest()
				//???????,0???????
				if $is_exist_quest == 1
					BC( "dialogbox", "player", -1, "Complete the quest you already have first!" )
					return
				else
					BC( "dialogbox", "player", -1, "You've abandoned the quest for today. Please come back tomorrow." )
					return
				endif
			else
				if $quest_ring_number > 10
					BC( "dialogbox", "player", -1, "Good work, but you've done all you can for today. Get some rest, and come back tomorrow." )
					return
				else
					call ClearQuest()
					if $quest_ring_number == 10
						$Is_accept_task = AcceptTask(-1,1844)
						$quest_id = 1844
						if $Is_accept_task == 0
							$ectid = GetEctypeID(-1,557)
							if $ectid > 0
								ReleaseEctype($ectid)
							endif
							$playerid = GetPlayerID()
							SetTaskLoopCount ( -1, $quest_id, $quest_ring_number )
							SetPlayerVar( -1 , 8, 1)
							//????
							FlyToEctype($playerid,557,63,64)
							$ectype_id = GetEctypeID($playerid,557)
							$key = 110
							SetEctypeVar($ectype_id,$key,$playerid)
							$key = 0
							SetEctypeVar($ectype_id,$key,$level)
							StartEctypeTimer($ectype_id,1)
//							StartEctypeTimer($ectype_id,9)
							BC( "dialogbox", "player", -1, "You've received then 10th Magic Academy quest! Speak to Satha for your exam!\n\n\n{#ffff1111=Warning: If you leave the instance, you will fail today's Magic Academy test.#}" )
							SetPlayerActLog(-1,27,2)
							return
						endif
					else
						call RandomQuest()
//$Is_accept_task = AcceptTask(-1 , 4000)
//$quest_id = 4000
						if $Is_accept_task == 0				
							//$quest_ring_number = $quest_ring_number + 1
							//????????
							SetTaskLoopCount ( -1, $quest_id, $quest_ring_number )
							//SetPlayerVar( -1 , 3203, $quest_ring_number)
							SetPlayerVar( -1 , 8, 1)
							BC( "dialogbox", "player", -1, "You have received quest ",$quest_ring_number," out of 10 for today's Magic Academy tests." )
							return
						endif
					endif

					BC( "dialogbox", "player", -1, "Error! Error code: ", $quest_ring_number," ",$Is_accept_task , " ",$quest_id)
				endif
			endif
		else
			//????????
			$quest_ring_number = 1
			call ClearQuest()
			
					call RandomQuest()
//$Is_accept_task = AcceptTask(-1 , 4000)
//$quest_id = 4000

			if $Is_accept_task == 0		
				//????????
				SetTaskLoopCount ( -1, $quest_id, 1 )
				SetPlayerVar( -1 , 3203, 1)
				SetPlayerVar( -1 , 8, 1)
				SetPlayerVar( -1 , 3606, $today_time)
				BC( "dialogbox", "player", -1, "You have received the first quest for today's Magic Academy tests." )
                //??????
				//????-START
				$TJ_join_number = GetGlobalVar(910)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(910 , $TJ_join_number)
				//????-END
				SetPlayerActLog(-1,27,1)
				return
			endif
			BC( "dialogbox", "player", -1, "Error! Error code: ", $quest_ring_number," ",$Is_accept_task , " " ,$quest_id)
		endif
	//?????
	
		//????????,???????????????,??????????
			//????????,??????????????
			//????????,??????????????????
		
		//????????,????????????
			//???????,??????20,????????20??,?????
			//????20,???????????,??+1,??????
			
	//??????
		
		//???????????????
		//?????1
		//???????
		//???????????
		//????????????
	}
	function OnOption1(){
		
		$chenghao1 = HaveTitle( -1, 17 )
		$shengwang1 = GetPlayerInfo( -1, prestige, 32 )
		if $shengwang1 < 4000
			BC( "dialogbox", "player", -1, "You can only become a Conjurer if you have 4,000 Magic Academy Reputation." )
			return
		endif
		if $chenghao1 != 0
			BC( "dialogbox", "player", -1, "You must be a Magician to become a Conjurer!" )
			return
		endif
			AddTitle( -1, 18 )
			BC( "screen", "player", -1, "Obtained the title of Conjurer!" )
		
	}
	
	
	function OnOption2(){	
		
		$chenghao2 = HaveTitle( -1, 18 )
		$shengwang2 = GetPlayerInfo( -1, prestige, 32 )
		if $shengwang2 < 6500
			BC( "dialogbox", "player", -1, "You can only become a Magister if you have 6,500 Magic Academy Reputation." )
			return
		endif
		if $chenghao2 != 0
			BC( "dialogbox", "player", -1, "You must be a Conjurer to become a Magister!" )
			return
		endif
			AddTitle( -1, 19 )
			BC( "screen", "player", -1, "Obtained the title of Magister!" )	
		
	}
	
	function OnOption3(){	
		
		$chenghao3 = HaveTitle( -1, 19 )
		$shengwang3 = GetPlayerInfo( -1, prestige, 32 )
		if $shengwang3 < 10000
			BC( "dialogbox", "player", -1, "You can only become a Illusionist if you have 10,000 Magic Academy Reputation." )
			return
		endif
		if $chenghao3 != 0
			BC( "dialogbox", "player", -1, "You must be a Magister to become an Illusionist!" )
			return
		endif			
			AddTitle( -1, 20 )
			BC( "screen", "player", -1, "Obtained the title of Illusionist!" )
					
	}
		//???????????44501
	function OnOption4(){
	//??????
	$TaskVar = GetPlayerVar( -1, 255 )
	if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already obtained this reward!" )
				return
			endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You bag is full. How could you receive my gifts?" )
			return
		endif
	
		AddPlayerInfo( -1, "item", 44501, 1 )
		SetPlayerVar( -1, 255, 1 )
		$TaskVar1 = GetPlayerVar( -1, 251)
		$TaskVar2 = GetPlayerVar( -1, 252)
		$TaskVar3 = GetPlayerVar( -1, 253)
		$TaskVar4 = GetPlayerVar( -1, 254)
		$TaskVar5 = GetPlayerVar( -1, 255)
		$TaskVar6 = GetPlayerVar( -1, 256)
		$TaskVar7 = GetPlayerVar( -1, 257)
    $TaskVar = $TaskVar1 + $TaskVar2   
    $TaskVar = $TaskVar + $TaskVar3 
    $TaskVar = $TaskVar + $TaskVar4
    $TaskVar = $TaskVar + $TaskVar5
    $TaskVar = $TaskVar + $TaskVar6
    $TaskVar = $TaskVar + $TaskVar7
	 if $TaskVar < 7
	
		BC( "screen", "player", -1, "Happy Halloween! Try to find if there are any gift senders in Atlantis!" )
		BC( "dialogbox", "player", -1, "Although Atlas looks indifferent, he has a warm heart inside! If you want to get gifts, go and find him around the Expedition Union." )
		
		return
		endif
		if $TaskVar == 7
	
		BC( "screen", "player", -1, "Congratulations! You've found all the gift senders in Atlantis! We all wish you a happy Halloween!!!" )
			PlayEffect(-1,"common\transmit\colorfulring\fire\colorfulring_fire.ini")
		return
		endif
	}
	//????????
	function ClearQuest(){
		CancelTask ( -1,4000  )
		CancelTask ( -1,4001  )
		CancelTask ( -1,4002  )
		CancelTask ( -1,4003  )
		CancelTask ( -1,4004  )
		CancelTask ( -1,4005  )
		CancelTask ( -1,4006  )
		CancelTask ( -1,4007  )
		CancelTask ( -1,4008  )
		CancelTask ( -1,4009  )
		CancelTask ( -1,4010  )
		CancelTask ( -1,4011  )
		CancelTask ( -1,4012  )
		CancelTask ( -1,4013  )
		CancelTask ( -1,4014  )
		CancelTask ( -1,4015  )
		CancelTask ( -1,4016  )
		CancelTask ( -1,4017  )
		CancelTask ( -1,4018  )
		CancelTask ( -1,4019  )
		CancelTask ( -1,4020  )
		CancelTask ( -1,4021  )
		CancelTask ( -1,4022  )
		CancelTask ( -1,4023  )
		CancelTask ( -1,4024  )
		CancelTask ( -1,4025  )
		CancelTask ( -1,4026  )
		CancelTask ( -1,4027  )
		CancelTask ( -1,4028  )
		CancelTask ( -1,4029  )
		CancelTask ( -1,4030  )
		CancelTask ( -1,4031  )
		CancelTask ( -1,4032  )
		CancelTask ( -1,4033  )
		CancelTask ( -1,4034  )
		CancelTask ( -1,4035  )
		CancelTask ( -1,4036  )
		CancelTask ( -1,4037  )
		CancelTask ( -1,4038  )
		CancelTask ( -1,4039  )
		CancelTask ( -1,4040  )
		CancelTask ( -1,4041  )
		CancelTask ( -1,4042  )
		CancelTask ( -1,4043  )
		CancelTask ( -1,4044  )
		CancelTask ( -1,4045  )
		CancelTask ( -1,4046  )
		CancelTask ( -1,4047  )
		CancelTask ( -1,4048  )
		CancelTask ( -1,4049  )
		CancelTask ( -1,4050  )
		CancelTask ( -1,4051  )
		CancelTask ( -1,4052  )
		CancelTask ( -1,4053  )
		CancelTask ( -1,4054  )
		//CancelTask ( -1,4055  )
		//CancelTask ( -1,4056  )
		//CancelTask ( -1,4057  )
		//CancelTask ( -1,4058  )
		//CancelTask ( -1,4059  )
		CancelTask ( -1,4060  )
		CancelTask ( -1,4061  )
		CancelTask ( -1,4062  )
		CancelTask ( -1,4063  )
		CancelTask ( -1,4064  )
		CancelTask ( -1,4065  )
		CancelTask ( -1,4066  )
		CancelTask ( -1,4067  )
		CancelTask ( -1,4068  )
		CancelTask ( -1,4069  )
		CancelTask ( -1,4070  )
		CancelTask ( -1,4071  )
		CancelTask ( -1,4072  )
		CancelTask ( -1,4073  )
		CancelTask ( -1,4074  )
		CancelTask ( -1,4075  )
		CancelTask ( -1,4076  )
		CancelTask ( -1,4077  )
		CancelTask ( -1,4078  )
		CancelTask ( -1,4079  )
		CancelTask ( -1,4080  )
		CancelTask ( -1,4081  )
		CancelTask ( -1,4082  )
		CancelTask ( -1,4083  )
		CancelTask ( -1,4084  )
		//CancelTask ( -1,4085  )
		//CancelTask ( -1,4086  )
		//CancelTask ( -1,4087  )
		//CancelTask ( -1,4088  )
		//CancelTask ( -1,4089  )
		CancelTask ( -1,4090  )
		CancelTask ( -1,4091  )
		CancelTask ( -1,4092  )
		CancelTask ( -1,4093  )
		CancelTask ( -1,4094  )
		CancelTask ( -1,4095  )
		CancelTask ( -1,4096  )
		CancelTask ( -1,4097  )
		CancelTask ( -1,4098  )
		CancelTask ( -1,4099  )
		CancelTask ( -1,4100  )
		CancelTask ( -1,4101  )
		CancelTask ( -1,4102  )
		CancelTask ( -1,4103  )
		CancelTask ( -1,4104  )
		CancelTask ( -1,4105  )
		CancelTask ( -1,4106  )
		CancelTask ( -1,4107  )
		CancelTask ( -1,4108  )
		CancelTask ( -1,4109  )
		CancelTask ( -1,4110  )
		CancelTask ( -1,4111  )
		CancelTask ( -1,4112  )
		CancelTask ( -1,4113  )
		CancelTask ( -1,4114  )
	//	CancelTask ( -1,4115  )
	//	CancelTask ( -1,4116  )
	//	CancelTask ( -1,4117  )
	//	CancelTask ( -1,4118  )
	//	CancelTask ( -1,4119  )
		CancelTask ( -1,4120  )
		CancelTask ( -1,4121  )
		CancelTask ( -1,4122  )
		CancelTask ( -1,4123  )
		CancelTask ( -1,4124  )
		CancelTask ( -1,4125  )
		CancelTask ( -1,4126  )
		CancelTask ( -1,4127  )
		CancelTask ( -1,4128  )
		CancelTask ( -1,4129  )
		CancelTask ( -1,4130  )
		CancelTask ( -1,4131  )
		CancelTask ( -1,4132  )
		CancelTask ( -1,4133  )
		CancelTask ( -1,4134  )
		CancelTask ( -1,4135  )
		CancelTask ( -1,4136  )
		CancelTask ( -1,4137  )
		CancelTask ( -1,4138  )
		CancelTask ( -1,4139  )
		CancelTask ( -1,4140  )
		CancelTask ( -1,4141  )
		CancelTask ( -1,4142  )
		CancelTask ( -1,4143  )
		CancelTask ( -1,4144  )
		CancelTask ( -1,4145  )
		CancelTask ( -1,4146  )
		
		
		
		CancelTask ( -1,4437  )
		CancelTask ( -1,4438  )
		CancelTask ( -1,4439  )
		CancelTask ( -1,4440  )
		CancelTask ( -1,4441  )
		CancelTask ( -1,4442  )
		CancelTask ( -1,4443  )
		CancelTask ( -1,4444  )
		CancelTask ( -1,4445  )
		CancelTask ( -1,4446  )
		CancelTask ( -1,4447  )
		CancelTask ( -1,4448  )
		CancelTask ( -1,4449  )
		CancelTask ( -1,4450  )
		CancelTask ( -1,4451  )
		CancelTask ( -1,4452  )
		CancelTask ( -1,4453  )
		CancelTask ( -1,4454  )
		CancelTask ( -1,4455  )
		CancelTask ( -1,4456  )
		
		CancelTask ( -1,1844  )

		
		
	}	
	
	
	//???????????????,???$is_exist_quest????
	function IsExistQuest(){

		$result = IsTaskAccept( -1, 1844 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		
		$result = IsTaskAccept( -1, 4000 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4001 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4002 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4003 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4004 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4005 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4006 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4007 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4008 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4009 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4010 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4011 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4012 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4013 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4014 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4015 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4016 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4017 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4018 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4019 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4020 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4021 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4022 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4023 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4024 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4025 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4026 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4027 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4028 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4029 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4030 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4031 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4032 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4033 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4034 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4035 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4036 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4037 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4038 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4039 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4040 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4041 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4042 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4043 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4044 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4045 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4046 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4047 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4048 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4049 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4050 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4051 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4052 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4053 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4054 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
//		$result = IsTaskAccept( -1, 4055 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4056 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4057 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4058 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4059 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
		$result = IsTaskAccept( -1, 4060 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4061 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4062 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4063 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4064 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4065 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4066 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4067 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4068 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4069 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4070 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4071 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4072 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4073 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4074 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4075 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4076 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4077 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4078 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4079 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4080 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4081 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4082 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4083 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4084 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
//		$result = IsTaskAccept( -1, 4085 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4086 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4087 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4088 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4089 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
		$result = IsTaskAccept( -1, 4090 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4091 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4092 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4093 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4094 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4095 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4096 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4097 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4098 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4099 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4100 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4101 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4102 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4103 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4104 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4105 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4106 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4107 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4108 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4109 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4110 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4111 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4112 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4113 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4114 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
//		$result = IsTaskAccept( -1, 4115 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4116 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4117 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4118 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
//		$result = IsTaskAccept( -1, 4119 )
//		if $result == 0
//			$is_exist_quest = 1
//			return
//		endif
		$result = IsTaskAccept( -1, 4120 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4121 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4122 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4123 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4124 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4125 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4126 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4127 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4128 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4129 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4130 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4131 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4132 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4133 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4134 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4135 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4136 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4137 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4138 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4139 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4140 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4141 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4142 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4143 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4144 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4145 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4146 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		
		$result = IsTaskAccept( -1, 4437 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4438 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4439 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4440 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4441 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4442 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4443 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4444 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4445 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4446 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4447 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4448 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4449 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4450 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4451 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4452 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4453 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4454 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4455 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$result = IsTaskAccept( -1, 4456 )
		if $result == 0
			$is_exist_quest = 1
			return
		endif
		$is_exist_quest = 0
		
	}
	
	//??????,??????
	function RandomQuest(){

		
	
		//????
		$random_type = RandomNumber(1, 70)

		//??????,????????
		if $random_type < 35
		
			$random_number = RandomNumber(1, 36)
			if $random_number == 1
				$Is_accept_task = AcceptTask(-1 , 4040)
				$quest_id = 4040
				return
			endif
			if $random_number == 2
				$Is_accept_task = AcceptTask(-1 , 4041)
				$quest_id = 4041
				return
			endif
			if $random_number == 3
				$Is_accept_task = AcceptTask(-1 , 4042)
				$quest_id = 4042
				return
			endif
			if $random_number == 4
				$Is_accept_task = AcceptTask(-1 , 4043)
				$quest_id = 4043
				return
			endif
			if $random_number == 5
				$Is_accept_task = AcceptTask(-1 , 4044)
				$quest_id = 4044
				return
			endif
			if $random_number == 6
				$Is_accept_task = AcceptTask(-1 , 4045)
				$quest_id = 4045
				return
			endif
			if $random_number == 7
				$Is_accept_task = AcceptTask(-1 , 4046)
				$quest_id = 4046
				return
			endif
			if $random_number == 8
				$Is_accept_task = AcceptTask(-1 , 4047)
				$quest_id = 4047
				return
			endif
			if $random_number == 9
				$Is_accept_task = AcceptTask(-1 , 4071)
				$quest_id = 4071
				return
			endif
			if $random_number == 10
				$Is_accept_task = AcceptTask(-1 , 4072)
				$quest_id = 4072
				return
			endif
			if $random_number == 11
				$Is_accept_task = AcceptTask(-1 , 4073)
				$quest_id = 4073
				return
			endif
//			if $random_number == 12
//				$Is_accept_task = AcceptTask(-1 , 4074)
//				$quest_id = 4074
//				return
//			endif
//			if $random_number == 13
//				$Is_accept_task = AcceptTask(-1 , 4075)
//				$quest_id = 4075
//				return
//			endif
			if $random_number == 12
				$Is_accept_task = AcceptTask(-1 , 4076)
				$quest_id = 4076
				return
			endif
			if $random_number == 13
				$Is_accept_task = AcceptTask(-1 , 4077)
				$quest_id = 4077
				return
			endif
			if $random_number == 14
				$Is_accept_task = AcceptTask(-1 , 4101)
				$quest_id = 4101
				return
			endif
//			if $random_number == 17
//				$Is_accept_task = AcceptTask(-1 , 4102)
//				$quest_id = 4102
//				return
//			endif
			if $random_number == 15
				$Is_accept_task = AcceptTask(-1 , 4103)
				$quest_id = 4103
				return
			endif
			if $random_number == 16
				$Is_accept_task = AcceptTask(-1 , 4130)
				$quest_id = 4130
				return
			endif
			if $random_number == 17
				$Is_accept_task = AcceptTask(-1 , 4131)
				$quest_id = 4131
				return
			endif
			if $random_number == 18
				$Is_accept_task = AcceptTask(-1 , 4132)
				$quest_id = 4132
				return
			endif
//			if $random_number == 22
//				$Is_accept_task = AcceptTask(-1 , 4135)
//				$quest_id = 4135
//				return
//			endif
			if $random_number == 19
				$Is_accept_task = AcceptTask(-1 , 4000)
				$quest_id = 4000
				return
			endif
			if $random_number == 20
				$Is_accept_task = AcceptTask(-1 , 4001)
				$quest_id = 4001
				return
			endif
			if $random_number == 21
				$Is_accept_task = AcceptTask(-1 , 4002)
				$quest_id = 4002
				return
			endif
			if $random_number == 22
				$Is_accept_task = AcceptTask(-1 , 4003)
				$quest_id = 4003
				return
			endif
			if $random_number == 23
				$Is_accept_task = AcceptTask(-1 , 4004)
				$quest_id = 4004
				return
			endif
			if $random_number == 24
				$Is_accept_task = AcceptTask(-1 , 4005)
				$quest_id = 4005
				return
			endif
			if $random_number == 25
				$Is_accept_task = AcceptTask(-1 , 4006)
				$quest_id = 4006
				return
			endif
			if $random_number == 26
				$Is_accept_task = AcceptTask(-1 , 4007)
				$quest_id = 4007
				return
			endif
			if $random_number == 27
				$Is_accept_task = AcceptTask(-1 , 4008)
				$quest_id = 4008
				return
			endif
			if $random_number == 28
				$Is_accept_task = AcceptTask(-1 , 4009)
				$quest_id = 4009
				return
			endif
			if $random_number == 29
				$Is_accept_task = AcceptTask(-1 , 4010)
				$quest_id = 4010
				return
			endif
			if $random_number == 30
				$Is_accept_task = AcceptTask(-1 , 4011)
				$quest_id = 4011
				return
			endif
			if $random_number == 31
				$Is_accept_task = AcceptTask(-1 , 4012)
				$quest_id = 4012
				return
			endif
			if $random_number == 32
				$Is_accept_task = AcceptTask(-1 , 4013)
				$quest_id = 4013
				return
			endif
			if $random_number == 33
				$Is_accept_task = AcceptTask(-1 , 4014)
				$quest_id = 4014
				return
			endif
			if $random_number == 34
				$Is_accept_task = AcceptTask(-1 , 4015)
				$quest_id = 4015
				return
			endif
			if $random_number == 35
				$Is_accept_task = AcceptTask(-1 , 4016)
				$quest_id = 4016
				return
			endif
			if $random_number == 36
				$Is_accept_task = AcceptTask(-1 , 4017)
				$quest_id = 4017
				return
			endif
		endif
		
		if $random_type >= 35
			if $random_type < 55
				$random_number = RandomNumber(1, 10)
				if $random_number == 1
					$Is_accept_task = AcceptTask(-1 , 4018)
					$quest_id = 4018
					return
				endif
				if $random_number == 2
					$Is_accept_task = AcceptTask(-1 , 4019)
					$quest_id = 4019
					return
				endif
				if $random_number == 3
					$Is_accept_task = AcceptTask(-1 , 4020)
					$quest_id = 4020
					return
				endif
				if $random_number == 4
					$Is_accept_task = AcceptTask(-1 , 4021)
					$quest_id = 4021
					return
				endif
				if $random_number == 5
					$Is_accept_task = AcceptTask(-1 , 4022)
					$quest_id = 4022
					return
				endif
				if $random_number == 6
					$Is_accept_task = AcceptTask(-1 , 4023)
					$quest_id = 4023
					return
				endif
				if $random_number == 7
					$Is_accept_task = AcceptTask(-1 , 4024)
					$quest_id = 4024
					return
				endif
				if $random_number == 8
					$Is_accept_task = AcceptTask(-1 , 4025)
					$quest_id = 4025
					return
				endif
				if $random_number == 9
					$Is_accept_task = AcceptTask(-1 , 4026)
					$quest_id = 4026
					return
				endif
				if $random_number == 10
					$Is_accept_task = AcceptTask(-1 , 4027)
					$quest_id = 4027
					return
				endif
			endif
		endif
		
		if $random_type >= 55
				$random_number = RandomNumber(1, 30)
				if $random_number == 1
					$Is_accept_task = AcceptTask(-1 , 4028)
					$quest_id = 4028
					return
				endif
				
				if $random_number == 2
					$Is_accept_task = AcceptTask(-1 , 4029)
					$quest_id = 4029
					return
				endif
			
				if $random_number == 3
					$Is_accept_task = AcceptTask(-1 , 4070)
					$quest_id = 4070
					return
				endif
		
				if $random_number == 4
					$Is_accept_task = AcceptTask(-1 , 4134)
					$quest_id = 4134
					return
				endif
				if $random_number == 5
					$Is_accept_task = AcceptTask(-1 , 4100)
					$quest_id = 4100
					return
				endif
				if $random_number == 6
					$Is_accept_task = AcceptTask(-1 , 4104)
					$quest_id = 4104
					return
				endif
		
				if $random_number == 7
					$Is_accept_task = AcceptTask(-1 , 4105)
					$quest_id = 4105
					return
				endif
				if $random_number == 8
					$Is_accept_task = AcceptTask(-1 , 4133)
					$quest_id = 4133
					return
				endif
				if $random_number == 9
					$Is_accept_task = AcceptTask(-1 , 4145)
					$quest_id = 4145
					return
				endif
				if $random_number == 10
					$Is_accept_task = AcceptTask(-1 , 4146)
					$quest_id = 4146
					return
				endif
				if $random_number == 11
					$Is_accept_task = AcceptTask(-1 , 4437)
					$quest_id = 4437
					return
				endif
				if $random_number == 12
					$Is_accept_task = AcceptTask(-1 , 4438)
					$quest_id = 4438
					return
				endif
				if $random_number == 13
					$Is_accept_task = AcceptTask(-1 , 4439)
					$quest_id = 4439
					return
				endif
				if $random_number == 14
					$Is_accept_task = AcceptTask(-1 , 4440)
					$quest_id = 4440
					return
				endif
				if $random_number == 15
					$Is_accept_task = AcceptTask(-1 , 4441)
					$quest_id = 4441
					return
				endif
				if $random_number == 16
					$Is_accept_task = AcceptTask(-1 , 4442)
					$quest_id = 4442
					return
				endif
				if $random_number == 17
					$Is_accept_task = AcceptTask(-1 , 4443)
					$quest_id = 4443
					return
				endif
				if $random_number == 18
					$Is_accept_task = AcceptTask(-1 , 4444)
					$quest_id = 4444
					return
				endif
				if $random_number == 19
					$Is_accept_task = AcceptTask(-1 , 4445)
					$quest_id = 4445
					return
				endif
				if $random_number == 20
					$Is_accept_task = AcceptTask(-1 , 4446)
					$quest_id = 4446
					return
				endif
				if $random_number == 21
					$Is_accept_task = AcceptTask(-1 , 4447)
					$quest_id = 4447
					return
				endif
				if $random_number == 22
					$Is_accept_task = AcceptTask(-1 , 4448)
					$quest_id = 4448
					return
				endif
				if $random_number == 23
					$Is_accept_task = AcceptTask(-1 , 4449)
					$quest_id = 4449
					return
				endif
				if $random_number == 24
					$Is_accept_task = AcceptTask(-1 , 4450)
					$quest_id = 4450
					return
				endif
				if $random_number == 25
					$Is_accept_task = AcceptTask(-1 , 4451)
					$quest_id = 4451
					return
				endif
				if $random_number == 26
					$Is_accept_task = AcceptTask(-1 , 4452)
					$quest_id = 4452
					return
				endif
				if $random_number == 27
					$Is_accept_task = AcceptTask(-1 , 4453)
					$quest_id = 4453
					return
				endif
				if $random_number == 28
					$Is_accept_task = AcceptTask(-1 , 4454)
					$quest_id = 4454
					return
				endif
				if $random_number == 29
					$Is_accept_task = AcceptTask(-1 , 4455)
					$quest_id = 4455
					return
				endif
				if $random_number == 30
					$Is_accept_task = AcceptTask(-1 , 4456)
					$quest_id = 4456
					return
				endif
		endif
		
		
	}
				
		
		
		
		
		

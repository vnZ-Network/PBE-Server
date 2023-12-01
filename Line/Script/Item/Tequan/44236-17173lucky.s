	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/16
	//		Author:???
	//		TaskName:44236-17173lucky.s
	//		TaskID:2012?4????
	//
	//****************************************


function OnUseItem(){

  $Now_Yday = GetSystemTime( "yday" )
  $day = GetPlayerVar( -1, 4053)
  $number = GetPlayerVar( -1, 3381)
//  #name = GetPlayerInfo( -1, "name" )
//  $pet_count = GetGlobalVar(78 )
  
  //????,??60?????
  $lv = GetPlayerInfo(-1, "level")
  if $lv < 60
     BC("screen", "player", -1, "You must reach LV60 before you can open this chest.")
     return
  endif
  //??????
  $bag_count = GetPlayerInfo(-1, "nullitem", 0)
  if $bag_count < 1
     BC("screen", "player", -1, "You do not have enough space in your bag.")
     BC("chat", "player", -1, "You do not have enough space in your bag.")
     return
  endif
  
  //????????
  $bag_count_1 = GetPlayerInfo(-1, "nullitem", 1)
  if $bag_count_1 < 1
     BC("screen", "player", -1, "You do not have enough space in your Materials bag.")
     BC("chat", "player", -1, "You do not have enough space in your Materials bag.")
     return
  endif
  
  //????????,????,??????0,??????????
  if $day == $Now_Yday
  
  
  	if $number >= 3
	     BC("screen", "player", -1, "You can only open 17173 Lucky Pack or Imperial Chest 3 times a day." )
	     return
  	endif
  	
  endif
  
  //??????3?
  
  
  $n = RandomNumber(2, 10001 )
  //????????
//  if $n == 1
//  //??????????,???????????,???????????
//              if $pet_count >= 1
//                 AddPlayerInfo(-1, "item", 59234, 1 )
//              else
//  //??????????12???????????
//                 $a = RandomNumber( 1, 12 )
//                 #name = GetPlayerInfo( -1, "name" )
//                 if $a == 1
//                    AddPlayerInfo( -1, "item", 62510, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000006" )
//                    BC( "screen", "server", -1, "GUID:07664000007",#name,"GUID:07664000008" )
//                 endif
//
//                 if $a == 2
//                    AddPlayerInfo( -1, "item", 62513, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000009" )
//                    BC( "screen", "server", -1, "GUID:07664000010",#name,"GUID:07664000011" )
//                 endif
//
//                 if $a == 3
//                    AddPlayerInfo( -1, "item", 62515, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000012" )
//                    BC( "screen", "server", -1, "GUID:07664000013",#name,"GUID:07664000014" )
//                 endif
// 
//                 if $a == 4
//                    AddPlayerInfo( -1, "item", 62516, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000015" )
//                    BC( "screen", "server", -1, "GUID:07664000016",#name,"GUID:07664000017" )
//                 endif
//
//                 if $a == 5
//                    AddPlayerInfo( -1, "item", 62517, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000018" )
//                    BC( "screen", "server", -1, "GUID:07664000019",#name,"GUID:07664000020" )
//                 endif
//
//                 if $a == 6
//                    AddPlayerInfo( -1, "item", 62518, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000021" )
//                    BC( "screen", "server", -1, "GUID:07664000022",#name,"GUID:07664000023" )
//                 endif
//
//                 if $a == 7
//                    AddPlayerInfo( -1, "item", 62519, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000024" )
//                    BC( "screen", "server", -1, "GUID:07664000025",#name,"GUID:07664000026" )
//                 endif
// 
//                 if $a == 8
//                    AddPlayerInfo( -1, "item", 62520, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000027" )
//                    BC( "screen", "server", -1, "GUID:07664000028",#name,"GUID:07664000029" )
//                 endif
// 
//                 if $a == 9
//                    AddPlayerInfo( -1, "item", 62521, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000030" )
//                    BC( "screen", "server", -1, "GUID:07664000031",#name,"GUID:07664000032" )
//                 endif
//
//                 if $a == 10
//                    AddPlayerInfo( -1, "item", 62522, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000033" )
//                    BC( "screen", "server", -1, "GUID:07664000034",#name,"GUID:07664000035" )
//                 endif
//
//                 if $a == 11
//                    AddPlayerInfo( -1, "item", 62523, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000036" )
//                    BC( "screen", "server", -1, "GUID:07664000037",#name,"GUID:07664000038" )
//                 endif
//
//                 if $a == 12
//                    AddPlayerInfo( -1, "item", 62524, 1 )
//                    BC( "screen", "player", -1, "GUID:07664000039" )
//                    BC( "screen", "server", -1, "GUID:07664000040",#name,"GUID:07664000041" )
//                 endif
//
//  //????
//                 $pet_count = $pet_count + 1
//                 SetGlobalVar(78, $pet_count)
//                 
//              endif
//  endif 

  //????????
           if $n >= 2
              if $n <= 101
                 AddPlayerInfo( -1, "item", 63422, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a Zodiac Pet." )
              endif
           endif
           
           if $n >= 102
              if $n <= 121
                 AddPlayerInfo( -1, "item", 2147, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a LV3 Gem Talisman." )            
              endif
           endif

            if $n >= 122
              if $n <= 221
                 AddPlayerInfo( -1, "item", 18, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a Fresh Flower x99." )              
              endif
           endif

  //????????
           if $n >= 222
              if $n <= 521
                 AddPlayerInfo( -1, "item", 9, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a Major Fortified Crystal." )              
              endif
           endif
       
           if $n >= 522
              if $n <= 821
                 AddPlayerInfo( -1, "item", 59080, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a LV2 Gem Chest." )             
              endif
           endif

           if $n >= 822
              if $n <= 841
                 AddPlayerInfo( -1, "item", 60014, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a Medium Pet Gem." )            
              endif
           endif
  
           if $n >= 842
              if $n <= 861
                 AddPlayerInfo( -1, "item", 60494, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained an Advanced Rebirth Stone." )              
              endif
           endif

  //????????
          if $n >= 862
              if $n <= 961
                 AddPlayerInfo( -1, "item", 60004, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a Cloak of Protection." )              
              endif
           endif
 
           if $n >= 962
              if $n <= 2961
                 $b = RandomNumber( 1, 4 )
                 if $b == 1  
                    AddPlayerInfo( -1, "item", 61088, 1 )
                    BC( "screen", "player", -1, "Congratulations, you have obtained a Fireworks Pack." )
                 endif
                 
                 if $b == 2                  
                    AddPlayerInfo( -1, "item", 61089, 1 )
                    BC( "screen", "player", -1, "Congratulations, you have obtained a Fireworks Pack." )
                 endif 

                 if $b == 3
                    AddPlayerInfo( -1, "item", 61090, 1 )
                    BC( "screen", "player", -1, "Congratulations, you have obtained a Fireworks Pack." )
                 endif
                      
                 if $b == 4
                    AddPlayerInfo( -1, "item", 61091, 1 )
                    BC( "screen", "player", -1, "Congratulations, you have obtained a Fireworks Pack." )
                 endif
        
              endif
           endif

           if $n >= 2962
              if $n <= 3061
                 AddPlayerInfo( -1, "item", 59556, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a Pet Skill Scroll Fragment." )              
              endif
           endif

           if $n >= 3062
              if $n <= 3561
                 AddPlayerInfo( -1, "item", 64244, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a LV1 Gem Chest." )            
              endif
           endif

           if $n >= 3562
              if $n <= 5061
                 AddPlayerInfo( -1, "item", 6064, 1 )
                 BC( "screen", "player", -1, "Congratulations! You get a Advanced Energy Potion." )             
              endif
           endif

           if $n >= 5062
              if $n <= 10001
                 AddPlayerInfo( -1, "item", 59234, 1 )
                 BC( "screen", "player", -1, "Congratulations, you have obtained a Book of EXP." )            
              endif
           endif

  //??????
  
      // SetPlayerVar(-1, 4053, $Now_Yday )
    // SetPlayerVar(-1, 3381, 0 )
  if $day != $Now_Yday
		SetPlayerVar(-1, 4053, $Now_Yday )
		SetPlayerVar(-1, 3381, 1 )
	else
		$number = $number + 1
		SetPlayerVar(-1, 3381, $number)
	endif

}         
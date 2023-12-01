	------------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2010/08/24
	--		Author：张璨
	--		AIName：id.lua
	--		AIID：家族副本ID库
	--		
	------------------------------------------
	
	--怪物表{怪物ID,怪物数量}
	monster_id = {}
	
	monster_id[1]  = { 51908 , 15 }		--物攻精英																																												
	monster_id[2]  = { 51909 , 15 }		--物攻精英																																												
	monster_id[3]  = { 51910 , 45 }		--物攻大量被动																																												
	monster_id[4]  = { 51911 , 15 }		--魔攻精英																																												
	monster_id[5]  = { 51912 , 15 }		--魔攻精英				9个45级全身蓝装+4的满2级宝石的家族可以打到这里																																								
	monster_id[6]  = { 51913 , 60 }		--魔攻大量被动																																												
	monster_id[7]  = { 51914 , 20 }		--物攻精英				9个60级全身蓝装+4的满2级宝石的家族可以打到这里																																									
	monster_id[8]  = { 51915 , 20 }		--魔攻精英																																											
	monster_id[9]  = { 51916 , 45 }		--物攻大量主动																																										
	monster_id[10] = { 51917 , 1  }		--						9个75级全身蓝装+4的满2级宝石的家族可以打到这里																																												
	monster_id[11] = { 51918 , 20 }		--物攻精英																																														
	monster_id[12] = { 51919 , 20 }		--物攻物防精英																																														
	monster_id[13] = { 51920 , 60 }		--物攻大量主动																																													
	monster_id[14] = { 51921 , 20 }		--魔攻精英																																														
	monster_id[15] = { 51922 , 20 }		--魔攻魔防精英																																														
	monster_id[16] = { 51923 , 45 }		--魔攻大量被动																																													
	monster_id[17] = { 51924 , 20 }		--物攻物防精英			9个85级全身蓝装+4的满3级宝石的的家族可以打到这里																																												
	monster_id[18] = { 51925 , 20 }		--魔攻精英																																														
	monster_id[19] = { 51926 , 60 }		--魔攻大量主动																																													
	monster_id[20] = { 51927 , 2  }		--						9个90级全身灵魂装+4的满3级宝石的家族可以打到这里																																						
	monster_id[21] = { 51928 , 20 }		--物攻精英																																														
	monster_id[22] = { 51929 , 20 }		--物攻精英																																														
	monster_id[23] = { 51930 , 60 }		--物攻大量被动																																													
	monster_id[24] = { 51931 , 20 }		--魔攻精英																																														
	monster_id[25] = { 51932 , 20 }		--魔攻精英																																														
	monster_id[26] = { 51933 , 60 }		--魔攻大量主动																																													
	monster_id[27] = { 51934 , 20 }		--物攻精英																																														
	monster_id[28] = { 51935 , 20 }		--魔攻精英																																														
	monster_id[29] = { 51936 , 60 }		--物攻大量主动																																												
	monster_id[30] = { 51937 , 1  }		--						9个105级全身灵魂装+7的满4级宝石的加星座宠物的家族可以打到这里																																					
	monster_id[31] = { 51938 , 25 }		--物攻物防精英																																														
	monster_id[32] = { 51939 , 25 }		--物攻物防精英																																														
	monster_id[33] = { 51940 , 80 }		--物攻大量主动																																													
	monster_id[34] = { 51941 , 25 }		--魔攻魔防精英																																														
	monster_id[35] = { 51942 , 25 }		--魔攻魔防精英			12个110级全身灵魂装+7的满5级宝石的加星座宠物的家族可以打到这里																																									
	monster_id[36] = { 51943 , 75 }		--魔攻大量主动																																													
	monster_id[37] = { 51944 , 25 }		--物攻物防精英																																														
	monster_id[38] = { 51945 , 25 }		--魔攻魔防精英																																														
	monster_id[39] = { 51946 , 75 }		--魔攻大量主动																																													
	monster_id[40] = { 51947 , 1  }		--						15个120级全身灵魂装+9的5级6级混搭宝石的加星座宠物的家族可以打到这里
	
	--光圈表{光圈怪ID,光圈技能ID,光圈技能等级,概率区间最低值(概率区间为0-10000),概率区间最高值}
	buff_id = {}
	
	buff_id[1] = { 51902 , 2111 , 1 ,   0 ,  25 }																																									
    buff_id[2] = { 51903 , 2112 , 1 ,  26 ,  50 }
    buff_id[3] = { 51904 , 2113 , 1 ,  51 , 100 }
    buff_id[4] = { 51905 , 2152 , 1 , 101 , 150 }
    buff_id[5] = { 51906 , 2153 , 1 , 151 , 200 }
    
    --大招技能表{技能ID,技能等级,技能数量}
    bigskill = {}
    
    bigskill[1] = { 2110 , 1  ,  4 }
    bigskill[2] = { 2110 , 1  ,  4 }
    bigskill[3] = { 2110 , 1  ,  4 }
    bigskill[4] = { 2110 , 1  ,  4 }
    bigskill[5] = { 2110 , 1  ,  4 }
    

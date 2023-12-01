					

function prepare(){
#cardname = "Spring of the Snake"
$indexFALL = 1
$indexWALL = 19
$luckybuffALL = 10000

}
function checkbuff(){
if $indexF == 1
$freeID = 59323
$freeGive = 2
endif






if $indexW == 1
$giftitem = 5
#giftname = "Major Fortify Crystal"
$luckybuff = 2000
$itemgive = 2
$isBC = 0
endif

if $indexW == 2
$giftitem = 44378
#giftname = "Hephaestus' Hammer +7 Scroll"
$luckybuff = 2000
$itemgive = 2
$isBC = 0
endif

if $indexW == 3
$giftitem = 44613
#giftname = "Ancient Coin"
$luckybuff = 2000
$itemgive = 2
$isBC = 0
endif

if $indexW == 4
$giftitem = 2314
#giftname = "Universe Emblem"
$luckybuff = 2600
$itemgive = 2
$isBC = 0
endif

if $indexW == 5
$giftitem = 59323
#giftname = "Money Bag: 100,000 coins"
$luckybuff = 1292
$itemgive = 5
$isBC = 0
endif

if $indexW == 6
$giftitem = 44381
#giftname = "Hephaestus' Hammer +10 Scroll"
$luckybuff = 30
$itemgive = 1
$isBC = 1
endif

if $indexW == 7
$giftitem = 60099
#giftname = "LV13 Chalice Coupon"
$luckybuff = 10
$itemgive = 1
$isBC = 1
endif

if $indexW == 8
$giftitem = 59310
#giftname = "LV5 Gem Chest"
$luckybuff = 25
$itemgive = 1
$isBC = 1
endif

if $indexW == 9
$giftitem = 54291
#giftname = "Silver Spring of the Snake Card"
$luckybuff = 10
$itemgive = 1
$isBC = 1
endif

if $indexW == 10
$giftitem = 44650
#giftname = "Spring of the Snake Fashion Ticket"
$luckybuff = 10
$itemgive = 1
$isBC = 1
endif

if $indexW == 11
$giftitem = 44158
#giftname = "Odin's Soul Jade LV10"
$luckybuff = 10
$itemgive = 1
$isBC = 1
endif

if $indexW == 12
$giftitem = 44383
#giftname = "Hephaestus' Hammer +12 Scroll"
$luckybuff = 3
$itemgive = 1
$isBC = 1
endif

if $indexW == 13
$giftitem = 54292
#giftname = "Gold Spring of the Snake Card"
$luckybuff = 2
$itemgive = 1
$isBC = 1
endif

if $indexW == 14
$giftitem = 64181
#giftname = "Pet Skill Removal Charm"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 15
$giftitem = 62137
#giftname = "Hel's Fury"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 16
$giftitem = 62135
#giftname = "Bragi's Wheel"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 17
$giftitem = 44084
#giftname = "Dimensional Core"
$luckybuff = 3
$itemgive = 1
$isBC = 1
endif

if $indexW == 18
$giftitem = 62620
#giftname = "Athena Soul"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif

if $indexW == 19
$giftitem = 44467
#giftname = "Holy Fortification Fragment"
$luckybuff = 1
$itemgive = 1
$isBC = 1
endif













}

function OnUseItem(){		
	$playerid = GetPlayerID	
	$bag_count = GetPlayerInfo( -1, "nullitem", 0 )	
	call prepare()	
	//??????????(???????+1)	
	$bag_need = $indexFALL + 1	
	if $bag_count < $bag_need	
		BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
		return
	endif	
	$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )	
	//??????????(??????2???...)	
	if $bag_count1 < 2	
		BC( "screen", "player", -1, "Insufficient material bag slots!" )
		return
	endif		
	//-------------------------------------------		????? ??
	//???????,????????
//	$key1 = GetPlayerInfo( -1, "item", 64266 )		
//	$key2 = GetPlayerInfo( -1, "item", 63287 )		
//	if $key1 == 0		
//		if $key2 == 0	
//			BC( "screen", "player", -1, "GUID:06283000022" )
//			return
//		else	
//			$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
//		endif	
//	else		
//		$del_count = SubPlayerInfo( -1, "item", 64266, 1 )	
//	endif		
	//-------------------------------------------		????? ??
	//????
	$itemid = GetItemID()		
	$del_count = SubPlayerInfo(-1,"item",$itemid,1)		
	if $del_count != 0	
		return
	endif	
	//-------------------------------------------
	//???	
	$randombuff = RandomNumber(1,$luckybuffALL)	
	$giftbuffpre = 0	
	//??:$giftbuffpre??????????0??,???????????????	
	//??:$giftbuff??????,??????????,????,?????	
	$indexF = 1	
	while $indexF <= $indexFALL	
		$freeID = 0
		$freeGive = 0
		call checkbuff()
		AddPlayerInfo(-1,"item",$freeID,$freeGive)
		$indexF += 1
	endwhile	
	$indexW = 1		
	while $indexW <= $indexWALL		
		$giftitem = 0	
		#giftname = " "	
		$luckybuff = 0	
		$itemgive = 0	
		$isBC = 0	
		if $giftbuff > $luckybuffALL	
			BC("screen","player",-1,"R1")
			return
		endif	
		call checkbuff()	
		//-------------------------	
		$giftbuff = $giftbuffpre + $luckybuff	
		if $randombuff > $giftbuffpre	
			if $randombuff <= $giftbuff
				AddPlayerInfo($playerid,"item",$giftitem,$itemgive)	
				if $isBC == 1	
					#name = GetPlayerInfo(-1,"name")
					BC("screen","servergroup",-1,"Player",#name," used the",#cardname,"and was lucky enough to receive:",#giftname)
					BC("chat","servergroup",-1,"Player",#name," used the",#cardname,"and was lucky enough to receive:",#giftname)
				endif	
			endif		
		endif			
		$giftbuffpre = $giftbuff			
		//-------------------------			
		$indexW += 1			
	endwhile				
	//??				
//	BC("screen","player",-1,"randombuff = ",$randombuff," | giftbuff = ",$giftbuff)				
}					

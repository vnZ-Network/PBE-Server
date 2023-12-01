function OnRequest(){
	$lang = GetPlayerVar(-1, 3301)
	if $lang < 1
		BC( "messagebox", "player", -1,  "{#FFF23805=Vui lòng chọn Ngôn Ngữ\nPlease chose your Language Pack first#}" )
		DisableNpcOption(0)
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif

}

function OnOption0(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4976)
	#name = "Ethereal Adornment - Holy Might"
	$Sword1 = 43012
	$Armor1 = 43013
	$Signt1 = 43014
	$Pendt1 = 43015
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 10000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif

	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Sword1, 1)
	endif

}

function OnOption1(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4976)
	#name = "Ethereal Adornment - Holy Might"
	$Sword1 = 43012
	$Armor1 = 43013
	$Signt1 = 43014
	$Pendt1 = 43015
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 10000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif	
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Armor1, 1)
	endif

}

function OnOption2(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4976)
	#name = "Ethereal Adornment - Holy Might"
	$Sword1 = 43012
	$Armor1 = 43013
	$Signt1 = 43014
	$Pendt1 = 43015
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 10000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif	
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Signt1, 1)
	endif

}

function OnOption3(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4976)
	#name = "Ethereal Adornment - Holy Might"
	$Sword1 = 43012
	$Armor1 = 43013
	$Signt1 = 43014
	$Pendt1 = 43015
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 10000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Pendt1, 1)
	endif

}

function OnOption4(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4977)
	#name = "Ethereal Adornment - Arcane Energy"
	$Sword2 = 43036
	$Armor2 = 43037
	$Signt2 = 43038
	$Pendt2 = 43039
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 15000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Sword2, 1)
	endif

}

function OnOption5(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4977)
	#name = "Ethereal Adornment - Arcane Energy"
	$Sword2 = 43036
	$Armor2 = 43037
	$Signt2 = 43038
	$Pendt2 = 43039
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 15000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Armor2, 1)
	endif

}

function OnOption6(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4977)
	#name = "Ethereal Adornment - Arcane Energy"
	$Sword2 = 43036
	$Armor2 = 43037
	$Signt2 = 43038
	$Pendt2 = 43039
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 15000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Signt2, 1)
		endif
	endif

}

function OnOption7(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4977)
	#name = "Ethereal Adornment - Arcane Energy"
	$Sword2 = 43036
	$Armor2 = 43037
	$Signt2 = 43038
	$Pendt2 = 43039
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 15000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Pendt2, 1)
	endif

}

function OnOption8(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4978)
	#name = "Ethereal Adornment - Saint Realm"
	$Sword3 = 43060
	$Armor3 = 43061
	$Signt3 = 43062
	$Pendt3 = 43063
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 25000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Sword3, 1)
	endif

}

function OnOption9(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4978)
	#name = "Ethereal Adornment - Saint Realm"
	$Sword3 = 43060
	$Armor3 = 43061
	$Signt3 = 43062
	$Pendt3 = 43063
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 25000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Armor3, 1)
	endif

}

function OnOption10(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4978)
	#name = "Ethereal Adornment - Saint Realm"
	$Sword3 = 43060
	$Armor3 = 43061
	$Signt3 = 43062
	$Pendt3 = 43063
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 25000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Signt3, 1)
		endif
	endif

}

function OnOption11(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4978)
	#name = "Ethereal Adornment - Saint Realm"
	$Sword3 = 43060
	$Armor3 = 43061
	$Signt3 = 43062
	$Pendt3 = 43063
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 25000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Pendt3, 1)
	endif

}

function OnOption12(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4979)
	#name = "Ethereal Adornment - Vanished Deity"
	$Sword4 = 43084
	$Armor4 = 43085
	$Signt4 = 43086
	$Pendt4 = 43087
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 35000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Sword4, 1)
		endif
	endif

}

function OnOption13(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4979)
	#name = "Ethereal Adornment - Vanished Deity"
	$Sword4 = 43084
	$Armor4 = 43085
	$Signt4 = 43086
	$Pendt4 = 43087
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 35000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Armor4, 1)
		endif
	endif

}

function OnOption14(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4979)
	#name = "Ethereal Adornment - Vanished Deity"
	$Sword4 = 43084
	$Armor4 = 43085
	$Signt4 = 43086
	$Pendt4 = 43087
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 35000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Signt4, 1)
	endif

}

function OnOption15(){
	$ItemID = GetItemID()
	$Item = GetPlayerInfo(-1, "item", 4979)
	#name = "Ethereal Adornment - Vanished Deity"
	$Sword4 = 43084
	$Armor4 = 43085
	$Signt4 = 43086
	$Pendt4 = 43087
	$Coin = GetPlayerInfo(-1, "money")
	$reqCoin = 35000000
	if $Coin < reqCoin
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ ", $reqCoin, " Vàng#}")
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough ", $reqCoin, " Coin#}")
		endif
		return
	endif
	if $Item < 125
		if $lang == 1
			BC( "messagebox", "player", -1,"{#FFF79E1C=Bạn không có đủ 125 #}", #name )
		endif
		if $lang == 2
			BC( "messagebox", "player", -1,"{#FFF79E1C=You do not have enough 125 #}", #name )
		endif
		return
	else
		SubPlayerInfo(-1, "item", $Item, 125)
		SubPlayerInfo(-1, "money", $reqCoin)
		AddPlayerInfo(-1, "item", $Pendt4, 1)
	endif

}
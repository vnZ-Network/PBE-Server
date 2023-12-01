//-------------------------------ONUSE FUNCTION
    function OnUseItem(){
        $ItemID = GetItemID()
        if $ItemID == 1000
            call rewardlv1()
        endif

        if $ItemID == 1001
            call rewardlv5()
        endif
    }
//-------------------------------REWARD LEVEL 1
    function rewardlv1(){
        call CheckBag()
        $Pro = GetPlayerInfo(-1,"profession")
        $Lang = GetPlayerVar(-1, )
        $REQBag = 10

        if $Pro == 1
            AddPlayerItem(-1, "item", 5, 10)
        endif
        if $Pro == 2
            AddPlayerItem(-1, "item", 8, 10)
        endif
        
        
    }
//-------------------------------REWARD LEVEL 5
    function rewardlv5(){
        call CheckBag()
        call CheckLvl()
        $Lang = GetPlayerVar(-1, )
        $REQBag = 20
        $REQLvl = 5   
    }
//-------------------------------SYSTEM CHECK
    function CheckBag(){
        $Lang = GetPlayerVar(-1, 3301)
        $Bag1 = GetPlayerInfo(-1, "nullitem", 0)
        $Bag2 = GetPlayerInfo(-1, "nullitem", 1)
        $VN = 1
        $EN = 2

        if $Bag1 < $REQBag
            if $Lang == $VN
                BC("messagebox", "player", -1, "{#FF93D85D=Không đủ không gian trong túi đồ\nCần tối thiểu 10 Ô trống#}")
            endif
            if $Lang == $EN
                BC("messagebox", "player", -1, "{#FF93D85D=You do not have enough Inventory Space\nNeed atleast 10 Inv Slot#}")
            endif            
            return
        endif

        if $Bag2 < $REQBag
            if $Lang == $VN
                BC("messagebox", "player", -1, "{#FF93D85D=Không đủ không gian trong túi nguyên liệu\nCần tối thiểu 10 Ô trống#}")
            endif
            if $Lang == $EN
                BC("messagebox", "player", -1, "{#FF93D85D=You do not have enough Inventory Space\nNeed atleast 10 Inv Slot#}")
            endif
            return
        endif 
    }

    function CheckLvl(){
        $Level = GetPlayerInfo(-1, "level")
        if $Level < $REQLvl
            if $Lang == $VN
                BC("messagebox", "player", -1, "{#FF93D85D=Bạn không đủ cấp độ#}")
            endif
            if $Lang == $EN
                BC("messagebox", "player", -1, "{#FF93D85D=Your level is not match the Gift Pack Requirement#}")
            endif            
            return
        endif

    }
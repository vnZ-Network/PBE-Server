               //----------------------------------------------------------
               //	Task		:"Divine Point Pack"
               //	Author	:"Zenn"
               //	Date		:"11-23-2023"
               //----------------------------------------------------------
//───────────────────────────────────────
//"Lấy thông tin vật phẩm"
//───────────────────────────────────────
     function OnUseItem(){
     //──────────────────────────────────
     //"Sys Check"
     //──────────────────────────────────
          $ItemID = GetItemID()

          if $ItemID == 
               call Pack1()
          endi
          if $ItemID == 
     
     
     
     
     }
//───────────────────────────────────────
//"Pack 1"
//───────────────────────────────────────
     function Pack1(){
          $v_dPoint = 1
          $v_VIP = 4001
          $V_vPoint = 4000
          $vPoint = GetPlayerVar(-1, $V_vPoint)
          $dPoint = GetPlayerInfo(-1, "prestige", 1)
          $dPointAdd = 10
          $vPointAdd = 10
          
          $vPoint = $vPoint + $vPointAdd
          SetPlayerVar(-1, $V_vPoint, $vPoint)
          AddPlayerInfo(-1, "prestige", 1, $dPointAdd)

          
     }
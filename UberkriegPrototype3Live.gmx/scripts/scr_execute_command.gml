// this script activates after unit has moves.
//does not execute if "trap" interups the move action

switch (global.action_order){
    case "supply"   :   scr_exe_supply();   break;
    case "capture"  :   scr_exe_capture();  break;
    case "join"     :   scr_exe_join();     break;
    case "engage"   :   scr_exe_engage();   break;
    case "attach"   :   scr_exe_attach();   break;
    case "wait"     :   scr_exe_wait();     break;     
        }
        
        
//reset global order variables
global.acting_unit  = 0;
global.target_unit  = 0;
//global.move_order   = ds_priority_create();
global.action_order = "wait" ;//default to wait

//update radio status
scr_updateStanding_global();



//hp-1 for now, ammo and fuel max
with (global.target_unit){
    fuel = max_fuel;
    if name != "A.P.C." ammo = max_ammo;
    }

// place active unit back in map array
obj_map.units[global.posX,global.posY] = global.acting_unit; 
//activate UI
instance_activate_object(obj_miniwin);
instance_activate_object(obj_battleCursor);
with obj_battleCursor{
    x = global.posX*24;
    y = global.posY*24;
    }

//set active unit state
global.acting_unit.state =  "exhaust";
global.acting_unit.alarm[0] =  1;
//reset depth
scr_setUnitDepth(global.acting_unit);

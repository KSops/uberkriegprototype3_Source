 

//set graphics east
if scr_inBound(posX+1,posY)
    {
    scr_check_adjacent_terrain(posX+1,posY); //returns var adj
    obj_map.terrains[posX+1,posY].image_index = adj;
    }

//set graphics west
if scr_inBound(posX-1,posY)
    {
    scr_check_adjacent_terrain(posX-1,posY); //returns var adj
    obj_map.terrains[posX-1,posY].image_index = adj;
    }
    

//set Origin graphics
scr_check_adjacent_terrain(posX,posY); //returns var adj
obj_map.terrains[posX,posY].image_index = adj;



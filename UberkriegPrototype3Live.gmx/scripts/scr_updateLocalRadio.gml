target = argument0; //target unit or property


originV_X = target.x div 24;
originV_Y = target.y div 24;

tempV_X = 0;
tempV_Y = 0;

//make self visible


for ( tempV_X= (-1)*target.radio ; tempV_X<= target.radio ; tempV_X+=1 ){ //for each possible value of X in range
    for ( tempV_Y= (-1)*target.radio ; tempV_Y<= target.radio ; tempV_Y+=1 ){ //for each possible value of Y in range
        if ( (abs(tempV_X) + abs(tempV_Y))<= target.radio){ //if x + y is less than max range
            if (target.ownership = global.P_Turn.number){
            
                if scr_inBound(originV_X+tempV_X,originV_Y+tempV_Y){
                    global.rangeCheck[originV_X+tempV_X,originV_Y+tempV_Y].sprite_index = spr_rangecheck_gold;
                    }     
            }
        }    
    }  
}

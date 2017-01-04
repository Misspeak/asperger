///scr_move_state

scr_get_input ();

//Get the length

if (xaxis == 0 and yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face ();
}

//Get hspd and vspd

hspd = lengthdir_x (len, dir);
vspd = lengthdir_y (len, dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Sprite control
image_speed = sign(len)*.2;
if (len == 0) image_index = 0;


switch (face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
            
    case UP:
        sprite_index = spr_player_up;
        break;
    
    case LEFT:
        sprite_index = spr_player_left;
        break;
        
    case DOWN:
        sprite_index = spr_player_down;
        break;
}

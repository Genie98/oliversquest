//control setup
controlsSetup();

//Moving
move_dir = 0; //-1 move to the left, 0 not moving, 1 move to the right
move_spd[0] = 2; //how many pixels per frame left to rigth
move_spd[1] = 3.5;
hsp = 0; //perform speed, left to right
vsp = 0; // perform speed, up and down 
face = 1; //what diriction player is looking 
runType = 0;

//Crouch
crouching = false;

//Jumping
grav = .275; // how many pixels to go downward and faster
termVel = 4;//how fast player can fall per second for pixel
jumpMax = 2;
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldFrames [0] = 18;
jump_speed [0] = -3.15//Has to be a neg in order to jump becasue in gamemaker, the y axis is upsidedown
jumpHoldFrames [1] = 18;
jump_speed [1] = -1.85
onGround = true;

 //sprites
 jumpSpr = spr_player_jump;
 fallSpr = spr_player_fall;
 runSpr = spr_player_run;
 idleSpr = spr_player_idle;
 walkSpr = spr_player_walk;
 maskSpr = spr_player_idle2; 
 crouchSpr = spr_player_lay;
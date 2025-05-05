//control setup
controlsSetup();

//Moving
move_dir = 0; //-1 move to the left, 0 not moving, 1 move to the right
move_spd[0] = 3; //how many pixels per frame left to rigth
move_spd[1] = 4.2;
hsp = 0; //perform speed, left to right
vsp = 0; // perform speed, up and down 
face = 1; //what diriction player is looking 
runType = 0;

//Jumping
grav = .375; // how many pixels to go downward and faster
termVel = 4; //how fast player can fall per second for pixel
jumpMax = 2;
jumpCount = 0;
jumpHoldTimer = 0;
jumpHoldFrames [0] = 18;
jump_speed [0] = -5.15 //Has to be a neg in order to jump becasue in gamemaker, the y axis is upsidedown
jumpHoldFrames [1] = 18;
jump_speed [1] = -4.55
onGround = true;

 //sprites
 jumpSpr = spr_player_jump;
 runSpr = spr_player_run;
 idleSpr = spr_player_idle;
 walkSpr = spr_player_walk;
 maskSpr = spr_player_idle2; 
 crouchSpr = spr_player_lay;
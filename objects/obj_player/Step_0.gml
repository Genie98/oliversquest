//Get Inputis
  getControls(); 
  move_dir = rightKey - leftKey; // X movement Direction
  if move_dir != 0 {face = move_dir}; //faceing
  runType = runKey; 
  hsp = move_dir * move_spd[runType]; //Get xpsd 
//X collison 
  var _subPixel = .5; // hoW close the player can get to the wall without cutting into it
if place_meeting(x + hsp, y, obj_wall) //checks for walls
{ var _pixelCheck = _subPixel * sign(hsp); //Scoor up to wall precisely
  while !place_meeting(x + _pixelCheck, y, obj_wall)
  { x += _pixelCheck; //has to come before xsped to use xsped to determine player to be up againt the wall
  }
 hsp = 0; // Set xspd to zero to "collide"
}
  x += hsp; //Move
  vsp += grav; // Y movement Grav
//Rest and Perpare jumping variables
if onGround 
{
  jumpCount = 0;
  jumpHoldTimer = 0;
  } else {  //if player is in the air, make sure they can't do an extra jump 
    if jumpCount == 0 {jumpCount = 1; }; 
  } 
//Initiate the Jump 
if jumpKeyBuffered && jumpCount < jumpMax
{ // reset the buffer
  jumpKeyBuffered = false;
  jumpKeyBufferTimer = 0;
  jumpCount++;  //Increase the number of performed jumps
  jumpHoldTimer = jumpHoldFrames[jumpCount-1]; //set the jump hold timer
}
if !jumpKey //cutt off the jump by relasing the jump button 
{ jumpHoldTimer = 0 }
//jump based on the timer/holding the button
if jumpHoldTimer > 8
{ vsp = jump_speed[jumpCount-1]; //Constanstly set the yspd tp be jumping speed
  jumpHoldTimer--;  //Count down the timer 
}
//Y Collision and movement 
if vsp > termVel { vsp = termVel; }; //cap falling speed
var _ _subPixel = .5;
if place_meeting( x, y + vsp, obj_wall)
{//Scoot up to the wall precisely
  var _pixelCheck = _subPixel + sign(vsp);
  while !place_meeting(x, y + _pixelCheck, obj_wall)
  { y += _pixelCheck;
    }
  //Bonk Coding
  if vsp  <0
  {jumpHoldTimer = 0;
    }
  vsp = 0;  //Set vsp to 0 to collide
}
//Set if on ground
if vsp >= 0 && place_meeting( x, y+1, obj_wall)
{ onGround = true;
} else {
  onGround = false;
}//Move
y += vsp; 
//sprite control
if abs(hsp) > 0 { sprite_index = spr_player_walk; }; //walking
if hsp == 0 { sprite_index = spr_player_idle; }; //not moving
if abs(hsp) >= move_spd[1] { sprite_index = spr_player_run; }; //running
if !onGround { sprite_index = spr_player_jump; }; //in air
mask_index = maskSpr; 
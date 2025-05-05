function controlsSetup()
{
  bufferTime = 30;
  
  jumpKeyBuffered = 0;
  jumpKeyBufferTimer = 0;
}

function getControls(){
// Direrction Inputs
rightKey = keyboard_check(vk_right) + keyboard_check(ord("D")); //can use either right arrow key or D key to move right
  rightKey = clamp(rightKey, 0, 1);
leftKey = keyboard_check(vk_left) + keyboard_check(ord("A")); //can use either left arrow key or A key to move Left
  leftKey = clamp(leftKey, 0, 1);
  
// Action Inputs
jumpKeyPress = keyboard_check_pressed(vk_space);
jumpKey = keyboard_check(vk_space) 

runKey = keyboard_check(ord("R")); 
runKey = clamp(runKey, 0, 1 );

//Jemp Key Buffering
if jumpKeyPress

{
  jumpKeyBufferTimer = bufferTime;
 }
  
if jumpKeyBufferTimer > 0

 {
  jumpKeyBuffered = 1;
  jumpKeyBufferTimer --;
 } else {
   jumpKeyBuffered = 0;
 }
  
}


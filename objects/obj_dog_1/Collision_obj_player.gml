/// @desc Collision With Player
// If the player is at least 16 px above the enemy
if (other.y < y - sprite_height / 2) {
  with (other) {
    vsp = -jump_speed / 2;
  }
  
  // Destroy enemy
  instance_destroy();
}
// Otherwise, the player must NOT be above the enemy
else {
  room_restart();
}
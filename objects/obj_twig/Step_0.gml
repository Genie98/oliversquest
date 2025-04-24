hsp = dir * move_speed;
vsp += grav;
// Nearly identical to player's movement, except, when the enemy hits the wall, it changes direction.
// Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall)) {
  // Move as close as possible to the wall in the x-direction without touching it
  while (!place_meeting(x + sign(hsp), y, obj_wall)) {
    // Move 1 px in current horizontal x-direction
    x += sign(hsp);
  }
  // Stop before you hit the wall
  hsp = 0;
  // Negate/change direction
  dir = -dir;
}
// Update the enemy's x-position
x += hsp;
// Vertical Collision
if (place_meeting(x, y + vsp, obj_wall)) {
  // Move as close as possible to the wall in the y-direction
  // without touching it  
  while (!place_meeting(x, y + sign(vsp), obj_wall)) {
    // Move 1 px in the current vertical y-direction
    y += sign(vsp);
  }

  // Stop before you hit the wall/platform
  vsp = 0;
}
// Update the enemy's y-position
y += vsp;
// exit if ther is no player
if !instance_exists(obj_player) exit;

//Get camers size
var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);

//Get camrea target coordinates
var _camX = obj_player .x - _camWidth/2;
var _camY = obj_player .y - _camHeight/2;

//Constrain Cam to room boarders
_camX = clamp(_camX, 0, room_width - _camWidth);
_camY = clamp(_camY, 0, room_height - _camWidth); 

//Get camrea coordinates at start of room
finalCamX = obj_player .x - _camWidth/2;
finalCamY = obj_player .y - _camHeight/2;

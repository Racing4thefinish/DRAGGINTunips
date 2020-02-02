/// @description Insert description here
// You can write your code in this editor

// Create the dragon
global.ID_dragon = instance_create_depth(500, room_height/2.0, 0, obj_dragon);

instance_create_depth(0,0,0, obj_enemySpawner);

// Create the ground
instance_create_depth(0,0,0, obj_createGround);

instance_create_depth(0,0,0, obj_displayGameOver);
instance_create_depth(0,0,0, obj_messageDisplay);
instance_create_depth(0,0,0, obj_timer);
global.game_dt = 0.0;
global.ID_input_controller = noone;
global.ID_dragon = noone;

instance_create_depth(0,0,0, obj_game_dt_controller);
instance_create_depth(0,0,0, obj_cameraController);
global.ID_input_controller = instance_create_depth(0,0,0, obj_input_controller);

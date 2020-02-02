global.game_dt                    = 0.0;
global.ID_input_controller        = noone;
global.ID_dragon                  = noone;
global.y_loc_house                = room_height - sprite_get_height(spr_ground)
global.ID_houseLocationController = noone;
global.EVENT_GAME_OVER            = false;
global.num_completed_houses       = 0;
global.num_houses                 = 5;
global.housesCompleted            = 0;
global.housesInProgress           = 0;
global.num_turnips                = 0;
global.total_game_time            = 0.0;

instance_create_depth(0, 0, 0, obj_game_dt_controller);
instance_create_depth(0, 0, 0, obj_cameraController);
instance_create_depth(0, 0, 0, obj_soundController);
global.ID_houseLocationController = instance_create_depth(0, 0, 0, obj_houseLocationController);
global.ID_input_controller        = instance_create_depth(0,0,0, obj_input_controller);

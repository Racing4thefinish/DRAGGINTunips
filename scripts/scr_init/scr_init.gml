global.game_dt                    = 0.0;
global.ID_input_controller        = noone;
global.ID_dragon                  = noone;
global.y_loc_house                = room_height - sprite_get_height(spr_ground)
global.ID_houseLocationController = noone;

instance_create_depth(0, 0, 0, obj_game_dt_controller);
instance_create_depth(0, 0, 0, obj_cameraController);
global.ID_houseLocationController = instance_create_depth(0, 0, 0, obj_houseLocationController);
global.ID_input_controller        = instance_create_depth(0,0,0, obj_input_controller);

var _save = ds_map_create();
ds_map_add(_save,"userMoney",global.userMoney);
ds_map_secure_save(_save, "userInformation.dat");
ds_map_destroy(_save);
room_goto(room_start);
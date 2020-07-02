if (file_exists("userInformation.dat")){
	var _save = ds_map_create();
	_save = ds_map_secure_load("userInformation.dat");
	global.userMoney = _save[? "userMoney"];
	ds_map_destroy(_save);
}
/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

var _runTo = collision_circle(x,y,100,obj_warrior,false,true);
if (_runTo != noone){	//附近有勇者掉落物品奔向勇者
	var _dir = point_direction(x,y,_runTo.x,_runTo.y);
	motion_set(_dir,5);
	if (point_distance(x,y,_runTo.x,_runTo.y) <= 5){	//物品消失
		if (_runTo.bag[? itemId] == undefined){
			ds_map_add(_runTo.bag,itemId,1);
		}
		else{
			_runTo.bag[? itemId] += 1;
		}
		instance_destroy();
	}
}
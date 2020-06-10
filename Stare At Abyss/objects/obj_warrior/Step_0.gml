/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

if (condition == 0){
	show_debug_message("wdnmd");
	//需添加判断条件
	condition = "goto";
}

if (condition == "goto"){
	var inst=instance_nearest(x,y,obj_door);
	mp_potential_step(inst.x,inst.y,spd,false);
	if (collision_circle(x,y,sig,obj_monster,false,true) && !noCharge){
		condition = "charge";
	}
}

if (condition == "escape"){
	
}

if (condition == "charge"){
	var _monsterList = ds_list_create();
	var _num = collision_circle_list(x,y,sig,obj_monster,false,true,_monsterList,true);
	if (_num > 0){
		target = _monsterList[| 0];
	}
	if (!collision_circle(x,y,sig*1.2,obj_monster,false,true) || _num == 0){		//参数可调
		target = 0;
		condition = "goto";
	}
	if (collision_circle(x,y,att_rge/2,obj_monster,false,true)){	//参数可调
		condition = "attack";
	}
	if (target != 0){
		mp_potential_step(target.x,target.y,spd,false);
	}
	ds_list_destroy(_monsterList);
}

if (condition == "attack"){
	if (!collision_circle(x,y,att_rge,obj_monster,false,true)){
		condition = "charge";
	}
}

//一直都追不上，烦死了
if (condition != "charge"){
	alarm[0] = 5*room_speed;
}

//目前暂定逃跑优先级最高
if (hp <= 20){
	condition = "escape";
}

//判定是否死亡
if (hp <= 0){
	instance_destroy();
}
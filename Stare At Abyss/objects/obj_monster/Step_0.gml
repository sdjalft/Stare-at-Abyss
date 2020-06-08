/// @description ai逻辑
// 你可以在此编辑器中写入代码

if (condition == 0){
	show_debug_message("wdnmd");
	//需添加判断条件
	condition = "patrol";
}

if (condition == "patrol"){
	if (point_distance(x,y,xNext,yNext) <= 2){
		speed = 0;
	}
	if (collision_circle(x,y,sig,obj_warrior,false,true)){
		speed = 0;
		target = collision_circle(x,y,sig,obj_warrior,false,true);
		condition = "charge";
	}
	//主体ai在alarm[0]中执行
}

if (condition == "escape"){
	hp -= 0.2;
	var _dir = point_direction(target.x,target.y,x,y);
	motion_set(_dir,spd*2);
}

if (condition == "charge"){
	if (!collision_circle(x,y,sig*1.2,obj_warrior,false,true)){	//参数可调
		target = 0;
		condition = "patrol";
	}
	if (collision_circle(x,y,att_rge/2,obj_warrior,false,true)){	//参数可定
		condition = "attack";
	}
	if (target != 0){
		mp_potential_step(target.x,target.y,spd,false);
	}
}

if (condition == "attack"){
	hp -= 0.3;	//仅用来测试
	if (!collision_circle(x,y,att_rge,obj_warrior,false,true)){
		condition = "charge";
	}
}

//目前暂定逃跑优先级最高
if (hp <= 20){
	condition = "escape";
}

//判定是否死亡
if (hp <= 0){
	instance_destroy();
}
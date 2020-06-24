/// @description ai逻辑
// 你可以在此编辑器中写入代码

if (condition == 0){
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
	mp_potential_step(xNext,yNext,spd,false);
	//主体ai在alarm[0]中执行
}

if (condition == "escape"){
	hp -= 0.2;
	var _dir = point_direction(target.x,target.y,x,y);
	xNext = x+lengthdir_x(spd*2,_dir);
	yNext = y+lengthdir_y(spd*2,_dir);
	mp_potential_step(xNext,yNext,spd*2,false);
}

if (condition == "charge"){
	if (!collision_circle(x,y,sig*1.2,obj_warrior,false,true)){	//参数可调
		target = 0;
		condition = "patrol";
	}
	if (collision_circle(x,y,att_rge*0.5,target,false,true) && !isRemote){	//参数可定
		condition = "attack";
	}
	if (collision_circle(x,y,att_rge*0.8,target,false,true) && isRemote){
		condition = "attack";
	}
	if (target != 0){
		mp_potential_step(target.x,target.y,spd,false);
	}
}

if (condition == "attack"){
	hp -= 0.3;	//仅用来测试
	target.chouHen = self;
	if (canKite){
		if (collision_circle(x,y,att_rge*0.5,obj_warrior,false,true)){
			var _dir = point_direction(target.x,target.y,x,y);
			xNext = x+lengthdir_x(att_rge*0.3,_dir);
			yNext = y+lengthdir_y(att_rge*0.3,_dir);
			kitting = true;
		}
		if (kitting){
			zouAing = false;
			mp_potential_step(xNext,yNext,spd,false);
			if (abs(x-xNext) <= 1){
				kitting = false;
			}
		}
		else{
			if (canZouA){	//走A
				var _dir = point_direction(target.x,target.y,x,y);
				var _dis = sqrt(power(bbox_top-bbox_bottom,2)+power(bbox_right-bbox_left,2));
				var _ni = true;
				var _shun = true;
				var _bai = 90;	//走A角度
				if (zouARot != 2){
					for (var _cc = 1; _cc < 3; _cc += 1){	//距离判断可调
						var _xni = x+lengthdir_x(_dis*_cc,_dir-_bai);
						var _yni = y+lengthdir_y(_dis*_cc,_dir-_bai);
						if (place_meeting(_xni,_yni,obj_monster)){
							_ni = false;
							break;
						}
					}
				}
				else{
					_ni = false;
				}
				if (zouARot != 1){
					for (var _cc = 1; _cc < 3; _cc += 1){	//距离判断可调
						var _xshun = x+lengthdir_x(_dis,_dir+_bai);
						var _yshun = y+lengthdir_y(_dis,_dir+_bai);
						if (place_meeting(_xshun,_yshun,obj_monster)){
							_shun = false;
							break;
						}
					}
				}
				else{
					_shun = false;
				}
				if (_shun){	//如果顺时针方向可以走A
					if (_ni){
						if (fondZouAShun){
							zouARot = 2;
						}
						else{
							zouARot = 1;
						}
					}
					else{
						zouARot = 2;
					}
				}
				else{
					if (_ni){
						zouARot = 1;
					}
					else{
						zouARot = 0;
					}
				}
				switch (zouARot){
					case 0:	zouAing = false;
							break;
					case 1:	xNext = x+lengthdir_x(_dis,_dir-_bai);
							yNext = y+lengthdir_y(_dis,_dir-_bai);
							zouAing = true;
							break;
					case 2:	xNext = x+lengthdir_x(_dis,_dir+_bai);
							yNext = y+lengthdir_y(_dis,_dir+_bai);
							zouAing = true;
							break;
				}
			}
			if (zouAing){
				mp_potential_step(xNext,yNext,spd,false);
			}
		}
	}
	if (!collision_circle(x,y,att_rge,obj_warrior,false,true)){
		kitting = false;
		zouAing = false;
		condition = "patrol";
	}
}

//消除仇恨
if (condition != "attack" && target != 0){
	target.chouHen = 0;
}

//目前暂定逃跑优先级最高
if (hp <= 20){
	condition = "escape";
}

//判定是否死亡
if (hp <= 0){
	instance_destroy();
}
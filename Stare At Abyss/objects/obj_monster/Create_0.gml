/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//定义初始属性
hp = 100;	//血量
spd = 3;	//速度
att_rge = 80;	//攻击范围
att_tim = 1.5;	//攻击间隔
str = 10;	//力量
def = 20;	//防御力
int = 20;	//智力
cou = 50;	//勇气值
tou = 0;	//韧性
sig = 300;	//视野
condition = 0;	//当前状态

//注：状态一览表
//0: 待命
//patrol: 巡逻
//escape: 撤离
//hide: 躲藏
//charge: 冲向一个对象
//attack: 攻击对象


//私有变量
xNext = x;
yNext = y;

//启动部分AI
alarm[0]=room_speed;
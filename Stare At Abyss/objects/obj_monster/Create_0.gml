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

//判断一些智能操作的东西，之后替换为公式
canKite = choose(true,false);	//是否会使用风筝战术
kitting = false;	//是否正在风筝
if (canKite){
	canZouA = choose(true,false);	//是否会使用走A（环形骑射形容更加恰当，但h&r描述简单）
	zouAing = false;	//是否正在走A
	att_rge = 160;	
	spd = 5;	//方便调试
}
fondZouAShun = choose(true,false);	//是否更偏好顺时针zouA

//私有变量
xNext = x;
yNext = y;

//启动部分AI
alarm[0]=room_speed;
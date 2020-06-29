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
isRemote = false;	//是否是远程攻击
chouHen = 0;
condition = 0;	//当前状态
att_cooldown = 0;	//攻击冷却

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
zouAing = false;	//是否正在走A
zouARot = 0;	//走A方向,0代表无法走A，1代表逆时针走A，2代表顺时针走A
if (canKite){
	isRemote = true;
	canZouA = choose(true,false);	//是否会使用走A（环形骑射形容更加恰当，但h&r描述简单）
	att_rge = 160;	
	spd = 5;	//方便调试
}
fondZouAShun = choose(true,false);	//是否更偏好顺时针zouA

//私有变量
xNext = x;
yNext = y;

//启动部分AI
alarm[0]=room_speed;
/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//定义全局变量
global.kill = 0;
//定义初始属性
hp = 100;	//血量
spd = 3;	//速度
att_rge = 100;	//攻击范围
att_tim = 1.5;	//攻击间隔
str = 10;	//力量
def = 20;	//防御力
int = 20;	//智力
cou = 50;	//勇气值
tou = 0;	//韧性
sig = 500;	//视野
isRemote = false;	//是否是远程攻击
chouHen = 0;	//仇恨所在
condition = 0;	//当前状态
att_cooldown = 0;	//攻击冷却

//背包
bag = ds_map_create();
gold = 0;
ds_map_add(bag,1,3);
ds_map_add(bag,2,2);
ds_map_add(bag,3,1);

//注：状态一览表
//0: 待命
//goto：前往目的地
//escape: 撤离
//hide: 躲藏
//charge: 冲向一个对象
//attack: 攻击对象
//pick: 收集物品

//判断一些智能操作的东西，之后替换为公式
noCharge = false;
canKite = false;
kitting = false;
if (isRemote){
	att_rge = 200;
	canKite = true;
}
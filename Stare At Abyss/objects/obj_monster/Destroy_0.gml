/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

with (obj_warrior){
	if (target == self){
		target.target = 0;
		target.chouHen = 0;
	}
}
global.kill += 1;
var _item = instance_create_layer(x,y,"Instances",obj_item);
_item.itemId = irandom_range(1,3);
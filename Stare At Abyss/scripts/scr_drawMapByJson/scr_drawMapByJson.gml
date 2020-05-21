//该脚本需要传入的参数为：scr_mapJsonDeal返回的list值，图块集名称，起始的x、y位置，无返回值
//注：该脚本只能在绘制事件中使用

var list1 = argument0;
var tile = argument1;
var xx = argument2;
var yy = argument3;
for (var _cc = 2; _cc < ds_list_size(list1); _cc += 3){
	draw_tile(tile,list1[| _cc+2],0,xx+list1[| _cc+1]*32,yy+list1[| _cc]*32);
}
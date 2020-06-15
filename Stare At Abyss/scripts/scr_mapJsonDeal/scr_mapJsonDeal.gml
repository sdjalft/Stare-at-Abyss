//该脚本需要传入的参数为：地图的json文件名，返回一个字典，配合scr_drawMapByJson绘图使用

var file = file_text_open_read(argument0);
var map1 = file_text_readln(file);
file_text_close(file);
var resultMap1 = ds_map_create();
resultMap1 = json_decode(map1);
//var list1 = ds_list_create();
//ds_list_add(list1,resultMap1[? "height"]);
//ds_list_add(list1,resultMap1[? "width"]);
//var _cc = 1;
//var temp = resultMap1[? string(_cc)];
//while(!is_undefined(temp)){
//	ds_list_add(list1,temp);
//	_cc += 1;
//	temp = resultMap1[? string(_cc)];
//}
//ds_map_destroy(resultMap1);
return resultMap1;
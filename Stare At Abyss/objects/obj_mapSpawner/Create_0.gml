/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

var mapForWhole = ds_list_create();
listForWhole = ds_list_create();
map1 = scr_mapJsonDeal("map1.json");
ds_list_add(mapForWhole,map1);
map2 = scr_mapJsonDeal("map2.json");
ds_list_add(mapForWhole,map2);
for (var _cc = 0; _cc < ds_list_size(mapForWhole); _cc += 1){
	var _mapList = ds_list_create();
	var a = mapForWhole[| _cc];
	var _h = a[? "height"];
	var _w = a[? "width"];
	var _layerList = ds_list_create();
	_layerList = a[? "layer"];
	for (var _dd = 0; _dd < ds_list_size(_layerList); _dd += 1){
		var _tempList = ds_list_create();
		ds_list_add(_tempList,_h,_w);
		var _dataMap = ds_map_create();
		var b = _layerList[| _dd];
		ds_list_add(_mapList,"haha");	//测试
		_dataMap = b[? "data"];
		var _dataSize = ds_map_size(_dataMap);
		var _dataKey = ds_map_find_first(_dataMap);
		for (var _ee = 0; _ee < _dataSize; _ee += 1){
			ds_list_add(_tempList,_dataKey);
			var _tile = ds_list_create();
			_tile = ds_map_find_value(_dataMap,_dataKey);
			for (var _ff = 0; _ff < ds_list_size(_tile); _ff += 1){
				var c = _tile[| _ff];
				ds_list_add(_tempList,c[? "x"],c[? "y"],c[? "index"]);
			}
		}
		ds_list_add(_mapList,_tempList);
	}
	ds_list_add(listForWhole,_mapList);
}
/*ds_map嵌套读取示例
show_debug_message("test");

jsonString= json_decode("{\"toolbox\": {\"feature\": {\"saveAsImage\": [0,1,2]}},\"sss\": \"222\"}");
show1=jsonString[? "toolbox"];
show2=show1[? "feature"];
show3=show2[? "saveAsImage"];
fin=show3[| 0];
//[? "feature"][? "saveAsImage"];
show_debug_message(jsonString);
*/
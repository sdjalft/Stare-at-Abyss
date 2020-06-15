//该脚本需要传入的参数为：scr_mapJsonDeal返回的map处理完成的list，起始的x、y位置，无返回值
//注：该脚本只能在绘制事件中使用

var list1 = argument0;
var xx = argument1;
var yy = argument2;
var _preLayer = "mapSpawner";
for (var _cc = 0; _cc < ds_list_size(list1); _cc += 1){
	var _layerName;
	if (is_string(list1[| _cc])){
		_layerName = list1[| _cc];
		var _sd = layer_get_id_at_depth(layer_get_depth(layer_get_id(_preLayer))+200);
		if (_sd[0] == -1){
			var _ln = layer_create(layer_get_depth(layer_get_id(_preLayer))+200,_layerName);
		}
		else{
			var _s = layer_get_id_at_depth(layer_get_depth(layer_get_id(_preLayer))+200);
			var _ln = _s[0];
		}
		var _x = layer_get_all_elements(layer_get_id(_preLayer));
		layer_element_move(_x[0],layer_get_id(_layerName));
		_preLayer = _layerName;
	}
	else{
		var _tileName;
		var list2 = ds_list_create();
		list2 = list1[| _cc];
		for (var _dd = 2; _dd < ds_list_size(list2); ){
			if (is_string(list2[| _dd])){
				_tileName = list2[| _dd];
				_dd += 1;
			}
			else{
				draw_tile(asset_get_index(_tileName),list2[| _dd+2],0,xx+list2[| _dd]*32,yy+list2[| _dd+1]*32);
				_dd += 3;
			}
		}
	}
}
var _x = layer_get_all_elements(layer_get_id(_preLayer));
layer_element_move(_x[0],layer_get_id("mapSpawner"));

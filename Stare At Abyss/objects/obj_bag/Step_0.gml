/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

//实时同步大小和调整位置
image_xscale = global.currentZoom;
image_yscale = global.currentZoom;
x = camera_get_view_x(view_camera[0])+global.currentZoom*window_get_width()/2-sprite_width/2;
y = camera_get_view_y(view_camera[0])+global.currentZoom*window_get_height()/2-sprite_height/2;

if (fatherId.newItem){
	for (var _cc = 0; _cc < ds_list_size(items); _cc++){
		instance_destroy(items[| _cc]);
	}
	ds_list_clear(items);
	var _items = ds_map_create();
	ds_map_copy(_items,fatherId.bag);
	var _size = ds_map_size(_items);
	var _key = ds_map_find_first(_items);
	var _location = 0;	//定位item位置
	for (var _cc = 0; _cc < _size; _cc += 1){
		var _inst = instance_create_layer(x,y,"Bag",obj_itemInBag);
		_inst.fatherId = self;
		_inst.itemId = _key;
		_inst.amount = _items[? _key];
		_inst.location = _location;
		_location += 1;
		_key = ds_map_find_next(_items,_key);
		ds_list_add(items,_inst);
	}
	for (var _cc = 0; _cc < _size-1; _cc += 1){
		for (var _dd = _cc+1; _dd < _size; _dd += 1){
			if (items[| _cc].itemId > items[| _dd].itemId){
				var temp =  items[| _cc];
				items[| _cc] = items[| _dd];
				items[| _dd] = temp;
				var lo = items[| _cc].location;
				items[| _cc].location = items[| _dd].location;
				items[| _dd].location = lo;
			}
		}
	}
	fatherId.newItem = false;
}
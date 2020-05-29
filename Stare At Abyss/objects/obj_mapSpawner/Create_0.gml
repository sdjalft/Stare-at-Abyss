/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

list1 = scr_mapJsonDeal("map1.json");
list2 = scr_mapJsonDeal("map2.json");
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
/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

draw_self();
draw_text(x-22,y-12,"勇者");
switch (condition){
	case 0:	draw_text(x-32,y+32,"待命"); break;
	case "goto": draw_text(x-32,y+32,"冲向目标点"); break;
	case "escape": draw_text(x-32,y+32,"撤离"); break;
	case "charge": draw_text(x-32,y+32,"冲冲冲"); break;
	case "attack": draw_text(x-32,y+32,"攻击"); break;
	case "pick": draw_text(x-32,y+32,"捡东西"); break;
}
draw_text(x-32,y+52,"杀怪数:"+string(global.kill));
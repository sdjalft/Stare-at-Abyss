/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

draw_self();
draw_text(x-22,y-12,"怪物");
draw_text(x-32,y+52,direction);
if (canKite){
	if (canZouA){
		draw_text(x-32,y+72,"会走A");
	}
	else{
		draw_text(x-32,y+72,"会风筝");
	}
}
switch (condition){
	case 0:	draw_text(x-32,y+32,"待命"); break;
	case "patrol": draw_text(x-32,y+32,"巡逻"); break;
	case "escape": draw_text(x-32,y+32,"撤离"); break;
	case "charge": draw_text(x-32,y+32,"冲冲冲"); break;
	case "attack": draw_text(x-32,y+32,"攻击"); break;
}
if (hp >= 60){
	draw_sprite_ext(spr_healthBar,0,x,y-48,hp/100,1,0,c_green,1);
}
if (hp < 60 && hp >= 20){
	draw_sprite_ext(spr_healthBar,0,x,y-48,hp/100,1,0,c_yellow,1);
}
if (hp < 20){
	draw_sprite_ext(spr_healthBar,0,x,y-48,hp/100,1,0,c_red,1);
}
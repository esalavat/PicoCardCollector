function draw_card_bg(x,y,col_border,col_bg,col_info_bg)
	--background
	rectfill(x+1,y+1,x+38,y+53,col_bg)
	line(x+2,y,x+37,y,col_border)
	line(x+2,y+54,x+37,y+54,col_border)
	line(x,y+2,x,y+52,col_border)
	line(x+39,y+2,x+39,y+52,col_border)
	pset(x+1,y+1,col_border)
	pset(x+38,y+1,col_border)
	pset(x+38,y+53,col_border)
	pset(x+1,y+53,col_border)
	
	--info box
	rectfill(x+4,y+33,x+35,y+51,col_info_bg)
	line(x+3,y+34,x+3,y+50,col_info_bg)
	line(x+36,y+34,x+36,y+50,col_info_bg)
end

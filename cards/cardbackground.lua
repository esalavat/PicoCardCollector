function draw_card_bg(x,y,col)
	rectfill(x+1,y+1,x+38,y+53,col)
end

function draw_card_border(x,y,col)
	line(x+2,y,x+37,y,col)
	line(x+2,y+54,x+37,y+54,col)
	line(x,y+2,x,y+52,col)
	line(x+39,y+2,x+39,y+52,col)
	pset(x+1,y+1,col)
	pset(x+38,y+1,col)
	pset(x+38,y+53,col)
	pset(x+1,y+53,col)
end

function draw_card_info(x,y,col)
	rectfill(x+4,y+33,x+35,y+51,col)
	line(x+3,y+34,x+3,y+50,col)
	line(x+36,y+34,x+36,y+50,col)
end
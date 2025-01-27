function _init()
	
end

function _draw()
	draw_background()
	cards[1]:render(2,2)
	cards[2]:render(44,2)
	cards[3]:render(86,2)
	cards[4]:render(2,59)
	cards[5]:render(44,59)
	cards[6]:render(86,59)
end

function draw_background()
    rectfill(0,0,127,127,3)
end



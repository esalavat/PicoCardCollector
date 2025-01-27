function _init()
	
end

function _draw()
	cls()
	--draw_background()
	--draw_card_bg(5,5,0,7,12)
	cards[1]:render(0,0)
	cards[2]:render(64,0)
end

function draw_background()
    rectfill(0,0,127,127,3)
end



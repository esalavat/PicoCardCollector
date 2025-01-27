card={}
card.__index=card

function card:new(id,draw)
	local obj=setmetatable({},card)
	obj.id=id
	obj.draw=draw
	return obj
end

function card:render(x,y)
    for i, shape in ipairs(self.draw) do
        local cmd = shape[1] 
        if cmd == "rectfill" then
            local x1, y1, x2, y2, col = shape[2], shape[3], shape[4], shape[5], shape[6]
            rectfill(x+x1, y+y1, x+x2, y+y2, col)
        elseif cmd == "rect" then
            local x1, y1, x2, y2, col = shape[2], shape[3], shape[4], shape[5], shape[6]
            rect(x+x1, y+y1, x+x2, y+y2, col)
        elseif cmd == "line" then
            local x1, y1, x2, y2, col = shape[2], shape[3], shape[4], shape[5], shape[6]
            line(x+x1, y+y1, x+x2, y+y2, col)
        elseif cmd == "circfill" then
            local x1, y1, r, col = shape[2], shape[3], shape[4], shape[5]
            circfill(x+x1, y+y1, r, col)
        elseif cmd == "circ" then
            local x1, y1, r, col = shape[2], shape[3], shape[4], shape[5]
            circ(x+x1, y+y1, r, col)
        elseif cmd == "tri" then
            local x1, y1, x2, y2, x3, y3, col = shape[2], shape[3], shape[4], shape[5], shape[6], shape[7], shape[8]
            p01_triangle_163(x+x1,y+y1,x+x2,y+y2,x+x3,y+y3,col)
        elseif cmd == "cardbg" then
            local x1, y1, col = shape[2], shape[3], shape[4]
            draw_card_bg(x+x1,y+y1,col)
        elseif cmd == "cardinfo" then
            local x1, y1, col = shape[2], shape[3], shape[4]
            draw_card_info(x+x1,y+y1,col)
        elseif cmd == "cardborder" then
            local x1, y1, col = shape[2], shape[3], shape[4]
            draw_card_border(x+x1,y+y1,col)
        end
    end
end


function p01_triangle_163(x0,y0,x1,y1,x2,y2,col)
    color(col)
    if(y1<y0)x0,x1,y0,y1=x1,x0,y1,y0
    if(y2<y0)x0,x2,y0,y2=x2,x0,y2,y0
    if(y2<y1)x1,x2,y1,y2=x2,x1,y2,y1
    col=x0+(x2-x0)/(y2-y0)*(y1-y0)
    p01_trapeze_h(x0,x0,x1,col,y0,y1)
    p01_trapeze_h(x1,col,x2,x2,y1,y2)
end
function p01_trapeze_h(l,r,lt,rt,y0,y1)
    lt,rt=(lt-l)/(y1-y0),(rt-r)/(y1-y0)
    if(y0<0)l,r,y0=l-y0*lt,r-y0*rt,0
    y1=min(y1,128)
    for y0=y0,y1 do
     rectfill(l,y0,r,y0)
     l+=lt
     r+=rt
    end
end
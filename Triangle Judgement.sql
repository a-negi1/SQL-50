 select x,y,z,
    if(x+y>z and x+z>y and y+x>z,"Yes","No") as triangle
from Triangle
 select x,y,z,
    if(x+y>z and x+z>y and y+z>x,"Yes","No") as triangle
from Triangle

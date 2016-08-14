module triangle(radius)
{
  o=radius/2;		//equivalent to radius*sin(30)
  a=radius*sqrt(3)/2;	//equivalent to radius*cos(30)
  polygon(points=[[-a,-o],[0,radius],[a,-o]],paths=[[0,1,2]]);
}

// triangle(140);

    
projection(cut=false)    
rotate(90, [0, 1, 0]) scale([1,1,2])
 for (i = [10:50]){
    assign (angle = i*360/20, distance = i*6, r = i*2){
        rotate(angle, [1, 0, 0])
        translate([0, distance, 0])
        rotate(30-(angle/2)%20, [0, 1, 0]) rotate([0, 0, -50]) scale([1, 2, 1]) linear_extrude(height=1)triangle(r);
    }
}
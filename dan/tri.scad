module teeth(n) {
	for(i = [0:n-1]) {
		translate([0,i*2*20]) {
			square([20,20]);
		}		
	}
}

module triangle(radius)
{
  o=radius/2;		//equivalent to radius*sin(30)
  a=radius*sqrt(3)/2;	//equivalent to radius*cos(30)
  polygon(points=[[-a,-o],[0,radius],[a,-o]],paths=[[0,1,2]]);
}

module trap(w, h, a) {
	offset = h*tan(a);	
	polygon([[0,0],[w,0],[w+offset,h],[-offset,h]], conexity=10);
}

dist = 69.99;
offset = 10;

triangle(140);

rotate(30) translate([dist, -90 - offset]) {
	teeth(5);
}
rotate(-90) translate([dist, -90 - offset]) {
	teeth(5);
}

rotate(-210) translate([dist, -90 - offset]) {
	teeth(5);
}


angle = 10;
height = 260;
width = 40;
upper = 1;
tooth_depth = 5;
tooth_count = 2;
tooth_width = 70;

// w=depth of teeth
module teeth(n, d, w) {
	for(i = [0:n-1]) {
		translate([0,i*2*w]) {
			square([d,w]);
		}		
	}
}

module trap(w, h, a) {
	offset = h*tan(a);	
	polygon([[0,0],[w,0],[w+offset,h],[-offset,h]], convexity=10);
}

difference() {
	translate([-width/2, 0]) trap(width, height, angle);
}

// right
//rotate(-angle) 
translate([width/2-0.01, 0])  
rotate(-angle) 
translate([0, tooth_width])
{
	teeth(tooth_count, tooth_depth, tooth_width);
}

// left
translate([-width/2+0.01, 0])
mirror([width/2, 0, 0])
rotate(-angle) 
translate([0, tooth_width])
{
	teeth(tooth_count, tooth_depth, tooth_width);
}

// top
translate([40, height]) rotate(90) {
	//teeth(2, tooth_depth);
}

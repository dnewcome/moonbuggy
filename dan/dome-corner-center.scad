angle = 30;
height = 160;
width = 160;
upper = 1;
tooth_depth = 10;
tooth_count = 4;
tooth_width = 20;

// w=depth of teeth
module teeth(n, d, w) {
	for(i = [0:n-1]) {
		translate([0,i*2*w]) {
			square([d,w]);
		}		
	}
}


difference() {
    square([width, width], center=true);
    circle(d=3/8 * 25.4);
}


// top
for(i=[0:3]) {
    rotate(i * 360/4, [0,0,1]) translate([width/2-.001, -width/2]) {
        teeth(4, tooth_depth, tooth_width);
    }
} 

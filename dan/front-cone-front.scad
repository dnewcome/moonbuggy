material_thickness = 5;
width = 40;
tooth_depth = material_thickness;

// w=depth of teeth
module teeth(n, d, w) {
	for(i = [0:n-1]) {
		translate([0,i*2*w]) {
			square([d,w]);
		}		
	}
}

square([width, width]);
translate([-tooth_depth, 0]) teeth(2, tooth_depth, 10);
translate([width, 0]) teeth(2, tooth_depth, 10);
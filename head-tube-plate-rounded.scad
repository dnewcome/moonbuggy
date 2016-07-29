$fn = 100;

// recreation of lost template from the 
// first version of the burning man bike

w = 5*25.4;
h = 3*25.4;
o = 13/32*25.4;

bolt = 5/16*25.4;

module rounded_square(d,r) {
    minkowski() {
        translate([r,r]) square([d[0]-2*r, d[1]-2*r]);
        circle(r);
    }
}


difference() {
    rounded_square([w,h], 5);
    translate([o, o]) {
        circle(d=bolt);
    }
    translate([w-o, o]) {
        circle(d=bolt);
    }
    translate([o, h-o]) {
        circle(d=bolt);
    }
    translate([w-o, h-o]) {
        circle(d=bolt);
    }

}



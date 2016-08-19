$fn = 100;

length = 5.5 * 25.4;
width = 1 * 25.4;
bolt = 1/4 * 25.4;

module rounded_square(d,r) {
    minkowski() {
        translate([r,r]) square([d[0]-2*r, d[1]-2*r]);
        circle(r);
    }
}

difference() {
    rounded_square([width, length], 5);
    #translate([width/2, 0.5 * 25.4]) circle(d=bolt);
    translate([width/2, length-0.5 * 25.4]) circle(d=bolt);
}



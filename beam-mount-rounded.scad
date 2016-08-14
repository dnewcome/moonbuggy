$fn = 100;
sides = 3 * 25.4;
beam = 2 * 25.4;
bolt = 5/16 * 25.4;

// slight offset to account for error
function fud(x)  = x + 0.5;

module rounded_square(d,r) {
    minkowski() {
        translate([r,r]) square([d[0]-2*r, d[1]-2*r]);
        circle(r);
    }
}

difference() {
    translate([-sides/2, -sides/2]) rounded_square([sides, sides], 5);    
    translate([-beam/2-fud(bolt)/2, -beam/2-fud(bolt)/2]) circle(d=bolt);
    translate([beam/2+fud(bolt)/2, -beam/2-fud(bolt)/2]) circle(d=bolt);
    translate([beam/2+fud(bolt)/2, beam/2+fud(bolt)/2]) circle(d=bolt);
    translate([-beam/2-fud(bolt)/2, beam/2+fud(bolt)/2]) circle(d=bolt);
}

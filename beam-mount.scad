$fn = 30;
sides = 3 * 25.4;
beam = 2 * 25.4;
bolt = 5/16 * 25.4;

// slight offset to account for error
function fud(x)  = x + 0.5;

difference() {
    translate([-sides/2, -sides/2]) square([sides, sides]);    
    translate([-beam/2-fud(bolt)/2, -beam/2-fud(bolt)/2]) circle(d=bolt);
    translate([beam/2+fud(bolt)/2, -beam/2-fud(bolt)/2]) circle(d=bolt);
    translate([beam/2+fud(bolt)/2, beam/2+fud(bolt)/2]) circle(d=bolt);
    translate([-beam/2-fud(bolt)/2, beam/2+fud(bolt)/2]) circle(d=bolt);
}

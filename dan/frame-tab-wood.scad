$fn = 100;

width = 1 * 25.4;
height = 1 * 25.4;
bolt = 4;
chamfer=8;

difference() {
    hull() {
        translate([width-chamfer/2, height-chamfer/2]) circle(d=chamfer);
        translate([chamfer/2, height-chamfer/2]) circle(d=chamfer);
        square([width, height-chamfer/2]);
    }
    translate([width/2, height/2]) circle(d=bolt);
}


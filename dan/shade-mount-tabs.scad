length = 5.5 * 25.4;
width = 1 * 25.4;
bolt = 1/4 * 25.4;

difference() {
    square([width, length]);
    #translate([width/2, 0.5 * 25.4]) circle(d=bolt);
    translate([width/2, length-0.5 * 25.4]) circle(d=bolt);
}



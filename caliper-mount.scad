$fn = 100;

l = 71;
w = 20;

difference() {
    square([l, 100]);
        translate([0, 20]) {square([10, 100]);}
    translate([10, w/2]) circle(d=6);  
    translate([10+51, w/2]) circle(d=6);
        translate([10+21, -10]) circle(d=45);
    square([l, 3]);
}
    

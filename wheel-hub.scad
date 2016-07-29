$fn = 100;

od = 122;
id = 47.72;
bolt = 9;
bcr = 50;
n = 5;

difference() {
    circle(d=od);
    circle(d=id);
    for(i = [1 : n]) {
    rotate([0, 0, 360/n * i]) {
        translate([bcr, 0, 0]) circle(d=bolt);    } 
    };
};

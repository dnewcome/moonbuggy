$fn = 100;

// recreation of lost template from the 
// first version of the burning man bike

w = 5*25.4;
h = 3*25.4;
o = 13/32*25.4;

bolt = 5/16*25.4;

difference() {
    square([w,h]);
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



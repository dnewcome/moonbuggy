$fn=30;

// center is fixed - diameter of bike stem
center = 31.5;

// we might want to use 5/16" hardware here
// bolthole = 1/4 * 25.4;
bolthole = 5/16 * 25.4;

width = 1 * 25.4;
height = 2.5 * 25.4;

outer = 3 * 25.4;
function mm(inch) = inch * 25.4; 

difference() {

    circle(d=outer);
    //circle(d=center);
    circle(d=5/8*25.4);
    
    for(i = [0:3]) {
        rotate([0, 0, i*90]) translate([0, center/2+(outer-center)/4]) circle(d=bolthole);    
    }
    

    for(i = [0:3]) {
        rotate([0, 0, i*90+45]) translate([0, center/2+(outer-center)/4]) circle(d=1/4*24.5);    
    }

}

// distance from edge of bolt circle to center circle
distance = ( (center/2)+((outer-center)/4)-(bolthole/2) - ((5/8)/2*24.5)) / 25.4;
echo (distance);

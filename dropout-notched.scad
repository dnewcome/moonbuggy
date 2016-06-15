width = 30;
height = 30;
axle = 14;

slotoffset = 4;
slotwidth = 4;
slotlength = 10;

difference() {

    union() {
        // fillet
        translate([width/2, 0]) circle(width/2);
        square([width, height]);
        translate([0, -width/2]) square([width/2, width/2]);
    }

    // axle hole
    intersection() {
        translate([width/2, height-axle/2]) circle(d=axle);
   
        // axle slot
        translate([(width-10)/2, height/2]) square([10, axle]);
    }
    
    translate([(width-10)/2, 20]) square([10, axle]);
    
    // key slot
    translate([(width-slotlength)/2, height-axle-slotwidth-slotoffset]) square([slotlength, slotwidth]);
}
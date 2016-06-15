width = 45;
height = 40;
axle = 14;
flats = 12;
elongation = 0;

difference() {

    union() {
        // fillet
        translate([width/2, -elongation]) circle(width/2);
        square([width, height]);
        translate([0, -width/2-elongation]) square([width/2, width/2]);
        translate([0, -elongation]) square([width, elongation]);
    }

    // axle hole
    intersection() {
        translate([width/2, height/2]) circle(d=axle);
   
        // axle slot
        translate([(width-flats)/2, (height-axle)/2]) square([flats, axle]);
    }
    
    translate([(width-flats)/2, height/2]) square([flats, 25]);
}
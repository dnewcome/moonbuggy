$fn = 30;

beam = 2 * 25.4;
// plate that clamps onto beam
plateside = 3 * 25.4;
beambolt = 5/16 * 25.4;

// overhang is length that extends beyond the seat plate to attach to the beam.
overhang = plateside/3;

// seat post base
postside = 160;
// seat post bolt diameter
postbolt = 1/4 * 25.4;
postboltinset = 15;

// slight offset to account for error
function fud(x)  = x + 0.5;


module rounded_square(d,r) {
    minkowski() {
        translate([r,r]) square([d[0]-2*r, d[1]-2*r]);
        circle(r);
    }
}


difference() {

    union() {
        
        translate([-postside/2, -(postside/2)]) rounded_square([postside,postside], 10);
        translate([-plateside/2, -((postside/2)+overhang)]) rounded_square([plateside, postside+(overhang*2)], 5);
    }

// bolts to attach to beam
    translate([-beam/2-fud(beambolt)/2, -(postside+overhang)/2-fud(beambolt)/2]) circle(d=beambolt);
    translate([beam/2+fud(beambolt)/2, -(postside+overhang)/2-fud(beambolt)/2]) circle(d=beambolt);
    translate([beam/2+fud(beambolt)/2, (postside+overhang)/2+fud(beambolt)/2]) circle(d=beambolt);
    translate([-beam/2-fud(beambolt)/2, (postside+overhang)/2+fud(beambolt)/2]) circle(d=beambolt);

// bolts to attach to post
    translate([(-(postside/2)+postboltinset)-fud(postbolt)/2, (-(postside/2)+postboltinset)-fud(postbolt)/2]) circle(d=postbolt);
    translate([(postside/2-postboltinset)+fud(postbolt)/2, (-(postside/2)+postboltinset)-fud(postbolt)/2]) circle(d=postbolt);
    translate([(postside/2-postboltinset)+fud(postbolt)/2, (postside/2-postboltinset)+fud(postbolt)/2]) circle(d=postbolt);
    translate([(-(postside/2)+postboltinset)-fud(postbolt)/2, (postside/2-postboltinset)+fud(postbolt)/2]) circle(d=postbolt);
}
$fn = 100;
bigID = tol(3/8 * 24.5, 0.1);
// bigID = 14;
bigOD = 35;
smallID = 11.3;
smallOD = 25.2;

function tol(x, tol) = x + x*tol;

module ring(id, od) {difference() {
    circle(d=od);
    circle(d=id);
}}


ring(bigID, bigOD);
for(i = [0:3]) {
    rotate(i*90, [0,0,1]) translate([25, 0]) ring(smallID, smallOD);
}

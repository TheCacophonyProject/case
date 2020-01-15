$fs = 0.4;

p = [[3, 3], [3, 6], [2, 6], [2, 8], [5, 8], [5, 15], [18.0, 15], [22.0, 10], [22.0, 8], [56.2, 8], [56.2, 1], [26, 1], [26, 3.6], [23, 3.6], [23, 3]];

difference() {
    union() {
        cube([35,18,26]);
        
        translate([4.5,0,2])
        hull() {
            translate([0,-5,0])
            cylinder(d=9, h=5);
            cylinder(d=9,h=5);
        }
        
        translate([30.5,0,2])
        hull() {
            translate([0,-5,0])
            cylinder(d=9, h=5);
            cylinder(d=9,h=5);
        }
    }
    
    translate([0,1,2])
    linear_extrude(30)
    polygon(p);    
    
    hull() {
        translate([31,13.5,18])
        cylinder(d=8, h=4, $fa=60);
        
        translate([31,13.5,19])
        cylinder(d=4, h=4, $fa=60);
        
        translate([33,13.5,18], $fa=60)
        cylinder(d=8, h=4, $fa=60);
        
        translate([33,13.5,19])
        cylinder(d=4, h=4, $fa=60);
    }
    
    translate([31,13.5,-1])
    cylinder(d=4, h=40, $fa=10);
    
    translate([2,7,1])
    cube([24.5,2,10]);
    
    translate([11.5,10,25/2+1])
    rotate([-90,0,0])
    cylinder(d=10,h=10);
    
    translate([2.5,15,20])
    cylinder(d=3, h=10);
    
    translate([4.5,-5,0])
    cylinder(d=4,h=20);
    
    translate([30.5,-5,0])
    cylinder(d=4,h=20);
}

translate([0,0,21])
rotate([0,90,0])
linear_extrude(35)
polygon([[0,0],[0,4],[3,4],[5,0]]);


translate([0,0,8])
rotate([0,90,0])
linear_extrude(35)
polygon([[0,0],[0,4],[3,4],[5,0]]);

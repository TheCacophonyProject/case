use <threads.scad>

$fs=0.4;
$fa=2;


// Middle part
!difference() {
    union() {
        rotate([0, 0, -90])
        metric_thread(17.5*2, 1.5, 3.5);
        
        translate([0, 0, 3.5])
        cylinder(r=17, h=3);
        
        translate([0, 0, 6.5])
        metric_thread(17*2,1.5,4.2);
    }
    
    //rotate([0, 90, 0])
    translate([0, 10.7, 0])
    cube([2,4,50], center=true);
    //cylinder(d=5, h=2, center=true);
    
    rotate([0, 0, 45/2])
    cylinder(r1=11, r2=14,h=12, $fa=45);
    
    translate([0,0,-1])
    rotate([0, 0, 45/2])
    cylinder(r=12,h=12, $fa=45);
}

// middle part key
difference() {
    union() {
        cylinder(r=13.8,h=5, $fa=45);
        cylinder(r=12,h=10);
    }    
    cube([10,10,100], center=true);
}

// Front part
difference() {
    difference() {
        //rotate([0, 0, 45/2])
        cylinder(r=21, h=7, $fa=45);
    }
    
    translate([0,0,-0.1])
    cylinder(r1=15.5, r2=14.5, h=1.5);
    
    translate([23.5, 0, 2])
    cylinder(r=4, h=2);
    
    cylinder(r=14.5, h=20);
    
    translate([0, 0, 2])
    cylinder(r=16.9, h=20);
    
    rotate([0, 0, -180+45/2])
    translate([0, 0, 3.5])
    metric_thread(17.5*2+0.5, 1.5, 3.5);
}

// Front Key
difference() {
    
    cube([80, 45, 5], center=true);
    
    rotate([0, 0, 45/2])
    cylinder(r=21.4, h=6, $fa=45, center=true);
}


// Back nut
difference() {
    cylinder(d = 42, h = 3, $fa=45);
    metric_thread(34.5, 1.5, 3.1);
    
    translate([19,-1,2])
    cube([2,2,10]);
}


// Back nut key
difference() {
    difference() {
        union() {    
            hull() {
                translate([0, 3, 2])
                cube([46, 22, 4], center=true);
                translate([0, 15, 2])
                cube([20, 30, 4], center=true);
            }
            translate([0, 30, 2])
            cube([20, 60, 4], center=true);
        }
        translate([0, 0, 1])
        rotate([0, 0, 45/2])
        cylinder(d = 42.1, h = 4, $fa=45);
        
        intersection() {
            translate([0, 0, -1])
            rotate([0, 0, 45/2])
            cylinder(d = 42.5, h = 4, $fa=45);
            translate([-50,6,-1])
            cube([100,30,50]);
        }
    }    
}

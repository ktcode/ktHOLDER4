//
// ktHOLDER4
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

in = 26/2;
out = in+panel_thick;
sh = 25;
hh = 50;




//translate([0, 0, 0]) A();
//translate([25+5, 0, 0]) B();
translate([0, -20, 0]) C();

module A()
{
    difference()
    {
        union()
        {
            translate([0, -5, 20]) cube([panel_thick, 5, 40]);
            translate([0, 0, 20]) cube([50, panel_thick, 40]);
            translate([-30, 0, 20]) cube([30, panel_thick, 30]);
            translate([-50, -30, 00]) rotate([0, 30, 0]) cube([panel_thick, 30, 50]);
            translate([-50, 0, 00]) rotate([0, 30, 0]) cube([10, panel_thick, 50]);
            translate([-46, -30, 16]) rotate([0, 80, 0]) cube([20, 30, panel_thick]);
            translate([-50, -60, 00]) rotate([0, 30, 0]) cube([panel_thick, 30, 30]);
            translate([-50, -40, 00]) rotate([30, 30, 0]) cube([panel_thick, 40, 35]);
        }
        
        //dell
        translate([5, -gap1, 20-gap1]) cube([40, panel_thick+gap2, 20]);
        translate([-66, -70, 16]) rotate([0, 80, 0]) cube([40, 100, 20]);
        translate([-84.7, -35, 00]) rotate([0, 30, 0]) cube([30, 40, 80]);
        translate([-50, -40, -5]) rotate([0, 80, 0]) cube([10, 50, 20]);
        translate([-55, -60-15+3.2, -3]) rotate([26.56, 30, 0]) cube([10, 30, 50]);
    }
}

module B()
{
    difference()
    {
        union()
        {
            difference()
            {
                union()
                {
                    cylinder(h=40, r=50/2, center=true, $fn=300);
                }
                
                //dell
                cylinder(h=40+gap2, r=50/2-panel_thick, center=true, $fn=300);
                translate([-30, -50+4, -30]) cube([100, 50, 100]);
            }
            translate([-24, 4, -40/2]) cube([60+5, panel_thick, 40]);
        }
        
        //dell
        translate([-24+panel_thick, 4-gap1, -20-gap1]) cube([50-panel_thick*3, panel_thick+gap2, 15]);
        translate([36, 4-gap1, -20-gap1]) rotate([0, 7, 0]) cube([50, panel_thick+gap2, 50]);
    }
}

module C()
{
    difference()
    {
        union()
        {
            difference()
            {
                union()
                {
                    translate([0, 0, 7.5]) cylinder(h=15, r=28/2, center=true, $fn=300);
                    rotate([0, 0, -24]) translate([25/2, 0, 7.5]) cube([10, panel_thick, 15], center=true);
                    rotate([0, 0, -48]) translate([25/2, 0, 7.5]) cube([15, panel_thick, 15], center=true);
                    rotate([0, 0, -72]) translate([25/2, 0, 7.5]) cube([15, panel_thick, 15], center=true);
                    rotate([0, 0, -96]) translate([25/2, 0, 7.5]) cube([15, panel_thick, 15], center=true);
                    rotate([0, 0, -120]) translate([25/2, 0, 7.5]) cube([10, panel_thick, 15], center=true);
                    rotate([0, 0, -144]) translate([25/2, 0, 7.5]) cube([10, panel_thick, 15], center=true);
                }
                
                //dell
                cylinder(h=30+gap2, r=24/2, center=true, $fn=300);
                translate([-30, -9.4, -50]) rotate([0, 0, 6]) cube([100, 100, 100]);
                //#translate([-30, -60, -105]) cube([100, 100, 100]);
                //#translate([-30, -60, 5]) cube([100, 100, 100]);
            }
            
            difference()
            {
                union()
                {
                    translate([0, 0, 7.5]) cylinder(h=15, r=40/2, center=true, $fn=300);
                }
                
                //dell
                cylinder(h=30+gap2, r=36/2, center=true, $fn=300);
                #translate([-20, 30, -50]) rotate([0, 0, -52.5]) cube([100, 100, 100]);
                translate([0, 30, -50]) rotate([0, 0, -183.5]) cube([100, 100, 100]);
            }
            
        }
        
        //dell
        translate([-24+panel_thick, 4-gap1, -20-gap1]) cube([50-panel_thick*3, panel_thick+gap2, 15]);
        translate([36, 4-gap1, -20-gap1]) rotate([0, 7, 0]) cube([50, panel_thick+gap2, 50]);
    }
}

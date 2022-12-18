$fn = 100;
preview = 0.01;
width = 3;
wood = 16;
size = 50;
hole = 5.2;
num = 1;
num2 =1;
hole2=7.2;

difference(){
  cube([size, size, wood + width]);
  translate([-preview, wood, width]){
    cube(size = [size + 2 * preview, size - wood + preview, wood + preview]);
  }

  for(i = [0:num - 1]){
    translate([hole + (i * hole * 2.5), wood / 2 - preview, -preview]){
      cylinder(d = hole, h = wood + width + 2 * preview);
    }

    translate([hole*2+hole/4 + (i * hole * 2.5), wood + preview, width+wood/2]){
      rotate([90, 0, 0])
        cylinder(d = hole, h = wood + width + 2 * preview);
    }
  }

  for(i = [0:num2 - 1]){
    translate([size-(hole2 + (i * hole2 * 2.5)), wood / 2 - preview, -preview]){
      cylinder(d = hole2, h = wood + width + 2 * preview);
    }

    translate([size-(hole2*2+hole2/4 + (i * hole2 * 2.5)), wood + preview, width+wood/2]){
      rotate([90, 0, 0])
        cylinder(d = hole2, h = wood + width + 2 * preview);
    }
  }
  linear_extrude(width)

  translate([size/2,size/2,1])
  text( "16",size=hole,halign="center");
}

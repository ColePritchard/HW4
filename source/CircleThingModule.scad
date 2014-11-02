$fn = 64;


module circleThing(spokeAmount, spokeThickness, ringAmount, ringDistance){
	angleVar = 360/spokeAmount;
	angleVar2 = 360/ringAmount;

	//union(){	
		difference(){
			cylinder(h = 5, r = 20, center = true);
			cylinder(h = 7, r = 15, center = true);
		}
	
		for(i = [0:spokeAmount]){
			rotate([0,0,angleVar*i])
			translate([0,8,-1])
			cube([spokeThickness,20,spokeThickness], center = true);
		}
		
		for(i = [0:ringAmount]){
			rotate([0,0,angleVar2*i])
			translate([0,20+(ringDistance/2),-1])
			cube([3,ringDistance+2,3], center = true);
			rotate([0,0,angleVar2*i])
			translate([0,27+(ringDistance-2.5),-1])
			difference(){
				cylinder(h = 3, r = 5, center = true);
				cylinder(h = 7, r = 3, center = true);
			}
		}	
	//}
}

//circleThing0
//circleThing(1,2,2,6);

//translate([70,0,0])

//circleThing1
//circleThing(15,2,7,3);

//translate([150,0,0])

//circleThing2
circleThing(2,3,5,16);

//The 3D Straw of Boba mike tea
//程式宅的珍奶吸管自己做 By HsinKen
bobaWidth = 30; //珍珠直徑
strawHeight = 500; //吸管高度
cutAngle = 45; //切口角度 0~80

module straw(radius,height,angle) {
    shellR = (0.5*radius)/0.87;
    difference() {
        linear_extrude(strawHeight) 
            circle(shellR);
        linear_extrude(strawHeight) 
            circle(0.5*radius);
    
    cubeSize = shellR*2;
        
    translate ([0,0,height+cubeSize*0.5-sin(angle)*shellR]) {
        rotate([angle,0,0]){
        cube([cubeSize,(shellR*sin(angle))*cubeSize,cubeSize],center=true);
        }
    }
    
    }
}

straw(bobaWidth,strawHeight,cutAngle);
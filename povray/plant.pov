#include "colors.inc"
#include "textures.inc" 


//declare camera
camera {
    angle 90 //set the FOV   
    location  <0 , 2 ,0>      //camera location
    look_at   <0.0 , 0.0 , 0.0>                    //where the camera looks
}  


//the light
light_source {
    <1,1,1>, color rgb<1,1,1>    //light position and colour of light
}    


//create floor	
plane { 
	<0, 1, 0>, 0          //plane defined at y=0

    pigment {
        bumps        
        
        color_map {
        [0.1 2.0 color rgb<0.25,0.5,0.25> color rgb<0,0.5,0>   ]   
        }               
    }
        
    finish {
        specular 0.2
        
    }
    
    normal {
        bumps
    }
}
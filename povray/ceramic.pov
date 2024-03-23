#include "colors.inc"
#include "textures.inc" 


//declare camera
camera {
    angle 90 //set the FOV   
    location  <0 , 3 ,0>      //camera location
    look_at   <0.0 , 0.0 , 0.0>                    //where the camera looks
}  


//the light
light_source {
    <1,25,1>, color rgb<1,1,1>    //light position and colour of light
}    


//create floor	
plane { 
	<0, 1, 0>, 0          //plane defined at y=0
	texture {White_Marble}          
	pigment {
	    color_map {
	        [0.2 1.0 color rgb<0.65,0.6,0.55> color rgb<0.70,0.65,0.6>]
	    }
	}  
	
	finish {
	    specular 0.1
	    
	}   
	
	normal {
	    bozo 5.0
	}
}
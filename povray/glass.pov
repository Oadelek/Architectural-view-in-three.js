#include "colors.inc"
#include "textures.inc" 


//declare camera
camera {
    angle 90 //set the FOV   
    location  <0 , 5 ,0>      //camera location
    look_at   <0.0 , 0.0 , 0.0>                    //where the camera looks
}  


//the light
light_source {
    <1,100,1>, color rgb<1,1,1>    //light position and colour of light
}    
     
     

//create floor	
plane { 
	<0, 1, 0>, 0          //plane defined at y=0     
	finish {
	    Glass_Finish    
	    specular 2.0
	}
    
    normal {      
        bozo 5
    }
}
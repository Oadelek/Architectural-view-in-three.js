#include "colors.inc"
#include "textures.inc" 


//declare camera
camera {
    angle 90 //set the FOV   
    right x*2  //this sets the aspect ratio (2/1)
    location  <0 , 10 ,0>      //camera location
    look_at   <0.0 , 0.0 , 0.0>                    //where the camera looks
}  


//the light
light_source {
    <1,25,1>, color rgb<1,1,1>    //light position and colour of light
}    


//create floor	
plane { 
	<0, 1, 0>, 0          //plane defined at y=0
	texture {Tan_Wood}          
	pigment {
	    color_map {
	        [0.3 1.0 color rgb<0.7,0.4,0.2> color rgb<0.9,0.5,0.3>]
	    }
	}


}
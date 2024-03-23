#include "colors.inc"
#include "textures.inc" 


//declare camera
camera {
    angle 70 //set the FOV   
    right x*2  //this sets the aspect ratio (2/1)
    location  <0 , 25 ,0>      //camera location
    look_at   <0.0 , 0.0 , 0.0>                    //where the camera looks
}  


//the light
light_source {
    <1,25,1>, color rgb<1,1,1>    //light position and colour of light
}    


//create floor	
plane { 
	<0, 1, 0>, 0          //plane defined at y=0
	texture {Cork}
 
	normal {
	    agate 0.2
	}     
	finish {
	    specular 0.2    
	    diffuse 0.4
	}

}
#include "colors.inc"
#include "textures.inc" 


//declare camera
camera {
    angle 70 //set the FOV   
    right x*2  //this sets the aspect ratio (2/1)
    location  <4 , 3.0 ,-30>      //camera location
    look_at   <0.0 , 7.0 , 0.0>                    //where the camera looks
}                                   

//define colour for reuse later on
#declare flesh_pigment =  
pigment {
	agate    //use agate pattern
	agate_turb 2              //set the turbulance of the pattern
	color_map {       
        [-0.03 0.2 color rgb<0.6,0.07,0.13> color rgb<0.73,0.08,0.08> ]     //create a blend between blueish and red
    }
} 

//the light
light_source {
    <12,20,-5>, color rgb<0.5,0.2,0.2>    //light position and colour of light
}    

//the sun?    
#declare SunPos = <3,20,100>;   //variable to set the position of the sphere and the 
light_source {SunPos, color White*5} //create a light source, multiply the colour to increase light intensity
sphere {SunPos, 5
	texture {
		pigment {flesh_pigment}
		finish {ambient 10 diffuse 0}
	}
	no_shadow        //prevent the sun from casting a shadow
}

//create a fog
fog{
    fog_type   2
    distance 5
    color rgb<0.01,-0.01,-0.01>
    fog_offset 0.5
    fog_alt  2.0 
    turbulence 0.5
} 


//create floor	
plane { 
	<0, 1, 0>, 0          //plane defined at y=0
	pigment {flesh_pigment}    //use the pigment defined earlier
	finish {
		specular 0.08    //set specular lighting value
	}  
	normal {
		agate -0.2  //use this for normal
    }
}

//pillars   
#declare pillar_space = 7;    //determines how far apart to space the pillars

cylinder {
    <-pillar_space,0,0>,<-pillar_space,18,0>,2     //positions for the bottom and top of the pillar, followed by the radius
    pigment {flesh_pigment}
	finish {
		specular 0.08     
	}  
	normal {
		agate -0.2
    }
}

cylinder {
    <pillar_space,0,0>,<pillar_space,18,0>,2
    pigment {flesh_pigment}
	finish {
		specular 0.08
	}  
	normal {
		agate -0.2
    }
}

cylinder {
    <-pillar_space,0,pillar_space>,<-pillar_space,18,pillar_space>,2
    pigment {flesh_pigment}
	finish {
		specular 0.08
	}  
	normal {
		agate -0.2
    }
}

cylinder {
    <pillar_space,0,pillar_space>,<pillar_space,18,pillar_space>,2
    pigment {flesh_pigment}
	finish {
		specular 0.08
	}  
	normal {
		agate -0.2
    }
}                                                                 


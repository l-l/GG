int steps=600;
PShape shp;
boolean drawShape=false;
PVector oldP;

void setup()
  {size(900,900,P3D);
  stroke(0);
  noFill();
  smooth(8);
  shp=loadShape("shp.svg"); // in illustrator save as SVG tiny 1.2 (no artboard)
//  shp.enableStyle();
  }
  
  
void draw()
  {background(255);
  
   translate(width/2,height/2);
     
   float r=250f;
   float timeOs=frameCount/200f;

    for (int i=0;i<steps;i++)
    { 
      float ang=map(i,0,steps,0,PI*2f);
      
      
     //// circle -------------------------------------
    
       //float x=sin(ang)*r;
       //float y=cos(ang)*r;
     
     // //---------------------------------------------
      
 
      //// circle > lissajous
      
      steps=600;
      float x=sin(ang*int(mouseX/100f))*r;
      float y=cos(ang*int(mouseY/100f))*r;
      
      //// --------------------------------------------
      
      
      ///// superformular 2d
      /*
      float raux,rr=250f;
      float a1=1.0;
      float a2=1.0;
      float n1=4.0;
      float n2=0.5;
      float n3=0.5;
      float n4=4.0;
    
         raux=pow(abs(1/a1*abs(cos(n1*ang/4f))),n3)+pow(abs(1/a2*abs(sin(n1*ang/4f))),n4);
         rr=   pow(abs(raux),(-1f/n2));
         float x=rr*cos(ang)*150f;
         float y =rr*sin(ang)*150f;
      */
     /////----------------------------
      
      
      // go wild -----------------------------------
     //
     /*
      steps=600;
      float tAng=ang+timeOs;
      float x=sin(tAng*4.91)*r*sin(tAng/2.74)+cos(ang*3.16)*r/3.68;
      float y=cos(tAng*1.66)*r+sin(ang*2.77)*r/4.93;//*r*sin(os/-15);
      PVector v=PVector.fromAngle(ang*mouseY/100f);
      v.mult(mouseX);
    */
    
    stroke(0,0,255,100);
    // line(x,y,v.x+x,v.y+y);
      noStroke();fill(0);
      ellipse(x,y,5,5);
      //----------------------------------------------
      
      
    if (drawShape)
     {
      pushMatrix();
        translate(x,y);
        
        noStroke();fill(0,0,255);
        //rotate(ang*4);
        rotate(i/10f*mouseX/500f);
     // rotate((tAng+timeOs)*6f);
      scale(1.5);
        shape(shp,0,0);
      popMatrix();
     }
    
    //  noFill();stroke(128,0,128,50);
   //   line(0,0,x,y);
     

 if (oldP!=null)
    {stroke(0);
      line(oldP.x,oldP.y,x,y);
    
    }
   oldP=new PVector(x,y);


    }

 
  }
  
  
  void keyPressed()
    {if (key=='s') drawShape=!drawShape;
    }
  
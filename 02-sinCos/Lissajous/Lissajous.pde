

void setup()
  {size(900,900,P3D);
  stroke(0);
  noFill();
  smooth(8);
  }
  
  
void draw()
  {background(255,255,255);
   translate(width/2,height/2);
   float r=276;
   
//   beginShape();
    for (int i=0;i<2014;i++)
    { float os=i/2579*PI;
      float x=sin(os*31.26)*r*sin(os/4.00)+cos(os*3.21)*r/1.29;
      float y=cos(os*7.14)*r+sin(os*4.53)*r/4.93;//*r*sin(os/-15);
     // ellipse(x,y,3,3);
     PVector v=PVector.fromAngle(os*9.0);
     v.mult(173);
     line(x,y,v.x+x,v.y+y);
  //   vertex(x,y);
    }
 //  endShape();
  }
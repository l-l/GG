
int numAgents=1000;
Agent[] agents=new Agent[numAgents];


float noiseDivi=100f;



void setup()
  {
     size (900,900,P3D);
     smooth(8);
     background(0);
     for (int i=0;i<numAgents;i++)
        {
         PVector pos=new PVector(random(-width,width),random(-height,height),0);
         PVector speed=new PVector(random(-2,2),random(-2,3),random(-2,2));
         agents[i]=new Agent(pos,speed);
        
         }
     
   colorMode(HSB);
         
  }
  
  void draw()
  {//background(255);

   translate(width/2,height/2);
   for (int i=0;i<numAgents;i++)
        {
         agents[i].tick();
         color c=color(abs(agents[i].angle*40f),128,255);
         
         pushMatrix();
      
           translate(agents[i].pos.x,agents[i].pos.y);
           //stroke((noise(agents[i].pos.z/80f)*255f),0+(frameCount/30f)%125,  ((255-noise(agents[i].pos.z/80f)*255f)+i/100f)%255  ,255);
      
           noStroke();
                     
           fill(c,20);
           ellipse(0,0,agents[i].speed.y*4f+1,agents[i].speed.y*4f+1);
          
         
          popMatrix();
           
           
            }
  }
  
 void mousePressed()
   {background(0);

   noiseSeed(frameCount);
   }
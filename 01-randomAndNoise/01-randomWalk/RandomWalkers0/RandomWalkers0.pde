
int numAgents=10;
Agent[] agents=new Agent[numAgents];

void setup()
  {
     size (900,900,P3D);
    // colorMode(HSB); 
     background(0);
     for (int i=0;i<numAgents;i++)
        {
         PVector pos  =new PVector(random(-width/2,width/2),random(-height/2,height/2),0);
        
         agents[i]=new Agent(pos);
       
         }
           
  }
  
  
  void draw()
  {//background(255);
   
   translate(width/2,height/2);
   for (int i=0;i<numAgents;i++)
        {
         agents[i].tick();
              noStroke();
           //fill(agents[i].col);
           fill(255);
           ellipse(agents[i].pos.x,agents[i].pos.y,3,3);
            }
  }
  
 void mousePressed()
   {background(0);
  
   }
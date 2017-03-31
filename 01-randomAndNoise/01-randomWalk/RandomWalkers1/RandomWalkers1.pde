
int numAgents=10;
Agent[] agents=new Agent[numAgents];

void setup()
  {
     size (900,900,P3D);
     smooth(8);
     background(0);
     for (int i=0;i<numAgents;i++)
        {
         PVector pos=new PVector(random(-width/2,width/2),random(-height/2,height/2),0);
         PVector speed=new PVector(random(-2,2),random(-2,3),random(-2,2));
         agents[i]=new Agent(pos,speed);
       
         }
     
         
  }
  
  void draw()
  {
   translate(width/2,height/2);
   for (int i=0;i<numAgents;i++)
        {
         agents[i].tick();

       
 
           noStroke();
           fill((sin(frameCount/100f)+1)*128,100,100,255);
           ellipse(agents[i].pos.x,agents[i].pos.y,3,3);
            
           noFill();
           stroke((sin(frameCount/100f)+1)*128,100,100,255);
           line(agents[i].pos.x,agents[i].pos.y,agents[i].lastPos.x,agents[i].lastPos.y);
           
         }
  }
  
 void mousePressed()
   {background(0);
   }
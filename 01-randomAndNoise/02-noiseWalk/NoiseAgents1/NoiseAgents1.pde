
int numAgents=4000;
Agent[] agents=new Agent[numAgents];

float noiseScale=1;
float noiseDivi=200f;

PImage portrait;

void setup()
  {
     size (560,560);
     smooth(8);
     background(0);
     for (int i=0;i<numAgents;i++)
        {
         PVector pos=new PVector(random(-width/2,width/2),random(-height/2,height/2),0);
         PVector speed=new PVector(random(-2,2),random(-2,3),random(-2,2));
         agents[i]=new Agent(pos,speed);
        }
     
     portrait=loadImage("chuck.jpg");
         
  }
  
  void draw()
  {
   translate(width/2,height/2);
   for (int i=0;i<numAgents;i++)
        {
         agents[i].tick();
         color c=portrait.get(int(agents[i].pos.x+width/2),int(agents[i].pos.y+height/2));
         
         pushMatrix();
           translate(agents[i].pos.x,agents[i].pos.y);
           noStroke();
               
           fill(c,10);
           ellipse(0,0,agents[i].speed.y*10f,agents[i].speed.y*5f);
          
         
          popMatrix();
           
           
            }
  }
  
 void mousePressed()
   {background(0);
   //   tint(255, 50);
   //  image(portrait,-width/2,-height/2);
 
   noiseSeed(frameCount);
   }
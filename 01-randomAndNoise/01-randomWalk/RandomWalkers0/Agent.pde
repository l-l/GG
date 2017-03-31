public class Agent
  {
    public PVector pos;
    
    public PVector speed;
   // public color col;
    
     public Agent(PVector _pos)
      {
        pos=_pos;
        speed=new PVector(0,0);
       // col= color(random(128),128,200);
      }
      
    public void tick()
      {
        pos.add(speed);
        float m=8f;
        speed=new PVector(random(-m,m)   ,random(-m,m)   );                        
       /*
       
       // RESET ----------------------------------------------------------------------
       if (pos.x>=width/2 || pos.y>=height/2 || pos.x<=-width/2 || pos.y<=-height/2 )
           {//reset(0,0, 100f);
            pos.x=random(-width/2,width/2);
            pos.y=random(-height/2,height/2);
           }
    
           m=0.3f;
          float noiseDivi=200f;
          
          float angle=noise(pos.x/noiseDivi,pos.y/noiseDivi)*2.0*PI;
          speed=new PVector(sin(angle)*m,  
                            cos(angle)*m  
                           );
                           
        */
      }
      
  
    
   
  }
  
  
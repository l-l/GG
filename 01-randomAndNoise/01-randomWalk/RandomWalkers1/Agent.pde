public class Agent
  {
    public PVector pos;
    public PVector lastPos;
    public PVector speed;
    public float angle;
    
 
    
    public Agent(PVector _pos, PVector _speed)
      {
        pos=_pos;
        speed=_speed;
      
        //xOs=random(-15,15);
      }
      
    public void tick()
      {lastPos=new PVector(pos.x,pos.y);
       pos.add(speed);
       
       // RESET ----------------------------------------------------------------------
       if (pos.x>=width/2 || pos.y>=height/2 || pos.x<=-width/2 || pos.y<=-height/2 )
           {//reset(0,0, 100f);
            pos.x=random(-width/2,width/2);
            pos.y=random(-height/2,height/2);
            lastPos=new PVector(pos.x,pos.y);
           }
    
        float m=8f;
          
        speed=new PVector(random(-m,m)   ,random(-m,m)   );                        

      }
      
  
    
   
  }
  
  
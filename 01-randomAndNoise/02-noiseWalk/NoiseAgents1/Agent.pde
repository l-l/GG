public class Agent
  {
    public PVector pos;
    public PVector speed;
    public float angle;
    

    public float value;

 
    
    public Agent(PVector _pos, PVector _speed)
      {
        pos=_pos;
        speed=_speed;
      
  
      }
      
    public void tick()
      {
       pos.add(speed);
     
       // RESET ----------------------------------------------------------------------
       if (pos.x>=width/2 || pos.y>=height/2 || pos.x<=-width/2 || pos.y<=-height/2 )
           {//reset(0,0, 100f);
            pos.x=random(-width/2,width/2);
            pos.y=random(-height/2,height/2);
           }
    
        float m=0.3f;
          
          value=noise(pos.x/noiseDivi+1000f,pos.y/noiseDivi+1000f);
          angle=noise(pos.x/noiseDivi,pos.y/noiseDivi)*2.0*PI;
          speed=new PVector(sin(angle)*m,  
                            cos(angle)*m  
                           );
                

      }
      
  
    
   
  }
  
  
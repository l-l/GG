public class Agent
  {
    public PVector pos;
    public PVector speed;
    public float angle;
    


  //  public float value;

 
    
    public Agent(PVector _pos, PVector _speed)
      {
        pos=_pos;
        speed=_speed;
      
        //xOs=random(-15,15);
      }
      
    public void tick()
      {
       pos.add(speed);
     
       // RESET ----------------------------------------------------------------------
       if (pos.x>=width/2 || pos.y>=height/2 || pos.x<=-width/2 || pos.y<=-height/2 )
           {
            pos.x=random(-width/2,width/2);
            pos.y=random(-height/2,height/2);
           }
    
    
          
          angle=(noise(pos.x/noiseDivi,pos.y/noiseDivi))*2f*PI;
          speed=new PVector(sin(angle),  
                            cos(angle)  
                           );
        //  speed=new PVector(random(-m,m)   ,random(-m,m)   );                        

      }
      
  
    
   
  }
  
  
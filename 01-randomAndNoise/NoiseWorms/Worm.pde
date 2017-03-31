class Worm
  { float startZ=-4000;
    PVector pos;
    float r=0;
    float rnd;
    float noiseScale=0.05;
  public Worm()
    {reset();
    }
    
    void tick()
      {
      
        r=noise(frameCount*noiseScale+rnd)*190.0;
        pos.add((noise(frameCount*noiseScale/2f+rnd*2f)-0.5)*8.4,(noise(frameCount*noiseScale/2f+rnd*4f)-0.5)*8.4,7);
        
        
      
      }
    void reset()
      {pos=new PVector(random(-width*2,width*2),random(-height*2,height*2),startZ);
       rnd=random(0,1000);
      }
  }
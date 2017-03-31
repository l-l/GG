
int cnt=145;
Worm[] worms=new Worm[cnt];
//color bg=color(215,180,255);
color bg=color(0);
void setup()
  {size (1600,900,P3D);
  perspective();
    background(bg);
    smooth(8);
    stroke(bg);
    fill(255);
    for (int i=0;i<cnt;i++)
      {worms[i]=new Worm();
      }
  }
  
void draw()
  {translate(width/2,height/2);
  //background(0);
    for (int i=0;i<cnt;i++)
      {worms[i].tick();
      
       pushMatrix();
         translate(worms[i].pos.x,worms[i].pos.y,worms[i].pos.z);
         ellipse(0,0,worms[i].r,worms[i].r);
       popMatrix();
      
      }
    
  }
  
  void mousePressed()
    {for (int i=0;i<cnt;i++)
      {worms[i].reset();
      }
     background(bg);
    }
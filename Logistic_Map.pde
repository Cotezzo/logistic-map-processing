void setup(){
  size(1600,800);
  stroke(255);
  strokeWeight(1);
  W=width;
  down=height;
  Biforcazione();
}

void draw(){
  float xm = map(mouseX,0,width,(float)ri,(float)rf);
  float ym = map(mouseY,0,height,(float)up,(float)down);
  print(xm + "; " + ym + "\n\n");
}

void keyPressed(){
  if(key=='w'){Acc++; Resettino();}
  if(key=='s'&&Acc>1){Acc--; Resettino();}
  
  // if(key==' ')ZoomIn();
}

void Resettino(){
    ri=100*Acc;
    rf=400*Acc;
    //z+=300;
    Biforcazione();   
}

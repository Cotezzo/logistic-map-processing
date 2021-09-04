int It=1000;
int W;
double ri=100, rf=400; //Per gestire l'intervallo delle r e zoommare
double up=0, down=height; //Per gestire mappatura y e zoommare
//double z=300; //Per gestire la divisione dello schermo in parti e assegnare valori alla xc

int Acc = 1; 

void Biforcazione(){
  background(0);
  double xu = 0.5, yc, xc=0;
  for(int r=(int)ri; r<rf; r++){
    for(int i=0; i<It; i++){
      xu = (r / ri) * xu * (1 - xu);  //ri parte da 100, quindi lo sfrutto per dividere r, sarebbe comunque 100*Acc
      yc = xu * height; //Mappatura dell'altezza 
      //yc = map((float)xu, 0, 1, (float)up, (float)down);
      point((float)xc, (float)(height - yc));
    }
    xc += W/(rf-ri);
  }
  text("Acc: " + Acc + "\nIterations: " + It,7,15);
}

void ZoomIn(){
  //Acc++;
  //ri+=100;
  //rf+=400;
  //z+=300;
  float xm = map(mouseX,0,width,(float)ri,(float)rf);
  float ym = map(mouseY,0,height,(float)up,(float)down);
  ri+=(xm-ri)/2;
  rf-=(rf-xm)/2;
  up+=(ym-up)/2;
  down-=(down-ym)/2;
  W/=2;
  Biforcazione();
}

/*
void testo(String s1, int w, int h){ //Stampa testo con bordino nero
  textSize(14); fill(0); 
  text(s1, w, h+1);
  text(s1, w+1, h);
  text(s1, w-1, h);
  text(s1, w, h-1);
  fill(255);
  text(s1, w, h);
}
*/

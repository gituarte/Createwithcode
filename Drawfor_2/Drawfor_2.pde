void setup()
{
size(600,600);
}

void draw()
{
  background(225);
  
  for(int i=0; i<50; i=i+1){
   stroke(i*5,0,0,50);
  strokeWeight(i);
  //columna 1
 line(50,50+i*mouseX,150,50+i*mouseY); 
  }
  
  //columna 2
  for(int i=0; i<50;i=i+1){
   //random(numero)->0-50
  //RGB
 stroke(i*5,i*10,i*15,50);
strokeWeight(i);
line(200,50+i*mouseX,300,50+i*mouseY);
  }
  
  //columna 3
  for(int i=0;i<50;i=i+1){
   stroke(i*15,i*20,i*30,50);
  strokeWeight(i);
 line(350,50+i*mouseX,450,50+i*mouseY); 
  }
  
  //columna4
  for(int i=0;i<50;i=i+1){
   stroke(i*20,i*30,i*40,50);
  strokeWeight(i);
 line(200,5+i*mouseX,200,50+i*mouseY); 
  }
  
}



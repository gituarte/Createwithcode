PImage imagenMia;
float posicionX = 0;

void setup(){
  size(500, 500);
  
  //Cargar/load imagen con el
  //nombre de tu imagen en comillas
 
  imagenMia = loadImage("Monday.jpg");
 
}

void draw(){
  background(255);
  
  //dibujar imagen en la posicion (x, y)
  //dibujar imagen en en (0, 0)
  //Imagen nombre de tu imagen.
  for(int i=0;i<15;i=i+3){
  
  image(imagenMia, posicionX+i*mouseX, 0, 500, 500);
  
  posicionX = posicionX;
  }
}
  

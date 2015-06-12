//Circulo
PImage scary;
int numRebotes=0;

//posicion de la bola
float bolaPosX = 300;
float bolaPosY = 300;

//color 0-255;
float colorBolaR=255;
float colorBolaG=255;
float colorBolaB=255;

//velocidad Bola
float bolaVelX = 2;
float bolaVelY = 5;

//tamanos 
float bolaTam  = 80;

//Rectangulo

//posicion del rectangulo
float rectPosX = 300;
float rectPosY = 50;

//tamano del rectangulo
float rectWidth = 100;
float rectHeight = 20;

void setup() {
  size(500, 500);
  scary=loadImage("scary.png");
}


void draw() {
  //Fondo blanco
  //background(178,255,102);
  //background(178,255,102);
  background(0,0,102);
  //rectMode(CORNER);
  //fill(0,0,102,5);
  //rect(0,0,width,height);

  //dibujar ellipse con centro (bolaPosX, bolaPosY) 
  //con tamano (bolaWidth, bolaHeight)
  //noStroke();
  //fill(0); //negro 
  //ellipse(bolaPosX, bolaPosY, bolaTam, bolaTam);

for(int i=0;i<5;i=i+1){
  stroke(0);
  fill(colorBolaR,colorBolaG,colorBolaB);
  image(scary, bolaPosX, bolaPosY, bolaTam, bolaTam);
 }

  //Dibujar el Rectangulo
  //posicion esquina superior izquierda (rectPosX, rectPosY)
  
  fill(255,255,255);
  noStroke();
  rectPosX = mouseX;
  rectPosY = mouseY;
  rectMode(CENTER);
  rect(rectPosX, rectPosY, rectWidth, rectHeight);

  //actualizar las posiciones de la bola
  bolaPosX = bolaPosX + bolaVelX;
  bolaPosY = bolaPosY + bolaVelY;


  //si reboto cambiar la velocidad
  if (rebote() == true) {
    bolaVelX  = -bolaVelX;
    bolaVelY  = -bolaVelY;
    
    numRebotes = numRebotes + 1;
  
}
  
 textSize(20);
 text(numRebotes,100,50);
 if(numRebotes == 5)
 text("Game Over",250,50);

  //Rebotar con las paredes
  if (bolaPosX > width) {
    bolaVelX  = -bolaVelX;
  }

  if (bolaPosY > height) {
    bolaVelY  = -bolaVelY;
  }

  if (bolaPosY < 0) {
    bolaVelY  = -bolaVelY;
  }

  if (bolaPosX < 0) {
    bolaVelX  = -bolaVelX;
  }
}


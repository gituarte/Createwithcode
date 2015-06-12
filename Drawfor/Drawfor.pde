void setup()
{
size(600,600);
}

void draw()
{
  background(0);
  // for es para repetir la figura
  //primero donde inicia
  //segundo donde acaba
  //tercero como aumenta
for(int i=0; i<10;i=i+1){
 ellipse(100+i*60,100,50,50); 
}  
}


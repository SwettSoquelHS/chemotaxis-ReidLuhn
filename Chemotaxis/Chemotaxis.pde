Bacteria[] myBacteria = new Bacteria[500];
void setup(){     
  //initialize bacteria variables here
  size(500, 400);
  background(255);
  for (int i = 0; i < myBacteria.length; i++){
    myBacteria[i] = new Bacteria((int)(Math.random() * 500), (int)(Math.random() * 400), (int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  }  
}
void draw(){
  rect(0, 0, width, height);
  fill(200, 25);
  for (int i = 0; i < myBacteria.length; i++){
    myBacteria[i].show();
  }
  for (int i = 0; i < myBacteria.length; i++){
    myBacteria[i].move();
  }
}  
class Bacteria    {     
 //lots of java!
 int x_pos;
 int y_pos;
 int clr1;
 int clr2;
 int clr3;
 
 Bacteria(int x, int y, int c1, int c2, int c3){
   x_pos = x;
   y_pos = y;
   clr1 = c1;
   clr2 = c2;
   clr3 = c3;
 }
 
 
 void move(){
    x_pos = x_pos - ((int)((Math.random() * 20) - 10));
    y_pos = y_pos - ((int)((Math.random() * 20) - 10));
 }
 
 
 void show(){
   pushMatrix();
   translate(x_pos, y_pos);
   fill(clr1, clr2, clr3);
   ellipse(0, 0, 10, -10);
   popMatrix();
 }  
}    

PImage pan;
PImage hot;
PImage food;
PImage kitchen;
PImage hat;
PImage head;
PImage chef;
PImage green;
float speed= 5;
float Y=mouseY;
PImage jet;
PImage shout;
PImage face;
PImage mad;
float opacity;
PImage stick;
int rad = 60;        
float xpos, ypos;      

float xspeed = 2.8; 
float yspeed = 2.2; 

int xdirection = 1;  
int ydirection = 1;  

void setup() {

  size(700,700);
kitchen = loadImage("home.png");
pan =loadImage("pan.png");
head = loadImage("head.png");
hot = loadImage("hot.png");
hat = loadImage("chefhat.png");
green = loadImage("green.png");
jet = loadImage("jet.png");
hat= loadImage("chefhat.png");
shout= loadImage("shouting.png");
face= loadImage("face.png");
mad = loadImage("mad.png");
stick = loadImage("stick.png");
 
  noStroke();
 fill(random(255),random(255),random(255));
  frameRate(20);
 ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;

frameRate(30);
}



void draw() {
 
  
  
  
  
image(kitchen,0,13,700,700);
 image(head,180,40);
 image(hat,240,-10,90,90);
 
  image(pan,mouseX-250,180);
   image(hot,mouseX-950,250);
     image(hot,mouseX-100,250);
       image(hot,mouseX+290,250);
         image(jet,mouseX,mouseY,50,50);
      
 //moving fire       
fill(0,0,0);



image(hot,0+290,250);
textSize(40);

fill(0,0,0);
textSize(28);
if(mouseX>200)

{text("wait...",10,60,opacity);}

if(mouseX>380)

{noStroke();
  fill(255,255,255);
rect(10,30,80,36);}

if(mouseX>500)


{fill(0,0,0);
  textSize(40);
  text("WHERE IS THE LAMB SAUCE!!!!",50,80);
image(face,190,110,150,150);
 image(green,50,100,400,200);
image(mad,200,70,50,50);
opacity=0;
}


  
  // 
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  //the ball
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  // Draw the shape
 fill(30,244,80);
  ellipse(xpos, ypos, rad, rad);

 image(stick,mouseX,460,150,70);

 fill(random(255),random(255),random(255));
 rect(1,626,1800,900);

} 


       

 

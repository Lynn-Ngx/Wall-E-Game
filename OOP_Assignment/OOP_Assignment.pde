//Audio
import ddf.minim.*;

AudioPlayer player;
Minim minim;//audio context

//Colour of background
color Red1 = 178;
color Green1 = 216; 
color Blue1 = 264;
color Red2 = 4;
color Green2 = 15; 
color Blue2 = 74;
float colourincrement = 1;

//Loading Image
PImage img1, img2, img3;

void setup()
{
  minim = new Minim(this);
  player = minim.loadFile("Walle.mp3", 2048);
  player.play();
  
  size(1200, 700);
  background(Red1, Green1, Blue1);
  
  frameRate(30);
  smooth();
  
  image();
}

void draw() 
{
  backgroundFade();

  image(img1, 260, 410, 150, 150);
  image(img3, 480, -10, 700, 400);
  image(img2, mouseX - 40, mouseY, 100, 100);
}

void backgroundFade()
{
  //Fade Background
  if (Red1 > Red2) 
  {
    Red1 -= colourincrement;
  }

  if (Green1 > Green2)
  {
    Green1 -= colourincrement;
  }
   
  if (Blue1 > Blue2)
  {
    Blue1 -= colourincrement;
  }
  
  background(Red1, Green1, Blue1);
}

void image()
{
  // Images must be in the "data" directory to load correctly
  img1 = loadImage("Walle1.png");
  img2 = loadImage("Eve.png");
  img3 = loadImage("Rocket.png");
}

void stop()
{
  player.close();
  minim.stop();
  super.stop();
}
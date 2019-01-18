import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
AudioPlayer jump;

PFont f; 

Ball ball2;
Destination des;
Scene scene;

// Global gravity variable
//Reference from learningprocessing.com exercise 8-5 gravity ball
float gravity = 0.1;  

ArrayList<Block> world;
ArrayList<Barrier> barrier;

void setup() { 
  size(800, 600); 
  smooth();
  rectMode(CENTER); 
  imageMode(CENTER);
  
  
  //add your music
  minim = new Minim(this);
  player = minim.loadFile("rpgexplorer.mp3");//https://www.melodyloops.com/my-music/longoloops/rpg-explorer/
  player.play();
  player.loop();
  
  //http://www.orangefreesounds.com/mario-jump-sound/
  jump = minim.loadFile("jump.mp3");
  

  // Create our initial player, destination and map 
  ball2 = new Ball(-776, 240, 40, loadImage("wukong.png"));
  des = new Destination(-689, 494, 22, 20, loadImage("peach.png"));
  scene = new Scene();


  //create our block world
  world = new ArrayList();
  //world add four edges
  world.add(new Block(width/2, 47.5, width, 95));///UP EDGE
  world.add(new Block(width/2, 552.5, width, 95));///DOWN EDGE
  world.add(new Block(-10, height/2, 20, height));///LEFT EDGE
  world.add(new Block(810, height/2, 20, height));///RIGHT EDGE
  scene.changeScene(0);//default scene No.1 


  barrier = new ArrayList();
  scene.changebarrier(0);//default scene No.1

  //add words on first page
  f = createFont("ARCADECLASSIC.TTF", 60);
  textFont(f);
} 


void draw() { 
  background(77, 77, 105); 



  // 1. Update data; add speed to our monkey king
  ball2.update();


  // 2. Collision
  //World Collision
  for (int i = 0; i < world.size(); i++) { 
    if ( world.get(i).isInBlock(ball2) )//check whether player is in the block
    {
      ball2.move( world.get(i).getOut() );//move the ball our of block
    }
  }
  //Destination Collision
  if ( des.isInBlock(ball2) )//check whether our player is collide with destination(peach)
  {
    //
    if (scene.recentScene == 1)
    {//change to secene 2
      scene.cleanWorld();//clear the inside blocks
      scene.changeScene(2);//change the game scene to No.2
      scene.cleanBarrier();
      scene.changebarrier(2);
      ball2.changePlace(776, 211);//change the position of player for scene No.2
      des.changePlace(789, 495);//change the position of destination for scene No.2
      scene.recentScene = 2;//change the recentScene to 2;
    } else if (scene.recentScene == 2)
    {//change to scene 3
      scene.cleanWorld();
      scene.changeScene(3);
      scene.cleanBarrier();
      scene.changebarrier(3);
      ball2.changePlace(25, 350);
      des.changePlace(789, 370);
      scene.recentScene = 3;
    } else if (scene.recentScene == 3)
    {//change to scene 4
      scene.cleanWorld();
      scene.changeScene(4);
      scene.cleanBarrier();
      scene.changebarrier(4);
      ball2.changePlace(775, 293);
      des.changePlace(11, 311);
      scene.recentScene = 4;
    } else if (scene.recentScene == 4)
    {//change to scene 5
      scene.cleanWorld();
      scene.changeScene(5);
      scene.cleanBarrier();
      scene.changebarrier(5);
      ball2.changePlace(775, 246);
      des.changeImage(loadImage("tangseng.png"));
      des.changeSize(50, 84);
      des.changePlace(25, 259);
      scene.recentScene = 5;     
    } else if (scene.recentScene == 5)
    {//change to scene 6
      scene.cleanWorld();
      scene.cleanBarrier();
      des.changePlace(-25,-259);
      scene.recentScene = 6;
    }
  }

  // Barrier Collision
  for (int i = 0; i < barrier.size(); i++) { 
    if ( barrier.get(i).isInBlock(ball2) )//check whether player has a collision with barrier
    {
      if (scene.recentScene == 1)
      {
        ball2.changePlace(775, 240);//if two objects have a collision, restart it.
      } else if (scene.recentScene == 2)
      {
        ball2.changePlace(775, 211);
      } else if (scene.recentScene == 3)
      {
        ball2.changePlace(25, 350);
      } else if (scene.recentScene == 4)
      {
        ball2.changePlace(775, 293);
      }
      else if (scene.recentScene == 5)
      {
        ball2.changePlace(775, 246);
      }
    }
  }


  // 3. display
  // 3.1 draw player(Wukong)
  ball2.display();

  // 3.2 draw Blocks
  for (int i = 0; i < world.size(); i++) { 
    world.get(i).display();
  }

  //barrier display
  for (int i = 0; i< barrier.size(); i++) {
    barrier.get(i).display();
  }

  // 3.3 draw destination
  des.display();
  
  //3.4 add words 
  textAlign(CENTER);
  drawType(width * 0.5);



  if (keyPressed == true)//use keyboard LEFT and RIGHT to move the player
  {
    if (keyCode == LEFT) {
      ball2.move(new PVector( -2, 0)); //
    } else if (keyCode == RIGHT) {
      ball2.move(new PVector( 2, 0));
    }
  }
} 

void drawType(float x) {
  if (scene.recentScene == 0) {
    fill(255);
    text("RESCUE   TRIPIKATA", x, 200);
    fill(255);
    text("CLICK    TO    START", x, 400);
  }
  else if (scene.recentScene == 1) {
    fill(255);
    text("LEVEL 1", x, 65);
  }
  else if (scene.recentScene == 2) {
    fill(255);
    text("LEVEL 2", x, 65);
  }
  else if (scene.recentScene == 3) {
    fill(255);
    text("LEVEL 3", x, 65);
  }
  else if (scene.recentScene == 4) {
    fill(255);
    text("LEVEL 4", x, 65);
  }
  else if (scene.recentScene == 5) {
    fill(255);
    text("LEVEL 5", x, 65);
  }
  else if (scene.recentScene == 6) {
    fill(255);
    text("TRIPIKATA    IS    RESCUED !", x, 300);
  }
}


void keyPressed()
{
  if (keyCode == UP) { 
    ball2.speedY = -3;
    jump.play();
  }
}


void mouseClicked()
{
  if (scene.recentScene == 0) 
  {
    scene.cleanWorld();//clear the inside blocks
    scene.changeScene(1);//change the game scene to No.2
    scene.cleanBarrier();
    scene.changebarrier(1);
    ball2.changePlace(776, 211);//change the position of player for scene No.2
    des.changePlace(789, 495);//change the position of destination for scene No.2
    scene.recentScene = 1;//change the recentScene to 2;
  }
}

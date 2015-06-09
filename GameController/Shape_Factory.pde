class ShapeFactory {
  
  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;
  
  //the constructor - very important!
  ShapeFactory() {
    buildBasicPlayer();
    buildBasicEnemy();
  }
  
  PShape getBasicPlayer() { return basicPlayer; }
  PShape getBasicEnemy()  { return basicEnemy; }
  
  
  void buildBasicPlayer() {
      PShape player1;
  }


void setup() {
  size(500,500,P2D);
  player1 = createShape(GROUP);
  PShape chassis = createShape();
  chassis.beginShape();
  chassis.vertex(0,-90);
  chassis.vertex(40,-10);
  chassis.vertex(40,70);
  chassis.vertex(-40,70);
  chassis.vertex(-40,10);
  chassis.vertex(0,-90);
  chassis.endShape();
  PShape cockpit = createShape(ELLIPSE, -10,-15,20,30);
  PShape turret1 = createShape(LINE, 90, -30, 40, 30);
  PShape turret2 = createShape(LINE, -90, -30, -40, 30);
  player1.addChild(chassis);
  player1.addChild(cockpit);
  player1.addChild(turret1);
  player1.addChild(turret2);
}

void draw() {
  shape(player1,mouseX,mouseY);
}

  }
  
  void buildBasicEnemy() {
    enemy = createShape(ELLIPSE,10, 25, -10, -25);
  }

    
    


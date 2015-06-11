class ShapeFactory {

  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;
  
  
  int basicBulletRadius;
  int basicEnemyRadius;
  int basicPlayerRadius;


  ShapeFactory() {
    noStroke();
    buildBasicBullet();
    buildBasicPlayer();
    buildBasicEnemy();
  }

  PShape getBasicPlayer() { 
    return basicPlayer;
  }
  PShape getBasicEnemy() { 
    return basicEnemy;
  }
  PShape getBasicBullet () {
    return basicBullet;
  }

  void buildBasicPlayer() {
    basicPlayer = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.vertex(0, -90);
    chassis.vertex(40, -10);
    chassis.vertex(40, 70);
    chassis.vertex(-40, 70);
    chassis.vertex(-40, 10);
    chassis.vertex(0, -90);
    chassis.endShape();
    PShape cockpit = createShape(ELLIPSE, -10, -15, 20, 30);
    PShape turret1 = createShape(LINE, 90, -30, 40, 30);
    PShape turret2 = createShape(LINE, -90, -30, -40, 30);
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(cockpit);
    basicPlayer.addChild(turret1);
    basicPlayer.addChild(turret2);
    stroke(255);
  }


void buildBasicBullet() {
  basicBulletRadius = 20;
  basicBullet = createShape(ELLIPSE, -10, -10, 20, 20);
  basicBullet.setStroke(color(255));
  basicBullet.setStrokeWeight(4);
  basicBullet.setFill(color(127));
  
}


  void buildBasicEnemy() {
    basicEnemy = createShape(ELLIPSE, 10, 25, -10, -25);
  }
}


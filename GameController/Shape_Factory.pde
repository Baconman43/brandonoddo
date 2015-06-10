class ShapeFactory {

  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;


  ShapeFactory() {
    buildBasicPlayer();
    buildBasicEnemy();
  }

  PShape getBasicPlayer() { 
    return basicPlayer;
  }
  PShape getBasicEnemy() { 
    return basicEnemy;
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
  }






  void buildBasicEnemy() {
    basicEnemy = createShape(ELLIPSE, 10, 25, -10, -25);
  }
}


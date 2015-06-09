final int screenWidth = 800;
final int screenHeight = 600;
ShapeFactory factory;
PShape enemy;
PShape player1;
void setup() {
  size(screenWidth, screenHeight, P2D);
  factory = new ShapeFactory();
  enemy = factory.getBasicEnemy();
  player1 = factory.getBasicPlayer();
  noCursor();
}


void draw() {
  background(255);
  shape(player1, mouseX, mouseY);
  shape(enemy, 100, 100);
}
  

final int PACMAN_SIZE = 20;
final int PACMAN_TYPE = 2;

class Pacman extends Creature { 

  int selectedMovement;
  Pacman (int x, int y) {
    super(x, y, PACMAN_TYPE, "Pacman", color(255, 204, 0));
    selectedMovement = LEFT;
  }
  
  void drawYourSelf() {
    super.drawYourSelf();
    fill(c);
    circle((x * INTERSPACE) + (PACMAN_SIZE / 2), (y * INTERSPACE) + (PACMAN_SIZE / 2), PACMAN_SIZE);
  }
  
  void processMovement(TileGrid tileGrid) {
    if (selectedMovement == LEFT && tileGrid.isNotWallOnCreatureLeft(this)) {
      moveLeft();
    } else if (selectedMovement == RIGHT && tileGrid.isNotWallOnCreatureRight(this)) {
      moveRight();
    } else if (selectedMovement == UP && tileGrid.isNotWallOnCreatureUp(this)) {
      moveUp();
    } else if (selectedMovement == DOWN && tileGrid.isNotWallOnCreatureDown(this)) {
      moveDown();
    }
  }

  void setSelectedMovement(int movement) {
    if (key == CODED) {
      if (isValidMovement()) {
        selectedMovement = movement;
      }
    }
  }
} 

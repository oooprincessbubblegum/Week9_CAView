/* Class BestView
 * A concrete implementation of the CAView as gradient mapped RGB tinted animations
 * By: Chris, Gerardo, Sherman, Sophia
 */
class BestView extends CAView {
   // The color to display when the state of a CA cell is "off".
  color offColor;
  
  // RGB color mapping of CA cell when "on"
  color red;
  color blue;
  color green;
  
  // Class constructor taking as a parameter the model referred to.
  BestView(CA model) {
    this(model, color(0));
  }
  
  // Class constructor taking as a parameter the model referred to as well as "on" and "off" colors.
  BestView(CA model, color offColor) {
    super(model);
    this.offColor = offColor;
  }
  
  // Resets the view to initial conditions.
  void restart() {
    background(255); // resets background
  }
  
  // Returns color of CA cell
  void generateColoredCell(int posX, int posY, int size){
    noStroke();
    red = int(map(posX, width/2, width, 0, 255));
    blue = int(map(posX, width/2, 0, 0, 255));
    green = int(map(posY, 0, height, 0, 255));
    colorMode(RGB,100);
    fill(red,green,blue);
    ellipse(posX, posY, size, size);
  }
  
  // Displays the model CA as simple square cells.
  void display() {
    for (int i = 0; i < model.nCells(); i++) {
      if (model.getCell(i) == 1){
        fill(offColor);
        noStroke();
        ellipse(i*CELL_WIDTH, model.getGeneration()*CELL_WIDTH, CELL_WIDTH, CELL_WIDTH);
      } else {
        generateColoredCell(i*CELL_WIDTH, model.getGeneration()*CELL_WIDTH, CELL_WIDTH);
      }
    }
  }

  // Return true iff the CA has completed its run. This is the case if it reaches the bottom of the screen.
  boolean finished() {
    return (model.getGeneration() > height/CELL_WIDTH);
  }
}
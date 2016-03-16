// A concrete implementation of the CAView as simple 2-color squares.
/*class SquareCAView extends CAView {
  
  // The color to display when the state of a CA cell is "on".
  color onColor;
  
  // The color to display when the state of a CA cell is "off".
  color offColor;

  // Class constructor taking as a parameter the model referred to.
  SquareCAView(CA model) {
    this(model, color(255), color(0));
  }
  
  // Class constructor taking as a parameter the model referred to as well as "on" and "off" colors.
  SquareCAView(CA model, color onColor, color offColor) {
    super(model);
    this.onColor = onColor;
    this.offColor = offColor;
  }
  
  // Resets the view to initial conditions.
  void restart() {
    background(255); // resets background
  }

  // Displays the model CA as simple square cells.
  void display() {
    for (int i = 0; i < model.nCells(); i++) {
      if (model.getCell(i) == 1) fill(offColor);
      else                       fill(onColor);
      noStroke();
      rect(i*CELL_WIDTH, model.getGeneration()*CELL_WIDTH, CELL_WIDTH, CELL_WIDTH);
    }
  }

  // Return true iff the CA has completed its run. This is the case if it reaches the bottom of the screen.
  boolean finished() {
    return (model.getGeneration() > height/CELL_WIDTH);
  }
}*/
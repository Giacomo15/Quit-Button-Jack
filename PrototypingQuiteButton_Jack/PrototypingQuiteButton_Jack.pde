//Global Variables

float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FFF386, purple=#CE86FF, resetWhite=#FFFFFF, buttonColour; //Notice NightMode Blue values
//
void setup() {
  fullScreen();
  println(displayWidth, displayHeight); //Landscape, not portrait nor square
  //
  String landscape = "Sei brave ad andare!";
  String portrait = "Bruh, gira il telefo";
  String displayOrientation = (width >= height) ? landscape : portrait;
  displayOrientation = ( width >= height ) ? landscape : portrait ;
  if ( displayOrientation==portrait ) println ( displayOrientation ); //Portrait Display Orientation
  if ( displayOrientation==landscape ) appWidth = width; //option displayWidth
  if ( displayOrientation==landscape ) appHeight = height; //option displayHeight
  println (appWidth, appHeight); //Will be NULL if portrait .. until landscape (future lesson)
  //
  //Note: variables similar to Face Rect() on Measles
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;//thinking experiment
  quitButtonX = centerX - appWidth*1/4; //1/4 on one-half, 1/4 on other half
  quitButtonY = centerY - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}//End setup
//
void draw() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = yellow; 
  } else {
    buttonColour = purple;
  }//End Hopver-Over Effect
  //
  if (displayOrientation==portrait) println (displayOrientation);
  //
  println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  println("YValue", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  buttonColour = purple; //yellow
  fill(buttonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite);
}//End draw
//
void keyPressed() {
  //Quit Keyboard Button
  if ( key=='Q' || key=='q') exit(); //Keyboard is separated on key-variables: key and keyCode
  //
}//End keyPressed
//
void mousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//
//End Main Program

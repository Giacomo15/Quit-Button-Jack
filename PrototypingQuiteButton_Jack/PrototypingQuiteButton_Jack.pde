//Global Variables
int appWidth, appHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FFF386, purple=#CE86FF, resetWhite=#FFFFFF, buttonColour; //Notice NightMode Blue values
//
void setup() {
  fullScreen();
  println(displayWidth, displayHeight); //Landscape, not portrait nor square
  String landscape = "Sei brave ad andare!";
  String portrait = "Bruh, gira il telefo";
  String displayOrientation = (width >= height) ? landscape : portrait;
  if ( width < height ) println ( displayOrientation); // Portrait Display Orientation
  if ( width >= height ) appWidth = displayWidth;
  if ( width >= height ) appHeight = displayHeight;
  println (appWidth, appHeight); //Will be NULL if portrait .. until landscape (future lesson)
  //
  //Note: variables similar to Face Rect() on Measles
  int smallerDisplayDimension = appHeight;
  int canvasCenter = smallerDisplayDimension*1/2; //thinking experiment
  quitButtonX = (appWidth*1/2) - appWidth*1/4;
  quitButtonY = (appHeight*1/2) - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}//End setup
//
void draw() {
  if ( mouseX>quitButtonX && mouseX<quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  };
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
  
}//End mousePressed
//
//End Main Program

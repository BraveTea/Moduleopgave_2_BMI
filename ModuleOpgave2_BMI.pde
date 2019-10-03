import controlP5.*;
ControlP5 theControl;



void setup() {
  size(400, 350);
  smooth();
  theControl = new ControlP5(this);
  createNumberBoxes(theControl);
}

void draw() {
  float scale_factor = height/2 / 33;
  float BMI =  leesGewicht()/(sq(leesLengte()/100));
  scalingBG(scale_factor);
  drawBMIbar(scale_factor, BMI);
  prntBMI(BMI);
  println(BMI);
  println("lengte:" + leesLengte());
  println("gewicht: " + leesGewicht());
}

void drawBMIbar(float scale_factor, float BMI) {
  fill(#FFC0CB);
  stroke(#FFC0CB);
  rect(width/2 - 50, height - (BMI*scale_factor), 100, BMI*scale_factor);
}


void scaleLine(float x, String y) {
  line(0, height - x, width, height - x); 
  textSize(8);
  fill(255);
  text(y, 10, height - x + 10);
}

void scalingBG(float scale_factor) {
  background(0);
  stroke(#00FF00);
  scaleLine(18.5 * scale_factor, "Ondergewicht"); 
  scaleLine(25 * scale_factor, "Normaal Gewicht");
  stroke(#FF0000);
  scaleLine(30 * scale_factor, "Overgewicht"); 
  text("Obees", 10, height - (30 + 5)*scale_factor); 
}

void prntBMI(float x){
  fill(255);
  int txtSize = 20;
  textSize(txtSize);
  text(x , 10 , txtSize* 2); //don't know how to cap the float decimals to less than 3 (want it at 1) (so I want to round the decimals)
}

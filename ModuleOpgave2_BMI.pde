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
  scalingBG();
  float BMI =  leesGewicht()/(sq(leesLengte()/100));
  println(BMI);
  println("lengte:" + leesLengte());
  println("gewicht: " + leesGewicht());
  fill(#FFC0CB);
  stroke(#FFC0CB);
  rect(width/2 - 50, height - (BMI*scale_factor) , 100, BMI*scale_factor); //graph bar 
}

void scaleLine(float x, String y) {
  line(0, height - x, width, height - x); 
  textSize(8);
  fill(255);
  text(y, 10, height - x + 10);
}


void scalingBG(){
  float scale_factor = height/2 / 33;
  background(0);
  stroke(#00FF00);
  scaleLine(18.5 * scale_factor, "Ondergewicht"); //the *4 works a treat here, but I have no idea why. It was trial and error.
  scaleLine(25 * scale_factor, "Normaal Gewicht");
  stroke(#FF0000);
  scaleLine(30 * scale_factor, "Overgewicht"); 
  text("Obees", 10, height - (30 + 5)*scale_factor); //I faked this. the height (x axis) is calculated like this because it is similar to the scaleLine() argument.
}

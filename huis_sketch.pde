// Les HAN ITA-1F: Voorbereiding 1 door Timo Ramuzat


PShape huis, dak, schoorsteen, main;

void setup() {
  size(100, 100);

  // Maak de groep om de shake te creëren
  huis = createShape(GROUP);
 

  // Het creëren van het huis dak
  ellipseMode(CORNER);
  dak = createShape(TRIANGLE, -25, 45, 25, 45, 0, 10);
  dak.setFill(color(255));
  
    // Het creëren van de schoorsteen
  ellipseMode(CORNER);
  schoorsteen = createShape(RECT, 25, 45, -10, -20);
  schoorsteen.setFill(color(255));
  
  // Het creëren van het huis zelf
  main = createShape(RECT, -25, 45, 50, 40);
  main.setFill(color(#ffffff));

  // Toevoegen van figuren
  huis.addChild(main);
  huis.addChild(dak);
  huis.addChild(schoorsteen);
}

// Het maken van het huis

void draw() {
  background(#ffffff);
  translate(50, 15);
  shape(huis); // Draw the group
}

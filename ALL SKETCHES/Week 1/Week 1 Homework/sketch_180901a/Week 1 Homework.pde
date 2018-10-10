//Pseudocode (Making a cup of tea)
//Get teabag;
//Get cup;
//Put teabag in cup;
//Plug in kettle;
//Put water into kettle;
//Wait for kettle to boil;
//Add water to cup;
//Let teabag sit in cup for 2-4 minutes;
//Remove teabag
//Add milk and/or sugar;
//Drink the tea


size (500,500);

//arc (a, b, c, d, start, stop);
//arc (a, b, c, d, start, stop, mode);

//image of 1/2 PI right bottom
arc(250, 255, 250, 250, 0, HALF_PI); 

//image of 1/2 PI left bottom
arc(250, 266, 260, 260, HALF_PI, PI);

//OPEN = shape isn't completely outlined
arc(250, 255, 280, 280, 0, PI+QUARTER_PI, OPEN);

//CHORD = shaped outlined (connection of endpoints)
arc(250, 255, 280, 280, 0, PI, CHORD);

//PIE = endpoints aren't connected with just one line (pie shaped)
arc(250, 255, 280, 280, 0, PI+QUARTER_PI, PIE);

//-HALF_PI seems to be in the 1st Quadrant, then goes to PI
arc(250, 250, 250, 250, -HALF_PI, PI);

//starts from PI and goes to QUARTER_PI (in the 4th Quadrant)
arc(250, 250, 250, 250, QUARTER_PI, PI);

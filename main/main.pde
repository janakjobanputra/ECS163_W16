//http://www.50states.com/maps/ <------ states images

//=========================== GLOBALS ===========================//
String[] stateNames = {"Alabama", "Alaska", "Arizona", "Arkansas", "California", 
"Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho",
"Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", 
"Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", 
"Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", 
"New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", 
"Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", 
"Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", 
"Wisconsin", "Wyoming"};

String[] stateAbrvs = {"AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", 
"GA", "HI", "ID", "IL", "IN", "IO", "KS", "KY", "LA", "MA", "MD", "MA", "MI", 
"MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", 
"OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", 
"WI", "WY"};

boolean menuOpen=false;
PImage mapPic, homeIcon;
Table data13;
float[] latitude = new float[7805];
float[] longitude = new float[7805];
String[] name = new String[7805];
float actualWidth = 124.50 - 67.50;
float actualHeight = 46 - 26;
float scaleFactorW = 900/actualWidth;
float scaleFactorH = 550/actualHeight;

//=========================== SETUP() ===========================//

void setup()
{
  size(1200, 700);
  frameRate(60);
  
  mapPic = loadImage("pics/blankUSMap2.gif");
  homeIcon = loadImage("pics/homeIcon.png", "png");
  
  boolean fileExists = checkFileExists("MERGED2013_PP.csv");
  if(fileExists) {
    data13 = loadTable("data/MERGED2013_PP.csv", "csv");
    for (int i = 1; i < 7805; i++) {
      latitude[i-1] = data13.getFloat(i, 21);
      longitude[i-1] = data13.getFloat(i, 22);
      name[i-1] = data13.getString(i, 3);
    }
  }
  print(longitude[0], " ", latitude[0], "\n");
}

//=========================== DRAW() ============================//

void draw()
{
  background(255);
  drawToolbar();
}

//======================== drawToolbar() =========================//

void drawToolbar()
{
  noStroke();
  fill(0,31,100);
  rect(0,0,1200,50); // overall toolbar
  
  if(menuOpen) // menu button if menu open
  {
    strokeWeight(2);
    stroke(255);
    fill(0);
    rect(7.5,12.5,35,5,5);
    rect(7.5,22.5,35,5,5);
    rect(7.5,32.5,35,5,5);
  }
  else // menu button if menu NOT open
  {
    noStroke();
    fill(255);
    rect(7.5,12.5,35,5,5);
    rect(7.5,22.5,35,5,5);
    rect(7.5,32.5,35,5,5);
  }
  //action for menu button
  if(overRect(0,0,50,50)&&mousePressed)
      menuOpen=!menuOpen;
  
  stroke(0);
  strokeWeight(2);
  noFill();
  image(mapPic, 25, 75, 900, 550);
  rect(25,75,900,600);
  noStroke();
  image(homeIcon,1200-50,0,50,50);
  
  plotColleges();
 
  /*float scaledLat = (46.25 - latitude[346])*scaleFactorH;
  float scaledLong = (124.25 + longitude[346])*scaleFactorW;
  
  print(latitude[346] + " scaledLat " + scaledLat + "\n");
  print(longitude[346] + " scaledLong " + scaledLong + "\n");
  
  stroke(0);
  strokeWeight(2);
  noFill();
  ellipse(scaledLong + 25, scaledLat + 75, 10, 10);
  
  float scaledLa = (46.25 - latitude[692])*scaleFactorH;
  float scaledLon = (124.25 + longitude[692])*scaleFactorW;
  
  print(latitude[692] + " scaledLat " + scaledLa + "\n");
  print(longitude[692] + " scaledLong " + scaledLon + "\n");
  
  stroke(0);
  strokeWeight(2);
  fill(255,0,0);
  ellipse(scaledLon + 25, scaledLa + 75, 10, 10);
  ellipse(800,165, 20,20);*/
  
}

//========================== overRect() ===========================//

boolean overRect(float buttonX, float buttonY, float buttonW, float buttonH)
{
  if (mouseX >= buttonX  && mouseX <= buttonX+buttonW &&
      mouseY >= buttonY  && mouseY <= buttonY+buttonH)
    return true;
  else
    return false;
}

//=======================CHECKFILEEXISTS()========================//

boolean checkFileExists(String path) {
  File file = new File(dataPath(path));
  //print(file + "\n");
  if (file.exists()) 
    return true;
  else return false;
}

//======================= plotColleges() ========================//

void plotColleges() {
 
  for(int i = 0; i < 400; i++) {
  
    float scaledLat = (46 - latitude[i])*scaleFactorH;
    float scaledLong = (124.50 + longitude[i])*scaleFactorW;
    
    //print(latitude[i] + " scaledLat " + scaledLat + "\n");
    //print(longitude[i] + " scaledLong " + scaledLong + "\n");
    
    noStroke();
    fill(255,0,0);
    ellipse(scaledLong + 25, scaledLat + 75, 10, 10);
  }
}

//===============================================================//
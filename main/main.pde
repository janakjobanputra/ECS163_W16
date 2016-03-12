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
float actualWidth = 126 - 66;
float actualHeight = 48 - 24;
float scaleFactorW = 900/actualWidth;
float scaleFactorH = 600/actualHeight;

//=========================== SETUP() ===========================//

void setup()
{
  size(1200, 700);
  frameRate(60);
  
  mapPic = loadImage("pics/blankUSMap.png","png");
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
  
  noStroke();
  noFill();
  image(mapPic, 25, 75, 900, 600);
  image(homeIcon,1200-50,0,50,50);
  
  noStroke();
  fill(255,0,0);
  float scaledLat = latitude[0]*scaleFactorW;
  float scaledLong = longitude[0]*scaleFactorH*(-1);
  
  print(scaleFactorW + " " + latitude[0] + " scaledLat " + scaledLat + "\n");
  print(longitude[0] + " scaledLong " + scaledLong + "\n");
  
  ellipse(scaledLat + 25, scaledLong + 75, 10, 10);
  
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

//===============================================================//
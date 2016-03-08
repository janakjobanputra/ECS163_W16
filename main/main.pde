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



//=========================== SETUP() ===========================//

void setup()
{
  size(1200, 700);
  frameRate(60);
  
  mapPic = loadImage("pics/blankUSMap.png","png");
  homeIcon = loadImage("pics/homeIcon.png", "png");
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
  image(homeIcon,1200-50,0,50,50);
  
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

//===============================================================//
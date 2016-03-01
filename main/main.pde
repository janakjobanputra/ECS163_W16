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



//=========================== SETUP() ===========================//

void setup()
{
  size(1200, 700);
  frameRate(60);
}

//=========================== DRAW() ============================//

void draw()
{
  background(255);
  noStroke();
  fill(0, 35, 102);
  rect(0, 0, 1200, 50);
}

//========================== ifOver() ===========================//

boolean ifOver(float buttonX, float buttonY, float buttonW, float buttonH)
{
  if (mouseX >= buttonX  && mouseX <= buttonX+buttonW &&
      mouseY >= buttonY  && mouseY <= buttonY+buttonH)
    return true;
  else
    return false;
}
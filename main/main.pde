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

PImage mapPic, homeIcon, statePic;

boolean menuOpen=false;


boolean homeView=true;


boolean stateView=false;
int currentState=0;
BarChart barChart;


Table data13;
int csvSize=500;
float[] latitude = new float[csvSize];
float[] longitude = new float[csvSize];
String[] collegeName = new String[csvSize];
String[] collegeCity = new String[csvSize];
String[] stAbbr = new String[csvSize];
float[]admRateAll= new float[csvSize];

float actualWidth = 125.50 - 66.50;
float actualHeight = 46 - 26;
float scaleFactorW = 900/actualWidth;
float scaleFactorH = 600/actualHeight;

//=========================== SETUP() ===========================//

void setup()
{
  size(1200, 700);
  frameRate(60);
  barChart = new BarChart(this);
  barChart.setData(new float[] {0.76, 0.24, 0.39, 0.18, 0.20});
  
  mapPic = loadImage("pics/blankUSMap3.png");
  homeIcon = loadImage("pics/homeIcon.png", "png");
  statePic = loadImage("pics/states/Alabama.gif");
  
  boolean fileExists = checkFileExists("testData2013.csv");
  if(fileExists)
  {
    data13 = loadTable("data/MERGED2013_PP.csv", "csv");
    for (int i = 1; i<csvSize; i++)
    {
      collegeName[i-1] = data13.getString(i, 3);
      collegeCity[i-1] = data13.getString(i, 4);
      stAbbr[i-1] = data13.getString(i, 5);
      latitude[i-1] = data13.getFloat(i, 21);
      longitude[i-1] = data13.getFloat(i, 22);
      admRateAll[i-1] = data13.getFloat(i, 37);
    }
  }
  //print(longitude[0], " ", latitude[0], "\n");
}

//=========================== DRAW() ============================//

void draw()
{
  background(255);
  if(homeView)
    drawHomeView();
  else if(stateView)
    drawStateView();
    
    
  if(menuOpen)
    drawMenuView();
    
  drawToolbar();
  print(currentState, "\n");
}

//======================== drawToolbar() =========================//

void drawToolbar()
{
  noStroke();
  fill(21,101,192);
  rect(0,0,1200,50); // overall toolbar
  
  noStroke();
  fill(255);
  rect(7.5,12.5,35,5,5);
  rect(7.5,22.5,35,5,5);
  rect(7.5,32.5,35,5,5);
  if(mouseOver(0,0,50,50)&&mousePressed)
      menuOpen=!menuOpen;
  
  stroke(0);
  strokeWeight(2);
  noFill();
  //image(mapPic, 25, 75, 900, 600);
  //rect(25,75,900,600);
  noStroke();
  image(homeIcon,1200-50,0,50,50);
  if(mouseOver(1200-50,0,50,50)&&mousePressed)
  {
    menuOpen=false;
    homeView=true;
    stateView=false;
  } // if home icon pressued
  
  noStroke();
  fill(255);
  textFont(createFont("Serif",35),35);
  textAlign(CENTER, CENTER);
  textSize(35);
  if(menuOpen)
    text("Menu", 600, 20);
  else if(stateView)
  {
    text(stateNames[currentState]+" College Data", 600, 20);
    nextPrevState();
  }
  else if(homeView)
    text("College Data Home", 600, 20);
  
}

//========================== mouseOver() ===========================//

boolean mouseOver(float buttonX, float buttonY, float buttonW, float buttonH)
{
  if (mouseX >= buttonX  && mouseX <= buttonX+buttonW &&
      mouseY >= buttonY  && mouseY <= buttonY+buttonH)
    return true;
  else
    return false;
}

//=======================CHECKFILEEXISTS()========================//

boolean checkFileExists(String path)
{
  File file = new File(dataPath(path));
  //print(file + "\n");
  if (file.exists()) 
    return true;
  else return false;
}

//===============================================================//
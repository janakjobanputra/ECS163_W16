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
int[] stateCollegeNum = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

PImage mapPic, homeIcon, statePic;

boolean menuOpen=false;

boolean collegeView = false;
int currCollege = 0;

boolean homeView=true;

boolean stateView=false;
int currentState=0;
BarChart barChart;
int currAttr = 0;


Table data13;
int csvSize=7805;
float[] latitude = new float[csvSize];
float[] longitude = new float[csvSize];
String[] collegeName = new String[csvSize];
String[] collegeCity = new String[csvSize];
String[] stAbbr = new String[csvSize];
float[] admRateAll= new float[csvSize];
float[] annCost = new float[csvSize];
float[] fourYrCost = new float[csvSize];
float[] actTot = new float[csvSize];
float[] actMath = new float[csvSize];
float[] actEng = new float[csvSize];
float[] actWrit = new float[csvSize];
float[] satMath = new float[csvSize];
float[] satRead = new float[csvSize];
float[] satWrit = new float[csvSize];

String[] currColNames;
float[] currColWhit;
float[] currColBl;
float[] currColHisp;
float[] currColAsian;
float[] currColAmIn;
float[] currColHI;
float[] currCol2More;
float[] currColAlien;
float[] currColUnk;
float[] retRate4f;
float[] retRate4p;
float[] retRateL4f;
float[] retRateL4p;
float[] middSchool;
float[] highSchool;
float[] postSecond;
float[] totDebt;
float[] firstGenDebt;
float[] notFirstGenDebt;
float[] fDebt;
float[] mDebt;
float[] gradDebt;

float[] gradWhit4;
float[] gradBl4;
float[] gradHisp4;
float[] gradAsian4;
float[] gradAmIn4;
float[] gradHI4;
float[] grad2More4;
float[] gradAlien4;
float[] gradUnk4;
float[] gradWhitL4;
float[] gradBlL4;
float[] gradHispL4;
float[] gradAsianL4;
float[] gradAmInL4;
float[] gradHIL4;
float[] grad2MoreL4;
float[] gradAlienL4;
float[] gradUnkL4;

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

  boolean fileExists = checkFileExists("MERGED2013_PP.csv");
  if (fileExists)
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
      annCost[i-1] = data13.getFloat(i, 376);
      fourYrCost[i-1] = data13.getFloat(i, 377);
      actTot[i-1] = data13.getFloat(i, 54);
      actMath[i-1] = data13.getFloat(i, 56);
      actEng[i-1] = data13.getFloat(i, 55);
      actWrit[i-1] = data13.getFloat(i, 57);
      satMath[i-1] = data13.getFloat(i, 44);
      satRead[i-1] = data13.getFloat(i, 43);
      satWrit[i-1] = data13.getFloat(i, 45);
      for(int j=0; j<50; j++)
      {
        if(   stAbbr[i-1].charAt(0) == stateAbrvs[j].charAt(0) 
           && stAbbr[i-1].charAt(1) == stateAbrvs[j].charAt(1)  )
        {
          stateCollegeNum[j]++;
        } // end if states match
      } // end for j
    } // end for i
  } // end if file exists
  //print(stateCollegeNum[0], " ", stateCollegeNum[1],  " ", stateCollegeNum[2],"\n");
}

//=========================== DRAW() ============================//

void draw()
{
  background(255,253,231);
  if (homeView)
    drawHomeView();
  else if (stateView)
  {
    if (currAttr == 0) drawStateView(admRateAll, 0, 1);
    else if (currAttr == 1) drawStateView(annCost, 0, 100000);
    else if (currAttr == 2) drawStateView(fourYrCost, 0, 400000);
    else if (currAttr == 3) drawStateView(actTot, 0, 32);
    else if (currAttr == 4) drawStateView(actMath, 0, 32);
    else if (currAttr == 5) drawStateView(actEng, 0, 32);
    else if (currAttr == 6) drawStateView(actWrit, 0, 32);
    else if (currAttr == 7) drawStateView(satMath, 0, 800);
    else if (currAttr == 8) drawStateView(satRead, 0, 800);
    else if (currAttr == 9) drawStateView(satWrit, 0, 800);
    //print("currAttr = ", currAttr, "\n");
    drawAttrButtons();
  }
  else if (collegeView) drawCollegeView();
  
  if(menuOpen)
    drawMenuView();
    
  drawToolbar();
  //print(currentState, "\n");
}

//======================== drawToolbar() =========================//

void drawToolbar()
{
  noStroke();
  fill(21, 101, 192);
  rect(0, 0, 1200, 50); // overall toolbar

  noStroke();
  fill(255);
  rect(7.5, 12.5, 35, 5, 5);
  rect(7.5, 22.5, 35, 5, 5);
  rect(7.5, 32.5, 35, 5, 5);
  if(mouseOver(0, 0, 50, 50)&&mousePressed)
    menuOpen=!menuOpen;

  stroke(0);
  strokeWeight(2);
  noFill();
  //image(mapPic, 25, 75, 900, 600);
  //rect(25,75,900,600);
  noStroke();
  image(homeIcon, 1200-50, 0, 50, 50);
  if (mouseOver(1200-50, 0, 50, 50)&&mousePressed)
  {
    menuOpen=false;
    homeView=true;
    stateView=false;
  } // if home icon pressued

  noStroke();
  fill(255);
  textFont(createFont("Serif", 35), 35);
  textAlign(CENTER, CENTER);
  textSize(35);
  if (menuOpen)
    text("History", 600, 20);
  else if (stateView)
  {
    text(stateNames[currentState]+" College Data", 600, 20);
    nextPrevState();
  }
  else if (homeView)
    text("College Data Home", 600, 20);
  else if (collegeView) {
    text(currColNames[currCollege], 600, 20);
    nextPrevCol();
  }
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
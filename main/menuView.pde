//======================= drawMenuView() ========================//


void drawMenuView()
{
//----------------------menu rect
  noStroke();
  fill(0);
  rect(5,5,305,700);
  noStroke();
  fill(13,71,161);
  rect(0,0,305,700);
//----------------------homeview bar
  noStroke();
  fill(13,71,161);
  if(homeView)
  {
    fill(21,101,192);
    stroke(255);
    strokeWeight(2);
  }
  rect(0,55,300,30);
  noStroke();
  fill(255);
  textFont(createFont("Serif",18),18);
  textAlign(LEFT, CENTER);
  textSize(18);
  text("Home: USA Colleges", 10, 55+15);
  if(mouseOver(0,55,300,30)&&mousePressed)
  {
    menuOpen=false;
    stateView=false;
    homeView=true;
    collegeView = false;
  }
//----------------------stateview bar
  noStroke();
  fill(13,71,161);
  if(stateView)
  {
    fill(21,101,192);
    stroke(255);
    strokeWeight(2);
  }
  rect(0,55+30,300,30);
  noStroke();
  fill(255);
  textFont(createFont("Serif",18),18);
  textAlign(LEFT, CENTER);
  textSize(18);
  text(stateNames[currentState]+" College Data", 10, 55+30+15);
  if(mouseOver(0,55+30,300,30)&&mousePressed)
  {
    menuOpen=false;
    homeView=false;
    stateView=true;
    collegeView = false;
  }
//----------------------collegeview bar
  noStroke();
  fill(13,71,161);
  if(collegeView)
  {
    fill(21,101,192);
    stroke(255);
    strokeWeight(2);
  }
  rect(0,55+60,300,30);
  noStroke();
  fill(255);
  textFont(createFont("Serif",18),18);
  textAlign(LEFT, CENTER);
  textSize(10);
  text(currColNames[currCollege], 10, 55+60+15);
  if(mouseOver(0,55+60,300,30)&&mousePressed)
  {
    menuOpen=false;
    homeView=false;
    stateView=false;
    collegeView = true;
  }
//----------------------
}// end draw Menu View

//======================= nextPrevState() ========================//

void nextPrevState()
{
  noStroke();
  fill(255);
  triangle(900, 15, 900, 35, 910,25);
  if(mouseOver(900, 15, 10, 20))
  {
    noStroke();
    fill(0);
    triangle(900, 15, 900, 35, 910, 25);
    if(mousePressed&&currentState!=49)
      currentState=currentState+1;
    else if(mousePressed&&currentState==49)
      currentState=0;
  }
  noStroke();
  fill(255);
  triangle(300, 15, 300, 35, 290,25);
  if(mouseOver(290, 15, 10, 20))
  {
    noStroke();
    fill(0);
    triangle(300, 15, 300, 35, 290,25);
    if(mousePressed&&currentState!=0)
      currentState=currentState-1;
    else if(mousePressed&&currentState==0)
      currentState=49;
  }
}
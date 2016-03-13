//=========================== drawStateView() ======================//

void drawStateView(float[] data, int min, int max)
{
  //INSERT TITLE IN TOOLBAR
  //print("State Selected: "+stateNames[currentState]+"\n");
  statePic = loadImage("pics/states/"+stateNames[currentState]+".gif");
  image(statePic, 25, 75, 465, 600);
  stroke(0);
  strokeWeight(1);
  noFill();
  rect(25,75,465,600);
  float stateData[] = new float[100];
  String names[]= new String[100];
  int j=0;
  for(int i=0; i<csvSize-1; i++)
  {
    if(stAbbr[i].charAt(0) == stateAbrvs[currentState].charAt(0) 
    && stAbbr[i].charAt(1) == stateAbrvs[currentState].charAt(1))
    {
      stateData[j]=data[i];
      names[j]=collegeName[i];
      j++;
    }
  }
  //print(stAbbr[0].charAt(0) + " " + stateAbrvs[currentState].charAt(0) + "\n");
  //print(stAbbr[0]==stateAbrvs[currentState], "\n");
  //print(stateData[0], " ", admRateAll[0], "\n");
  //print(names[0], " ", collegeName[0], "\n");
  float[] d = subset(stateData, 1, j-1);
  //print(d[0], " ", d[1], " ", d[2], "\n");
  String[] n = subset(names, 1, j-1);
  
  barChart.setData(d);
     
  // Scaling
  barChart.setMinValue(min);
  barChart.setMaxValue(max);
   
  // Axis appearance
  textFont(createFont("Serif",10),10);
  fill(0);
   
  barChart.showValueAxis(true);
  if(currAttr < 1) barChart.setValueFormat("#%");
  else if(currAttr < 3) barChart.setValueFormat("$###,###");
  else barChart.setValueFormat("###");
  barChart.setBarLabels(n);
  barChart.showCategoryAxis(true);
  
  barChart.transposeAxes(true);
  barChart.setBarColour(color(0,105,92));
  
  barChart.draw(525,75,500,600);
}

//========================= drawAttrButtons() ====================//

void drawAttrButtons() {
 
  stroke(173,20,87);
  if(currAttr == 0) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,100,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 100, 130, 25);
  if(mouseOver(1050,100,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("Admissions Rate", 1050+65, 100+12.5);
  
  stroke(173,20,87);
  if(currAttr == 1) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,150,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 150, 130, 25);
  if(mouseOver(1050,150,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("Annual Cost", 1050+65, 150+12.5);
  
  stroke(173,20,87);
  if(currAttr == 2) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,200,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 200, 130, 25);
  if(mouseOver(1050,200,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("4-Year Cost", 1050+65, 200+12.5);
  
  stroke(173,20,87);
  if(currAttr == 3) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,250,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 250, 130, 25);
  if(mouseOver(1050,250,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("ACT Cummulative", 1050+65, 250+12.5);
  
  stroke(173,20,87);
  if(currAttr == 4) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,300,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 300, 130, 25);
  if(mouseOver(1050,300,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("ACT Math", 1050+65, 300+12.5);
  
  stroke(173,20,87);
  if(currAttr == 5) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,350,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 350, 130, 25);
  if(mouseOver(1050,350,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("ACT English", 1050+65, 350+12.5);
  
  stroke(173,20,87);
  if(currAttr == 6) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,400,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 400, 130, 25);
  if(mouseOver(1050,400,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("ACT Writing", 1050+65, 400+12.5);
  
  
  stroke(173,20,87);
  if(currAttr == 7) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,450,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 450, 130, 25);
  if(mouseOver(1050,450,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("SAT Math", 1050+65, 450+12.5);
  
  stroke(173,20,87);
  if(currAttr == 8) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,500,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 500, 130, 25);
  if(mouseOver(1050,500,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("SAT Reading", 1050+65, 500+12.5);
  
  stroke(173,20,87);
  if(currAttr == 9) strokeWeight(3);
  else strokeWeight(0);
  if(mouseOver(1050,550,130,25)) fill(173,20,87);
  else fill(240,98,146);
  rect(1050, 550, 130, 25);
  if(mouseOver(1050,550,130,25)) fill(255);
  else fill(0);
  textAlign(CENTER, CENTER);
  textSize(13);
  text("SAT Writing", 1050+65, 550+12.5);
  
  if(mouseOver(1050,100,130,25)&&mousePressed) currAttr = 0;
  else if(mouseOver(1050,150,130,25)&&mousePressed) currAttr = 1;
  else if(mouseOver(1050,200,130,25)&&mousePressed) currAttr = 2;
  else if(mouseOver(1050,250,130,25)&&mousePressed) currAttr = 3;
  else if(mouseOver(1050,300,130,25)&&mousePressed) currAttr = 4;
  else if(mouseOver(1050,350,130,25)&&mousePressed) currAttr = 5;
  else if(mouseOver(1050,400,130,25)&&mousePressed) currAttr = 6;
  else if(mouseOver(1050,450,130,25)&&mousePressed) currAttr = 7;
  else if(mouseOver(1050,500,130,25)&&mousePressed) currAttr = 8;
  else if(mouseOver(1050,550,130,25)&&mousePressed) currAttr = 9;
}

//===============================================================//
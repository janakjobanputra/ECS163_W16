//=========================== drawStateView() ======================//

void drawStateView(float[] data, int min, int max)
{
  //print("State Selected: "+stateNames[currentState]+"\n");
  statePic = loadImage("pics/states/"+stateNames[currentState]+".gif");
  image(statePic, 25, 75, 465, 600);
  stroke(0);
  strokeWeight(1);
  noFill();
  rect(25,75,465,600);
  float stateData[] = new float[66];
  float white[] = new float[66];
  float black[] = new float[66];
  float asian[] = new float[66];
  float hisp[] = new float[66];
  float amind[] = new float[66];
  float pacHI[] = new float[66];
  float twoMore[] = new float[66];
  float alien[] = new float[66];
  float unk[] = new float[66];
  String names[]= new String[66];
  
  float full4[] = new float[66];
  float part4[] = new float[66];
  float fullL4[] = new float[66];
  float partL4[] = new float[66];
  
  float ms[] = new float[66];
  float hs[] = new float[66];
  float pss[] = new float[66];
  float debt[] = new float[66];
  float firstGen[] = new float[66];
  float notFirstGen[] = new float[66];
  float fem[] = new float[66];
  float mal[] = new float[66];
  float grad[] = new float[66];
 
  float gradwhite4[] = new float[66];
  float gradblack4[] = new float[66];
  float gradasian4[] = new float[66];
  float gradhisp4[] = new float[66];
  float gradamind4[] = new float[66];
  float gradpacHI4[] = new float[66];
  float gradtwoMore4[] = new float[66];
  float gradalien4[] = new float[66];
  float gradunk4[] = new float[66];

  float gradwhiteL4[] = new float[66];
  float gradblackL4[] = new float[66];
  float gradasianL4[] = new float[66];
  float gradhispL4[] = new float[66];
  float gradamindL4[] = new float[66];
  float gradpacHIL4[] = new float[66];
  float gradtwoMoreL4[] = new float[66];
  float gradalienL4[] = new float[66];
  float gradunkL4[] = new float[66];
  
  int j=0;
  for(int i=0; i<csvSize-1 && j<66; i++)
  {
    if(stAbbr[i].charAt(0) == stateAbrvs[currentState].charAt(0) 
    && stAbbr[i].charAt(1) == stateAbrvs[currentState].charAt(1))
    {
      stateData[j]=data[i];
      names[j]=j + ". " + collegeName[i];
      white[j] = data13.getFloat(i+1, 292);
      black[j] = data13.getFloat(i+1, 293);
      hisp[j] = data13.getFloat(i+1, 294);
      asian[j] = data13.getFloat(i+1, 295);
      amind[j] = data13.getFloat(i+1, 296);
      pacHI[j] = data13.getFloat(i+1, 297);
      twoMore[j] = data13.getFloat(i+1, 298);
      alien[j] = data13.getFloat(i+1, 299);
      unk[j] = data13.getFloat(i+1, 300);
      
      full4[j] = data13.getFloat(i+1, 428);
      part4[j] = data13.getFloat(i+1, 430);
      fullL4[j] = data13.getFloat(i+1, 429);
      partL4[j] = data13.getFloat(i+1, 431);
      
      ms[j] = data13.getFloat(i+1, 1424);
      hs[j] = data13.getFloat(i+1, 1425);
      pss[j] = data13.getFloat(i+1, 1426);
      debt[j] = data13.getFloat(i+1, 1503);
      firstGen[j] = data13.getFloat(i+1, 1515);
      notFirstGen[j] = data13.getFloat(i+1, 1516);
      fem[j] = data13.getFloat(i+1, 1513);
      mal[j] = data13.getFloat(i+1, 1514);
      grad[j] = data13.getFloat(i+1, 1504);
      
      gradwhite4[j] = data13.getFloat(i+1, 396);
      gradblack4[j] = data13.getFloat(i+1, 397);
      gradasian4[j] = data13.getFloat(i+1, 399);
      gradhisp4[j] = data13.getFloat(i+1, 398);
      gradamind4[j] = data13.getFloat(i+1, 400);
      gradpacHI4[j] = data13.getFloat(i+1, 401);
      gradtwoMore4[j] = data13.getFloat(i+1, 402);
      gradalien4[j] = data13.getFloat(i+1, 403);
      gradunk4[j] = data13.getFloat(i+1, 404);
    
      gradwhiteL4[j] = data13.getFloat(i+1, 410);
      gradblackL4[j] = data13.getFloat(i+1, 411);
      gradasianL4[j] = data13.getFloat(i+1, 413);
      gradhispL4[j] = data13.getFloat(i+1, 412);
      gradamindL4[j] = data13.getFloat(i+1, 414);
      gradpacHIL4[j] = data13.getFloat(i+1, 415);
      gradtwoMoreL4[j] = data13.getFloat(i+1, 416);
      gradalienL4[j] = data13.getFloat(i+1, 417);
      gradunkL4[j] = data13.getFloat(i+1, 418);
      
      j++;
    }
  }
  //print("data " + data13.getFloat(1, 1514) + "\n");
  //print(stAbbr[0].charAt(0) + " " + stateAbrvs[currentState].charAt(0) + "\n");
  //print(stAbbr[0]==stateAbrvs[currentState], "\n");
  //print(stateData[0], " ", admRateAll[0], "\n");
  //print(names[0], " ", collegeName[0], "\n");
  if(j == 0) {
    fill(0);
    textSize(60);
    textAlign(CENTER, CENTER);
    text("No Colleges!", 775, 350);
  }
  else {
    float[] d = subset(stateData, 1, j-1);
    //print(d[0], " ", d[1], " ", d[2], "\n");
    currColNames = subset(names, 1, j-1);
    currColWhit = subset(white, 1, j-1);
    currColBl = subset(black, 1, j-1);
    currColHisp = subset(hisp, 1, j-1);
    currColAsian = subset(asian, 1, j-1);
    currColAmIn = subset(amind, 1, j-1);
    currColHI = subset(pacHI, 1, j-1);
    currCol2More = subset(twoMore, 1, j-1);
    currColAlien = subset(alien, 1, j-1);
    currColUnk = subset(unk, 1, j-1);
    
    retRate4f = subset(full4, 1, j-1);
    retRate4p = subset(part4, 1, j-1);
    retRateL4f = subset(fullL4, 1, j-1);
    retRateL4p = subset(partL4, 1, j-1);
    
    middSchool = subset(ms, 1, j-1);
    highSchool = subset(hs, 1, j-1);
    postSecond = subset(pss, 1, j-1);
    totDebt = subset(debt, 1, j-1);
    firstGenDebt = subset(firstGen, 1, j-1);
    notFirstGenDebt = subset(notFirstGen, 1, j-1);
    fDebt = subset(fem, 1, j-1);
    mDebt = subset(mal, 1, j-1);
    gradDebt = subset(grad, 1, j-1);
    
    gradWhit4 = subset(gradwhite4, 1, j-1);
    gradBl4 = subset(gradblack4, 1, j-1);
    gradHisp4 = subset(gradhisp4, 1, j-1);
    gradAsian4 = subset(gradasian4, 1, j-1);
    gradAmIn4 = subset(gradamind4, 1, j-1);
    gradHI4 = subset(gradpacHI4, 1, j-1);
    grad2More4 = subset(gradtwoMore4, 1, j-1);
    gradAlien4 = subset(gradalien4, 1, j-1);
    gradUnk4 = subset(gradunk4, 1, j-1);
    gradWhitL4 = subset(gradwhiteL4, 1, j-1);
    gradBlL4 = subset(gradblackL4, 1, j-1);
    gradHispL4 = subset(gradhispL4, 1, j-1);
    gradAsianL4 = subset(gradasianL4, 1, j-1);
    gradAmInL4 = subset(gradamindL4, 1, j-1);
    gradHIL4 = subset(gradpacHIL4, 1, j-1);
    grad2MoreL4 = subset(gradtwoMoreL4, 1, j-1);
    gradAlienL4 = subset(gradalienL4, 1, j-1);
    gradUnkL4 = subset(gradunkL4, 1, j-1);
    
    //print("curr White " + currColWhit[0] + "\n");
    
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
    barChart.setBarLabels(currColNames);
    barChart.showCategoryAxis(true);
    
    barChart.transposeAxes(true);
    barChart.setBarColour(color(0,105,92));
    
    barChart.draw(515,75,500,600);
    
    drawCollegeNum(j-1);
  }
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

//========================= drawCollegeNum() ====================//

void drawCollegeNum(int totNum) {
 
  fill(0);
  textSize(10);
  textAlign(CENTER, CENTER);
  text("Click a Number\nto see College Specific Data", 1020, 65);
  
  int xVal = 1020;
  int yVal = 86;
  
 for(int i = 0; i < totNum; i++){
   fill(0);
   textSize(9);
   
   if(mouseOver(xVal-4, yVal,9, 5)) {
     line(xVal+7, yVal, xVal+20, yVal);
     fill(255,0,0);
     
     if(mousePressed) {
       
       homeView = false;
       stateView = false;
       collegeView = true;
       currCollege = i;
     }
   }
   text(i+1, xVal, yVal);
   yVal += (600)/totNum;
 }
 //print("curr College " + currCollege + "\n");
}

//===============================================================//
float[] angles = new float[9];
float[] angles2 = new float[3];
//float[] angles3 = new float[9];

//======================= drawCollegeView() =======================//

void drawCollegeView() {
  
  angles[0] = currColWhit[currCollege]*360;
  angles[1] = currColBl[currCollege]*360;
  angles[2] = currColHisp[currCollege]*360;
  angles[3] = currColAsian[currCollege]*360;
  angles[4] = currColAmIn[currCollege]*360; 
  angles[5] = currColHI[currCollege]*360;
  angles[6] = currCol2More[currCollege]*360;
  angles[7] = currColAlien[currCollege]*360;
  angles[8] = currColUnk[currCollege]*360;
  
  angles2[0] = middSchool[currCollege]*360;
  angles2[1] = highSchool[currCollege]*360;
  angles2[2] = postSecond[currCollege]*360;
  
  //print(angles[0] + " " + angles[1] + " " + angles[2] + " " + 
  //      angles[3] + " " + angles[4] + " " + angles[5] + " " + 
  //      angles[6] + " " + angles[7] + " " + angles[8] + "\n");
  
  pieChart(275, angles);
  pieChart2(275, angles2);
  
  fill(0);
  textSize(20);
  textAlign(LEFT);
  text("Race Percentages", 385, 125);
  noStroke();
  fill(178,223,219);
  rect(370, 150, 10, 10);
  fill(244,143,177);
  rect(370, 170, 10, 10);
  fill(144,202,249);
  rect(370, 190, 10, 10);
  fill(77,182,172);
  rect(370, 210, 10, 10);
  fill(236,64,122);
  rect(370, 230, 10, 10);
  fill(48,63,159);
  rect(370, 250, 10, 10);
  fill(0,191,165);
  rect(370, 270, 10, 10);
  fill(255,128,171);
  rect(370, 290, 10, 10);
  fill(41,121,255);
  rect(370, 310, 10, 10);
  if(angles[0] != angles[0] && angles[1] != angles[1] && angles[2] != angles[2] 
        && angles[3] != angles[3] && angles[4] != angles[4] && angles[5] != angles[5] 
        && angles[6] != angles[6] && angles[7] != angles[7] && angles[8] != angles[8]) 
  {
     noFill();
     stroke(0);
     ellipse(200, 240, 275, 275);
     fill(0);
     textSize(20);
     textAlign(CENTER, CENTER);
     text("No Race Data\nProvided", 200, 225);
     textAlign(LEFT);
     textSize(14);
     text("White", 385, 160);
     text("African American", 385, 180);
     text("Hispanic", 385, 200);
     text("Asian", 385, 220);
     text("American Indian/Alaska Native", 385, 240);
     text("Native Hawaiian/Pacific Islander", 385, 260);
     text("Two or More Races", 385, 280);
     text("Non-Resident", 385, 300);
     text("Unknown", 385, 320);
  }
  else 
  {
    fill(0);
    textSize(14);
    textAlign(LEFT);
    text("White - " + currColWhit[currCollege]*100 + " %", 385, 160);
    text("African American - " + currColBl[currCollege]*100 + " %", 385, 180);
    text("Hispanic - " + currColHisp[currCollege]*100 + " %", 385, 200);
    text("Asian - " + currColAsian[currCollege]*100 + " %", 385, 220);
    text("American Indian/Alaska Native - " + currColAmIn[currCollege]*100 + " %", 385, 240);
    text("Native Hawaiian/Pacific Islander - " + currColHI[currCollege]*100 + " %", 385, 260);
    text("Two or More Races - " + currCol2More[currCollege]*100 + " %", 385, 280);
    text("Non-Resident - " + currColAlien[currCollege]*100 + " %", 385, 300);
    text("Unknown - " + currColUnk[currCollege]*100 + " %", 385, 320);
  }
  
  fill(0);
  textSize(20);
  textAlign(LEFT);
  text("Parents' Education", 385, 425);
  noStroke();
  fill(178,223,219);
  rect(370, 450, 10, 10);
  fill(244,143,177);
  rect(370, 470, 10, 10);
  fill(144,202,249);
  rect(370, 490, 10, 10);
  
  if(angles2[0] != angles2[0] && angles2[1] != angles2[1] 
      && angles2[2] != angles2[2]) 
  {
     noFill();
     stroke(0);
     ellipse(200, 540, 275, 275);
     fill(0);
     textSize(20);
     textAlign(CENTER, CENTER);
     text("No Parent Data\nProvided", 200, 525);
     textAlign(LEFT);
     textSize(14);
     text("Middle School", 385, 460);
     text("High School", 385, 480);
     text("Post Secondary", 385, 500);
  }
  else 
  {
    fill(0);
    textSize(14);
    textAlign(LEFT);
    text("Middle School - " + middSchool[currCollege]*100 + " %", 385, 460);
    text("High School - " + highSchool[currCollege]*100 + " %", 385, 480);
    text("Post Secondary - " + postSecond[currCollege]*100 + " %", 385, 500);
  }
  
  collegeStats();
}

//========================= collegeStats() ========================//

void collegeStats() {
 
  fill(0);
  textSize(25);
  textAlign(LEFT);
  text("Additional Statistics", 850, 130);
  
  textSize(14);
  textAlign(RIGHT);
  text("Full-Time Retention Rate - ", 950, 160);
  text("Part-Time Retention Rate - ", 950, 180);
  text("Cummulative Median Debt - ", 950, 200);
  text("After Graduation Median Debt - ", 950, 220);
  text("First Generation Median Debt - ", 950, 240);
  text("Non-First Generation Median Debt - ", 950, 260);
  text("Female Student Median Debt - ", 950, 280);
  text("Male Student Median Debt - ", 950, 300);
  text("Percentage of White Students who Graduate - ", 950, 320);
  text("Percentage of African American Students who Graduate - ", 950, 340);
  text("Percentage of Hispanic Students who Graduate - ", 950, 360);
  text("Percentage of        \nAsian Students who Graduate - ", 950, 380);
  text("Percentage of        \nAmerican Indian/Alaska Native Students who Graduate - ", 950, 420);
  text("Percentage of        \nNative Hawaiian/Pacific Islander Students who Graduate - ", 950, 460);
  text("Percentage of        \nTwo or More Race Students who Graduate - ", 950, 500);
  text("Percentage of        \nNon-Resident Students who Graduate - ", 950, 540);
  text("Percentage of Unknown Race Students who Graduate - ", 950, 580);
  text("SAT Scores (Math, Reading, Writing) - ", 950, 600);
  text("ACT Scores (Math, English, Writing) - ", 950, 620);
  textAlign(LEFT);
  
  if(retRate4f[currCollege] == retRate4f[currCollege])
    text(retRate4f[currCollege]*100 + " % (4 - Year College)", 960, 160);
  else if(retRateL4f[currCollege] == retRateL4f[currCollege])
    text(retRateL4f[currCollege]*100 + " % (Less than 4 Years)", 960, 160);
  else text("No Data Provided", 960, 160);
  
  if(retRate4p[currCollege] == retRate4p[currCollege])
    text(retRate4p[currCollege]*100 + " % (4 - Year College)", 960, 180);
  else if(retRateL4p[currCollege] == retRateL4p[currCollege])
    text(retRateL4p[currCollege]*100 + " % (Less than 4 Years)", 960, 180);
  else text("No Data Provided", 960, 180);
  
  if(totDebt[currCollege] == totDebt[currCollege])
    text("$ " + nfc(totDebt[currCollege], 2), 960, 200);
  else text("No Data Provided", 960, 200);
  
  if(gradDebt[currCollege] == gradDebt[currCollege])
    text("$ " + nfc(gradDebt[currCollege], 2), 960, 220);
  else text("No Data Provided", 960, 220);
  
  if(firstGenDebt[currCollege] == firstGenDebt[currCollege])
    text("$ " + nfc(firstGenDebt[currCollege], 2), 960, 240);
  else text("No Data Provided", 960, 240);
  
  if(notFirstGenDebt[currCollege] == notFirstGenDebt[currCollege])
    text("$ " + nfc(notFirstGenDebt[currCollege], 2), 960, 260);
  else text("No Data Provided", 960, 260);
  
  if(fDebt[currCollege] == fDebt[currCollege])
    text("$ " + nfc(fDebt[currCollege], 2), 960, 280);
  else text("No Data Provided", 960, 280);
  
  if(mDebt[currCollege] == mDebt[currCollege])
    text("$ " + nfc(mDebt[currCollege], 2), 960, 300);
  else text("No Data Provided", 960, 300);
  
  if(gradWhit4[currCollege] == gradWhit4[currCollege])
    text(gradWhit4[currCollege] + " % (4 - Year College)", 960, 320);
  else if(gradWhitL4[currCollege] == gradWhitL4[currCollege])
    text(gradWhitL4[currCollege] + " % (Less than 4 Years)", 960, 320);
  else text("No Data Provided", 960, 320);
    
  if(gradBl4[currCollege] == gradBl4[currCollege])
    text(gradBl4[currCollege] + " % (4 - Year College)", 960, 340);
  else if(gradBlL4[currCollege] == gradBlL4[currCollege])
    text(gradBlL4[currCollege] + " % (Less than 4 Years)", 960, 340);
  else text("No Data Provided", 960, 340);
    
  if(gradHisp4[currCollege] == gradHisp4[currCollege])
    text(gradHisp4[currCollege] + " % (4 - Year College)", 960, 360);
  else if(gradHispL4[currCollege] == gradHispL4[currCollege])
    text(gradHispL4[currCollege] + " % (Less than 4 Years)", 960, 360);
  else text("No Data Provided", 960, 360);
    
  if(gradAsian4[currCollege] == gradAsian4[currCollege])
    text(gradAsian4[currCollege] + " % (4 - Year College)", 960, 400);
  else if(gradAsianL4[currCollege] == gradAsianL4[currCollege])
    text(gradAsianL4[currCollege] + " % (Less than 4 Years)", 960, 400);
  else text("No Data Provided", 960, 400);
    
  if(gradAmIn4[currCollege] == gradAmIn4[currCollege])
    text(gradAmIn4[currCollege] + " % (4 - Year College)", 960, 440);
  else if(gradAmInL4[currCollege] == gradAmInL4[currCollege])
    text(gradAmInL4[currCollege] + " % (Less than 4 Years)", 960, 440);
  else text("No Data Provided", 960, 440);
    
  if(gradHI4[currCollege] == gradHI4[currCollege])
    text(gradHI4[currCollege] + " % (4 - Year College)", 960, 480);
  else if(gradHIL4[currCollege] == gradHIL4[currCollege])
    text(gradHIL4[currCollege] + " % (Less than 4 Years)", 960, 480);
  else text("No Data Provided", 960, 480);
    
  if(grad2More4[currCollege] == grad2More4[currCollege])
    text(grad2More4[currCollege] + " % (4 - Year College)", 960, 520);
  else if(grad2MoreL4[currCollege] == grad2MoreL4[currCollege])
    text(grad2MoreL4[currCollege] + " % (Less than 4 Years)", 960, 520);
  else text("No Data Provided", 960, 520);
    
  if(gradAlien4[currCollege] == gradAlien4[currCollege])
    text(gradAlien4[currCollege] + " % (4 - Year College)", 960, 560);
  else if(gradAlienL4[currCollege] == gradAlienL4[currCollege])
    text(gradAlienL4[currCollege] + " % (Less than 4 Years)", 960, 560);
  else text("No Data Provided", 960, 560);
    
  if(gradUnk4[currCollege] == gradUnk4[currCollege])
    text(gradUnk4[currCollege] + " % (4 - Year College)", 960, 580);
  else if(gradUnkL4[currCollege] == gradUnkL4[currCollege])
    text(gradUnkL4[currCollege] + " % (Less than 4 Years)", 960, 580);
  else text("No Data Provided", 960, 580);
  
  if(actMath[currCollege] == actMath[currCollege]
    || actEng[currCollege] == actEng[currCollege]
    || actWrit[currCollege] == actWrit[currCollege])
    text("( " + nfc(actMath[currCollege],0) + ", " + nfc(actEng[currCollege],0) 
        + ", " + nfc(actWrit[currCollege],0) + " )", 960, 600);
  else text("No Data Provided", 960, 600);
  
  if(satMath[currCollege] == satMath[currCollege]
    || satRead[currCollege] == satRead[currCollege]
    || satWrit[currCollege] == satWrit[currCollege])
    text("( " + nfc(satMath[currCollege],0) + ", " + nfc(satRead[currCollege],0) 
        + ", " + nfc(satWrit[currCollege],0) + " )", 960, 620);
  else text("No Data Provided", 960, 620);
}

//========================= nextPrevCol() =========================//

void nextPrevCol()
{
  noStroke();
  fill(255);
  triangle(1100, 15, 1100, 35, 1110,25);
  if(mouseOver(1100, 15, 10, 20))
  {
    noStroke();
    fill(0);
    triangle(1100, 15, 1100, 35, 1110, 25);
    if(mousePressed&&currCollege<(currColNames.length)-1)
      currCollege=currCollege+1;
      //print("length ", (currColNames.length)-1, " " + currCollege +"\n");}
    else if(mousePressed&&currCollege==(currColNames.length)-1)
      currCollege=0;
  }
  noStroke();
  fill(255);
  triangle(100, 15, 100, 35, 90,25);
  if(mouseOver(90, 15, 10, 20))
  {
    noStroke();
    fill(0);
    triangle(100, 15, 100, 35, 90,25);
    if(mousePressed&&currCollege!=0)
      currCollege=currCollege-1;
    else if(mousePressed&&currCollege==0)
      currCollege=currColNames.length-1;
  }
}

//========================== pieChart() ==========================//

void pieChart(float diameter, float[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    if(i == 0) fill(178,223,219);
    else if(i == 1) fill(244,143,177);
    else if(i ==2) fill(144,202,249);
    else if(i == 3) fill(77,182,172);
    else if(i == 4) fill(236,64,122);
    else if(i == 5) fill(48,63,159);
    else if(i == 6) fill(0,191,165);
    else if(i == 7) fill(255,128,171);
    else if(i == 8) fill(41,121,255);
    //float gray = map(i, 0, data.length, 0, 255);
    //fill(gray);
    stroke(0);
    strokeWeight(1);
    arc(200, 225, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
  }
}

//========================== pieChart2() ==========================//

void pieChart2(float diameter, float[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    if(i == 0) fill(178,223,219);
    else if(i == 1) fill(244,143,177);
    else if(i ==2) fill(144,202,249);
    //float gray = map(i, 0, data.length, 0, 255);
    //fill(gray);
    stroke(0);
    strokeWeight(1);
    arc(200, 525, diameter, diameter, lastAngle, lastAngle+radians(angles2[i]));
    lastAngle += radians(angles2[i]);
  }
}

//===============================================================//
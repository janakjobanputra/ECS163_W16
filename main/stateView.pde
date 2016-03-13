

//=========================== drawStateView() ======================//

void drawStateView()
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
      stateData[j]=admRateAll[i];
      names[j]=collegeName[i];
      j++;
    }
  }
  print(stAbbr[0].charAt(0) + " " + stateAbrvs[currentState].charAt(0) + "\n");
  //print(stAbbr[0]==stateAbrvs[currentState], "\n");
  print(stateData[0], " ", admRateAll[0], "\n");
  print(names[0], " ", collegeName[0], "\n");
  float[] dat = subset(stateData, 1, j-1);
  String[] nam = subset(names, 1, j-1);
  
  barChart.setData(dat);
     
  // Scaling
  barChart.setMinValue(0);
  barChart.setMaxValue(1);
   
  // Axis appearance
  fill(0);
  textFont(createFont("Serif",10),10);
   
  barChart.showValueAxis(true);
  barChart.setValueFormat("#%");
  barChart.setBarLabels(nam);
  barChart.showCategoryAxis(true);
  
  barChart.transposeAxes(true);
  barChart.setBarColour(color(173,20,87));
  
  barChart.draw(550,75,500,600);
  
}

//===============================================================//
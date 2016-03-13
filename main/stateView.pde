

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
  float stateData[] = new float[csvSize];
  String names[]= new String[csvSize];
  int j=0;
  for(int i=0; i<csvSize; i++)
  {
    if(stAbbr[i]==stateAbrvs[currentState])
    {
      stateData[j]=admRateAll[i];
      names[j]=collegeName[i];
      j++;
    }
  }
  print(".", trim(stAbbr[0]), ".|.", trim(stateAbrvs[currentState], ".\n");
  print(stAbbr[0]==stateAbrvs[currentState], "\n");
  print(stateData[0], " ", admRateAll[0], "\n");
  print(names[0], " ", collegeName[0], "\n");
  
  
  //barChart.setData(new float[] {0.76, 0.24, 0.39, 0.18, 0.20});
     
  // Scaling
  barChart.setMinValue(0);
  barChart.setMaxValue(1);
   
  // Axis appearance
  textFont(createFont("Serif",10),10);
   
  barChart.showValueAxis(true);
  barChart.setValueFormat("#%");
  barChart.setBarLabels(new String[] {"Cynthia","Daniel","Eli",
                                       "Fasil","Gertrude"});
  barChart.showCategoryAxis(true);
  
}

//===============================================================//
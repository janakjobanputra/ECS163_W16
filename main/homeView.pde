//=========================== drawStates() ======================//

void drawHomeView()
{
  //INSERT TITLE IN TOOLBAR
  int squareSize=100;
  float horizOffset=32.5, vertOffset=125;
  for(int i=0; i<5; i++)
  {
    for(int j=0; j<10; j++)
    {
      float tempX=j*(squareSize+15)+horizOffset;
      float tempY=i*(squareSize+15)+vertOffset;
      int num=i*10+j;
      if(mouseOver(tempX, tempY,squareSize, squareSize))
      {
        noStroke();
        fill(0,105,92);
        rect( tempX,tempY,squareSize,squareSize );
        noStroke();
        fill(255);
        textAlign(CENTER, CENTER);
        textSize(32);
        text(stateAbrvs[num], tempX+50, tempY+35);
        noStroke();
        fill(255);
        textAlign(CENTER, CENTER);
        textSize(12);
        text(stateNames[num], tempX+50, tempY+75);
        if(mousePressed)
        {
          currentState=num;
          homeView=false;
          stateView=true;
        }
      }
      else
      {
        noStroke();
        fill(21,101,192);
        rect( tempX,tempY,squareSize,squareSize );
        noStroke();
        fill(255);
        textAlign(CENTER, CENTER);
        textSize(32);
        text(stateAbrvs[num], tempX+50, tempY+35);
        noStroke();
        fill(255);
        textAlign(CENTER, CENTER);
        textSize(12);
        text(stateNames[num], tempX+50, tempY+75);  
      }
    }
  }
  
}

//===============================================================//
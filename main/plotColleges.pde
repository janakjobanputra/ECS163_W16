//======================= plotColleges() ========================//

void plotColleges()
{
 
  for(int i = 0; i < 400; i++) {
  
    float scaledLat = (46 - latitude[i])*scaleFactorH;
    float scaledLong = (125.50 + longitude[i])*scaleFactorW;
    
    //print(latitude[i] + " scaledLat " + scaledLat + "\n");
    //print(longitude[i] + " scaledLong " + scaledLong + "\n");
    
    noStroke();
    fill(255,0,0);
    ellipse(scaledLong + 40, scaledLat + 100, 10, 10);
  }
}

//===============================================================//
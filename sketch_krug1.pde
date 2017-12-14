

























































  else if (amp.analyze() > 0.2) {
    
  for (int i = 0; i < 360; i+=2) {
    float angle = sin(i+a)*50;
    float x = sin(radians(i))*(200+angle);
    float y = cos(radians(i))*(200+angle);
    float x2 = sin(radians(i))*(400+angle);
    float y2 = cos(radians(i))*(400+angle);
    ellipse(x, y, angle/6, angle/6);
    ellipse(y2, x2, 2,2);
    line(x, y, x2, y2);
   
   
  
  
  }



}}
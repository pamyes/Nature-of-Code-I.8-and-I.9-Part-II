class Noisee {
  
  //Constructor
  Noisee() {  
    loadPixels(); 
    float xoff = 0.0; 
    for (int x = 0; x < width; x++) {   // For every xoff, start yoff at 0.
      float yoff = 0.0; 
      for (int y = 0; y < height; y++) {   // Use xoff and yoff for noise().
        noiseDetail(1, .8);
        float bright = map(noise(xoff, yoff), 0.1, 2, 0, 255); 
        pixels[x+y*width] = color(bright);     // Use x and y for pixel location.
        // Increment yoff.
        yoff +=0.1;
      }
      // Increment xoff.
      xoff +=0.1;
    }
    updatePixels();
  }
  void updatePoints(float o){
    loadPixels(); 
    float xoff = 0.0; 
    for (int x = 0; x < width; x++) {   // For every xoff, start yoff at 0.
      float yoff = 0.0; 
      for (int y = 0; y < height; y++) {   // Use xoff and yoff for noise().
        noiseDetail(7,.8);
        float bright = map(noise(xoff, yoff,o), 0.1, 2, 0, 255); 
        pixels[x+y*width] = color(bright);     // Use x and y for pixel location.
        // Increment yoff.
        yoff /=0.8;
      }
      // Increment xoff.
      xoff +=0.3;
    }
    updatePixels();
  }
}
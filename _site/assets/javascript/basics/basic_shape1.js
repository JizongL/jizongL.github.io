var image = new SimpleImage(200,200);
w = image.getWidth();
for (var pixel of image.values()) {
        pixel.setRed(255);
        pixel.setGreen(0);
        pixel.setBlue(0);
        x = pixel.getX();
        y = pixel.getY();
        
    if ( x >=w/2 && y <= w/2)  {
        pixel.setGreen(255);
        pixel.setRed(0);       
        }
    if ( x< w/2 && y > w/2 ){
        pixel.setRed(255);
        pixel.setBlue(255);
    }
    if(x>=w/2 && y>=w/2){
        pixel.setBlue(255);
        pixel.setRed(0);
    }
    
    
}
    

print(image);

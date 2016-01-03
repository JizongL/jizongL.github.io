---
layout: post
comments: True
title: Javascript basics
category: Javascript
tags: [javascript]

---

You can open the home page of the [JavaScript Programming Environment](http://dukelearntoprogram.com/course1/) by Duke university to test the code in my note. 

<!--break-->

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>
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

</code>
</pre>
</div>


<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>
var image = new SimpleImage(200,200);

for (var pixel of image.values()) {
     x = pixel.getX();
     y = pixel.getY();
 if(x > y){
       pixel.setRed(255);
   }    
     if (x + y < 200) {
          pixel.setRed(255);
     }
}
 print(image)
 
var image = new SimpleImage(200,200);
for (var pixel of image.values()){
     x = pixel.getX();
     y = pixel.getY();
   if(x > y){
       pixel.setRed(255);
   }
   if (x+y > 200) {
       pixel.setRed(255);
   }
   } 


print(image)
</code>
</pre>
</div>





fgImage
bgImage
output

for (var pixel of fgImage.values()) {
	
	if(pixel.getGreen == 255){
		var x = pixel.getX
		var y = pixel.getY
		var bgPixel = bgImage.getPixel(x,y);
		output.setPixel(x,y, bgPixel);
	}
}

else{
	output.setPixel(x,y,pixel)
	
}



## function exercise

Write a JavaScript program that has a function named swapRedGreen with one parameter pixel. This function should swap the red and green values of the pixel. Pick an image, print the image, then apply swapRedGreen to every pixel in the image, and print the new image. The choice of your image is important. For some images you may not notice any change. Think about what type of image you should use for testing your function.




I created a "swapRedGreen" function as instructed and then 
I created a "createImage"function that would produce a square image of any size with 2 colors.
I applied the swapRedGreen inside the "createImage" function to test if it would swap the color correctly. 

<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code>
// swapRedGreen function 
function swapRedGreen(pixel){
    var red = pixel.getRed();
    var green = pixel.getGreen();
    pixel.setGreen(red)
    pixel.setRed(green)
    return pixel;
}

// function for creating a flexible test image
function createImage(L,W,R,G,B){
var image = new SimpleImage(L,W);

for (var p of image.values()) {
    var x = p.getX();
var y = p.getY();
    if (x < image.getWidth()/2) { // remember the getWidth() must be set to image, not p. 
        p.setGreen(G)
    }
    else {
p.setRed(R)
p.setBlue(B)
        
    }
}
print(image);
for(var pixel of image.values()){
swapRedGreen(pixel)}
print(image)
}

createImage(300,300,255,255,0) // create a 300 by 300 image with half red and half green

    </code>
  </pre>
</div>

Then I applied the "swapRedGreen" function to an image and test if it works.
<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code>
function swapRedGreen(pixel){
    var red = pixel.getRed();
    var green = pixel.getGreen();
    pixel.setGreen(red)
    pixel.setRed(green)
    return pixel;
}

var image = new SimpleImage("lion.jpg");
for(var pixel of image.values()){
swapRedGreen(pixel)}

print(image)
    </code>
  </pre>
</div>


2: Write a JavaScript program to make an image have more red in it, by adding a given value to the red, making sure it doesn’t go over 255. Your program should have a function called moreRed with two parameters, a pixel and a value to increase the red by. Run your program on an image to see it get redder.

<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code>  
function moreRed(pixel,addedRed){   // create a "moreRed" function 
    var red = pixel.getRed();
    if (red < 255){ pixel.setRed(red+addedRed)
    } 
    else if (red+addedRed == 255){        // make sure that the addedRed value does not go over 255. 
        pixel.setRed(255)
    }
}

var image = new SimpleImage("lion.jpg");// load an image
for (var pixel of image.values()){        // apply the moreRed function
    moreRed(pixel,266)}
print(image)
    </code>
  </pre>  
</div>  



<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code>  

// border frame using a function, refactored
function setBlack(pixel){
    pixel.setRed(0);
    pixel.setGreen(0);
    pixel.setBlue(0);
    return pixel;
}
function pixelOnEdge(pixel,image,borderWidth){
    var x = pixel.getX();
    var y = pixel.getY();
    if (x < borderWidth) return true;
    if (y < borderWidth) return true;
    if (x >= image.getWidth() - borderWidth) return true;
    if (y >= image.getHeight() - borderWidth) return true;
    return false;
}
var image = new SimpleImage("lion.jpg");
for (var pixel of image.values()) {
   if (pixelOnEdge(pixel,image,10)){
       pixel = setBlack(pixel);
   }
}
print(image);

    </code>
  </pre>  
</div> 

Based on the above code with a little refinement, I can now set the thickness of the borders separately 
for either the Horizontal and Vertical borders. 

<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code>  
// border frame using a function, refactored
function setBlack(pixel){
    pixel.setRed(0);
    pixel.setGreen(0);
    pixel.setBlue(0);
    return pixel;
}
function pixelOnEdgeDifferentThickness(pixel,image,HorWidth,VerWidth){
    var x = pixel.getX();
    var y = pixel.getY();
    if (x < HorWidth) return true;
    if (y < VerWidth) return true;
    if (x >= image.getWidth() - HorWidth) return true;
    if (y >= image.getHeight() - VerWidth) return true;
    return false;
}
var image = new SimpleImage("lion.jpg");
for (var pixel of image.values()) {
   if (pixelOnEdgeDifferentThickness(pixel,image,1,30)){
       pixel = setBlack(pixel);
   }
}
print(image);
    </code>
  </pre>  
</div> 


Steganography

<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code>  


// steganography


// function for computing bit
function bitToUse(bit){
    result = Math.pow(2,bit);
    return result;
}


// function for cropping the an image 
function crop(image,width,height)
{ var output= new SimpleImage(width,height);
  for(var outpx of output.values())
  { var x=outpx.getX();
    var y=outpx.getY();
    var px= image.getPixel(x,y);
    outpx.setRed(px.getRed());
    outpx.setGreen(px.getGreen());
    outpx.setBlue(px.getBlue());
  }
  return output;
}


// Helper function for "chop2hide" for to eliminate the last 4 bits of every pixel
function pixchange(pixval,bit){
    var x = Math.floor(pixval/bit) * bit;
    return x;
}
// function to convert an image to be ready for hiding information in it. 
function chop2hide(image,bit){
    bit = bitToUse(bit);
    for(var px of image.values()){
        px.setRed(pixchange(px.getRed(),bit));
        px.setGreen(pixchange(px.getGreen(),bit));
        px.setBlue(pixchange(px.getBlue(),bit));
    }
    return image;
}

// function for shifting the pixel of the hide image to have only 4 bits.
function shift(im,bit){
    bit=bitToUse(bit);
  var nim = new SimpleImage(im.getWidth(), 
                            im.getHeight());
  for(var px of im.values()){
    var x = px.getX();
    var y = px.getY();
    var npx = nim.getPixel(x,y);
    npx.setRed(Math.floor(px.getRed()/bit));
    npx.setGreen(Math.floor(px.getGreen()/bit));
    npx.setBlue(Math.floor(px.getBlue()/bit));
  }
  return nim;
}

// combine function for adding the start and hide images together. 
function combine(start,hide){
var combinedImage = new SimpleImage(start.getWidth(),start.getHeight());
for(var cPixel of combinedImage.values()){
    x =cPixel.getX();
    y = cPixel.getY();
    sPixel = start.getPixel(x,y); // pixel on start corresponding to pp
    hPixel = hide.getPixel(x,y); // pixel on hide corresponding to pp
    cPixel.setRed(sPixel.getRed()+hPixel.getRed())
    cPixel.setBlue(sPixel.getBlue()+hPixel.getBlue())
    cPixel.setGreen(sPixel.getGreen()+hPixel.getGreen())
    }
return combinedImage
}

// function for decoding the combined image
function decode(im,bit){
    bit = bitToUse(bit);
    var nim = new SimpleImage(im.getWidth(),
                              im.getHeight());
        for(var px of im.values()){
            var x = px.getX();
            var y = px.getY();
            var npx = nim.getPixel(x,y);
            npx.setRed(bit*(px.getRed()-(bit*Math.floor(px.getRed()/bit)))); // follow the math;
            // original pixel from combined say 133, let 133/16 and round the result to no deximal
            npx.setGreen(bit*(px.getGreen()-(bit*Math.floor(px.getGreen()/bit))));
            npx.setBlue(bit*(px.getBlue()-(bit*Math.floor(px.getBlue()/bit))));
            
        }
return nim;
}


var ShowImage= new SimpleImage("astrachan.jpg");
var HideImage= new SimpleImage("MessageCSEveryone.jpg");

var crw=Math.min(ShowImage.getWidth(),HideImage.getWidth());
var crh=Math.min(ShowImage.getHeight(),HideImage.getHeight());

var crSImg= crop(ShowImage,crw,crh);
var crHImg= crop(HideImage,crw,crh);

var bit = 4

start = chop2hide(crSImg,bit);
hide = shift(crHImg,bit);

combined = combine(start,hide);
decoded = decode(combined,bit)

//print(start)
//print(hide)
print('ShowImage before processing')
print(ShowImage)
print('HideImage before processing')
print(HideImage)
print('the Show and Hide images are combined, the Hide image is hidden')
print(combined)
print('decode the Steganography')
print(decoded)





    </code>
  </pre>  
</div> 

##creating a duplicate function
<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code>  

function duplicate(image){

var outputImage = new SimpleImage(image.getWidth() * 2, image.getHeight() * 2);

for (var pixel of outputImage.values()){

var outputX = pixel.getX();

var outputY = pixel.getY();

if(outputX >= image.getWidth()){

outputX = outputX - image.getWidth();

}

if(outputY >= image.getHeight()){

outputY = outputY - image.getHeight();

}

if(outputX >= image.getWidth() && outputY > image.getHeight()){

outputX = outputX - image.getWidth();

outputY = outputY - image.getHeight();

}

var inputPixel = image.getPixel(outputX, outputY);

pixel.setRed(inputPixel.getRed());

pixel.setGreen(inputPixel.getGreen());

pixel.setBlue(inputPixel.getBlue());

}

return outputImage;

}

var image = new SimpleImage("chapel.png");

image = duplicate(image);

print(image);

    </code>
  </pre>  
</div> 

## create an image from scratch
In this example, we are going to create an image that looks like two planets in space, using mathematical functions.
<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code>  
 function dist(pixel, x,y) {
     var dx = pixel.getX() - x;  // x and y are the center of the circle to be created.
     var dy = pixel.getY() - y;
     return Math.sqrt(dx * dx + dy *dy);
 }
 //start with a blank image
 var output = new SimpleImage(4,4);
 
 //Make something here!
 for (var pixel of output.values()){
     //print(pixel.getX());
     var dx = pixel.getX() - 2;
     var dy = pixel.getY() - 2;
     print(dx)
     print(dy)
     print(Math.sqrt(dx * dx + dy *dy));
     
     if (dist(pixel, 2,2)< 2){
            pixel.setRed(255-5*dist(pixel,2,2));
     }
     
 }
 print(output);
     </code>
  </pre>  
</div> 


modifying an image
<div style ="width:700px;height:500px;line-height:3em;overflow:auto;padding;5px">
  <pre>
    <code> 
// blur by moving random pixels

function combine(start,hide){
var combinedImage = new SimpleImage(start.getWidth(),start.getHeight());
for(var cPixel of combinedImage.values()){
    x =cPixel.getX();
    y = cPixel.getY();
    sPixel = start.getPixel(x,y); // pixel on start corresponding to pp
    hPixel = hide.getPixel(x,y); // pixel on hide corresponding to pp
    cPixel.setRed(sPixel.getRed()+hPixel.getRed())
    cPixel.setBlue(sPixel.getBlue()+hPixel.getBlue())
    cPixel.setGreen(sPixel.getGreen()+hPixel.getGreen())
    }
return combinedImage
}

function ensureInImage (coordinate, size) {
    // coordinate cannot be negative
    if (coordinate < 0) {
        return 0;
    }
    // coordinate must be in range [0 .. size-1]
    if (coordinate >= size) {
        return size - 1;
    }
    return coordinate;
}

function getPixelNearby (image, x, y, diameter) {
    var dx = Math.random() * diameter - diameter / 2;
    var dy = Math.random() * diameter - diameter / 2;
    var nx = ensureInImage(x + dx, image.getWidth());
    var ny = ensureInImage(y + dy, image.getHeight());
    return image.getPixel(nx, ny);
}


var image = new SimpleImage("beautiful-autumn-scenery-6341-706.jpg");
var image2 = new SimpleImage("beautiful-autumn-scenery-6341-706.jpg");
for (var p of image.values()) {
    var avg = (p.getGreen() + p.getRed() + p.getBlue()) / 3;
    //var avg = 0.3 * p.getRed() + 0.59 * p.getGreen() + 0.11 * p.getBlue();
    p.setRed(avg);
    p.setBlue(avg);
    p.setGreen(avg);
   
}

var output = new SimpleImage(image.getWidth(), image.getHeight());

for (var pixel of image.values()) {
    var x = pixel.getX();
    var y = pixel.getY();
    if (Math.random() > 0.5) {
        var other = getPixelNearby(image, x, y, 10);
        output.setPixel(x, y, other);
    }
    else {
        output.setPixel(x, y, pixel);
    }
}

combined = combine(image2,output);

print(output);
print(combined);
     </code>
  </pre>  
</div> 
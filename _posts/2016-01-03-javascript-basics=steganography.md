---
layout: post
comments: True
title: Javascript basics - How to build a steganography
category: Javascript
tags: [javascript,steganography]

---

The following code is for building a steganography. It connects to a project that I built for my E portfolio, which is a final projects of a Coursera course [Programming and the Web for Beginners](https://www.coursera.org/learn/duke-programming-web/home/welcome)that I am taking. 
<!--break-->
The logic behinds this program is very simple, simply manipulating the values of pixels of the images of interest.
To see a full introduction of the code please visit my [CodePen](http://codepen.io/JizongL/pen/mVRXop).  

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
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


var ShowImage= new SimpleImage("vanGohCrop.png");
var HideImage= new SimpleImage("qrCode.jpg");

var crw=Math.min(ShowImage.getWidth(),HideImage.getWidth());
var crh=Math.min(ShowImage.getHeight(),HideImage.getHeight());

var crSImg= crop(ShowImage,crw,crh);
var crHImg= crop(HideImage,crw,crh);

var bit = 6

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
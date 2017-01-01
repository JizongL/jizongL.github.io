---
layout: post
comments: True
title: Extract PPT slide number and title
category: Text Editing
tags: [VBA code, PowerPoint]
---

Today, I am going to introduce a cool method with which you could extract all the titles of your PPT slide and the slide number accordingly. <!--break-->So often, we have to go through ton of PPT files with huge number of slides. Isn't it nice that if we could programatically extract all the titles from slides of all the PPT files? So that we could review them, or in the case of a school scenario, it is very helpful to review and memorize slide titles sometime before exam or quiz.  

<!--break-->

This post is written precisely for this goal and you will be amazed when you could do so within just a minute. 

First, I need to disclose my system information, so that in the case if my method does not work on your machine, you could troubleshoot easier. 

I use
Macbook Pro Retina Display, early 2013. 
OS X Yosemite Version 10.10.5
Microsoft office Mac 2011(Through Microsoft 365). 


You could also read on this following post 
[Export Slide Number and Title Text to a text file](http://www.pptfaq.com/FAQ00332_Export_Slide_Number_and_Title_Text_to_a_text_file.htm) from the site "PPTools" as my method is based on it. 

##Procedure

If you have a PPT file, you could use your own, or you could find one from [Google](https://www.google.com/#q=regression+ppt). 

Open a PPT file, then from the **Tool** dropdown menu, choose **Marco** then **Visual Basic Editor**
![ddd](https://dl.dropboxusercontent.com/u/49272502/TextEditing%20Series%20Blog/assets/extractPPTSlideTitles/0f.png)

Then a Project window will pop up, and you will see the name of the PPT file you want to extract on the list. Right click into the file name and you shall see **Insert** then **Module**. 
![ddd](https://dl.dropboxusercontent.com/u/49272502/TextEditing%20Series%20Blog/assets/extractPPTSlideTitles/1f.png)

After inserting a new Module, copy the code I provided below into the Module console. 
![ddd](https://dl.dropboxusercontent.com/u/49272502/TextEditing%20Series%20Blog/assets/extractPPTSlideTitles/2f.png)

Then make sure you choose the function name "GatherTitles" from the dropdown menu on the upper right of the Console. 
![ddd](https://dl.dropboxusercontent.com/u/49272502/TextEditing%20Series%20Blog/assets/extractPPTSlideTitles/3f.png)

Then hit the **Run** button from the VB editor navigation bar. 
![ddd](https://dl.dropboxusercontent.com/u/49272502/TextEditing%20Series%20Blog/assets/extractPPTSlideTitles/4f.png)

Then a copy of a **txt** is created and saved in the same directory as your PPT file, open the txt file you shall see all the titles of your PPT file. 

Voila, now you are an expert of PPT title extraction. 

If you like this post please share it. 

Thanks. 


Code that you need

<pre>
	<code>
Sub GatherTitles()

On Error GoTo ErrorHandler

Dim oSlide As Slide
Dim strTitles As String
Dim strFilename As String
Dim intFileNum As Integer
Dim PathSep as String 

If ActivePresentation.Path = "" Then
    MsgBox "Please save the presentation then try again"
    Exit Sub
End If

#If Mac Then
    PathSep = ":"
#Else
    PathSep = "\"
#End If

On Error Resume Next  ' in case there's no title placeholder on the slide
For Each oSlide In ActiveWindow.Presentation.Slides
    strTitles = strTitles _
        & "Slide: " _
        & CStr(oSlide.SlideIndex) & vbCrLf _
        & oSlide.Shapes.Title.TextFrame.TextRange.Text _
        & vbCrLf & vbCrLf
Next oSlide
On Error GoTo ErrorHandler

intFileNum = FreeFile

' PC-Centricity Alert!
' This assumes that the file has a .PPT extension and strips it off to make the text file name.
strFilename = ActivePresentation.Path _
    & PathSep _
    & Mid$(ActivePresentation.Name, 1, Len(ActivePresentation.Name) - 4) _
    & "_Titles.TXT"

Open strFilename For Output As intFileNum
Print #intFileNum, strTitles

NormalExit:
Close intFileNum
Exit Sub

ErrorHandler:
MsgBox Err.Description
Resume NormalExit

End Sub
	</code>
</pre>
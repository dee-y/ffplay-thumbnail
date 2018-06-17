# ffmpeg-thumbnail

# Introduction
ffmpeg-thumbnail is a super small and a single CLI executable to playback videos in a smaller resolution.  
The program only need one parameter (the video), if you want to play it fullscreen then you can do it passing "fullscreen" word as a paremeter.  
As many other kind of wrappers and front-ends the motivation of this "project" is simple: Lazyness.  
Basic usage of ffplay is dead simple, but you need to remember all the parameters you need and enter all of them, with this project you don't need to enter all those parameters each time you want to play a video.


# Getting Started

## 1. Installation
- Download the app. https://github.com/Evilchuck666/ffmpeg-encode-video/archive/master.zip
- Save it wherever you want
- Add destination folder to %PATH% environment variable if you want easy access using cmd.exe (don't use UNIX style terminals like Cygwin, unexpected results can occur using .NET apps)
- Enjoy

## 2. Software dependencies
- Windows 7 SP1 or higher 64 bits (Don't complain if you have XP or lower and/or 32 bit architecture, they're ALL DEAD!)
- .NET Framework v3.5 or higher
- FFplay inside %PATH% variable
- A beer (Not software, but everything is better with a beer in your hand;
replace beer for an orange juice if you're abstemious or underage)

# Build and Test
You're free to mess the code to change ffplay parameters to your liking and/or view the code if you know how to make it better to your needs.

## Using Visual Studio (2017)
- Open ffmpeg-thumbnail.csproj with your favorite text editor and change the 2nd line where is ToolsVersion="3.5" to ToolsVersion="15.0" and save the changes
- Open the .sln project
- Make your changes in Program.cs
- Build

## Using cmd.exe (if you don't have Visual Studio)
- Open the folder where Program.cs is located
- Make your changes in Program.cs with your favorite text editor
- Shift + right mouse click on to the folder
- "Open command window here"/"Open PowerShell window here"
- Type: "C:\Windows\Microsoft.NET\Framework64\v3.5\MSBuild.exe .\ffmpeg-encode-video.sln /t:Build /p:Configuration=Release"
- The compiled application will be under bin\Release directory

## Using another Visual Studio version or another tools
- Simply I don't know, search how to do it yourself

# FAQ
- Why you're an asshole with all these things of "beer" "replace to an orange juice if you're underage" "fuck yourself if you don't want to use cmd.exe"?
  - Take it easy, this is not an application meant to preserve mankind of its own tragedy.

# Contribute
If you have any idea, contact me:
 - Linkedin: https://es.linkedin.com/in/carlos-mart%C3%ADnez-medina-619ab5128
 - GitHub: https://github.com/Evilchuck666

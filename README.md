# ffplay-thumbnail

# Introduction
ffplay-thumbnail is a super small and a single CLI executable to playback videos in a smaller resolution using ffplay as a backend.  
The program only needs the video filename as a parameter, if you want to play it fullscreen then you can do it passing "fullscreen" word as an additional paremeter (does not matter if it's first or second parameter).  
As many other kind of wrappers and front-ends the motivation of this "project" is simple: Lazyness.  
Basic usage of ffplay is dead simple, but you need to remember all the parameters you need and enter all of them, with this project you don't need to enter all those parameters each time you want to play a video.


# Getting Started

## 1. Installation
- Download the app. https://github.com/Evilchuck666/ffplay-thumbnail/archive/master.zip
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

## Using make.bat
1. Open the folder where Program.cs is located
2. Make your changes in Program.cs with your favorite text editor
3. Open cmd.exe or powershell.exe on the directory (you can do it directly pressing Shift+Right-Click mouse on the folder)
4. Type: .\build.bat (build|install|clean|all|uninstall)
    - 'all' option makes build, install and clean consecutively
    - 'build' only makes the binary, and copies it from .\bin\Release to .\CompiledBinary\
    - 'install' copies from .\CompiledBinary to C:\tools\ffmpeg-utilities\
    - 'clean' removes obj, bin, Compiled, folders and removes sln cache file from the project root folder
    - 'uninstall' removes the binary from C:\tools\ffmpeg-utilities\
5. Done (excepting you won't have the context menu option)

## Using bootstrap.bat
Same steps as build.bat, but this batch will auto-elevate permissions to build.bat, so if you don't trust me...
Don't run it, but executing it, you will have context menu options to use the program.
If so, replace .\build.bat to .\bootstrap.bat

## Using Visual Studio version
If you use Visual Studio, you will need to edit .sln file first to be able to open the project

## Using another tools
Simply I don't know, search how to do it yourself

# FAQ
- Why you're an asshole with all these things of "beer" "replace to an orange juice if you're underage" "fuck yourself if you don't want to use build.bat"?
  - Take it easy, this is not an application meant to preserve mankind of its own tragedy.

# Contribute
If you have any idea, contact me:
 - Linkedin: https://es.linkedin.com/in/carlos-mart%C3%ADnez-medina-619ab5128
 - GitHub: https://github.com/Evilchuck666

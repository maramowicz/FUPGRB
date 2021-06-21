# FUPGRB
Fast Update Program from Github and Run it in Bash

This is my simplest project, this script is created to automatically update the project from Github if possible (project exists and internet connection works) and recompile if it has changed. It was originally created to download the new Processing 4 update (I add it as an example).

I created this script specifically to recompile and run it as soon as possible:

1. if the internet connection works then I check for updates
2. recompile the code if it is updated 
3. at the end run the program. 

There are 2 versions of the file: the first is a .sh with the code, the second is a desktop shortcut for linux computers.

How to edit it for my purposes?
Take a look at the example files, you should be interested in 3 sections of code:
```bash
DATA=/path/to/data #on this line write the path to the cloned repository folder
````
```bash
#Below this line write the recompilation code

#Above this line write the recompilation code
````
```bash
#Below this line write the run code

#Above this line write the run code
````
I think I don't need to explain these comments 😉.

And if anything: firstly I was assisted by a translator (my English is poor), and secondly absolutely do not ask me why this name and not another 😂.

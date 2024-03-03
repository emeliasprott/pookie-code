# Getting Started

Hello Pookie.

Welcome to Pookie Code. This website is going to be for notes and guides, and I'm going to put the code files for you to download on Github (This assignment will explain exactly how to do it and Github will be *really* helpful for you I promise).

Your first assignment is a lab going over the general set-up and what everything means.

## Where will I code?

### VS Code

![VS Code](images/vscodepic.png)

Click to download [VS Code](https://code.visualstudio.com)

Visual Studio Code is a code editor (like google docs for code). It also has predictive typing, built-in AI,
and completely integrates with github.

Once you download and open a new window, this is what you will see.

![inside of vs code](images/vscode_inside.png)

The left sidebar is called the *primary* one. You can switch between seeing your current folder, debugging, and extensions.
The center of the screen is where the file you're editting will be. To see the right sidebar, go to View -> Appearance -> Secondary Side Bar.
When you use R or Python, this will show every thing you have named in your code.
The bottom of the screen is the terminal. This is where you interact with the actual computer. It will show you the output, or the error message of anything you run. Writing in the terminal is harder, and you can't change anything once it's run. When you need to interact directly with your computer - e.g.
to download something or manipulate an actual file structure, you'll need to use the terminal. Today you will have to use the terminal a bit,
because you'll be downloading everything.

### Github

You can think of GitHub as Pinterest, but for code. All you need to do is create an account at [github.com](https://github.com).
Use your berkeley email when you sign up, because you get free premium as a student. On VS Code, log into Cody chat with your premium github account, and you'll get free unlimited AI.

Now that you've created your Github, let's get your VS Code Set Up.

1. Open the VS Code App
2. Click View -> Extensions.
    1. Here are the extensions you need for today (I put the exact names):
        * Python
        * Quarto
        * Cody AI
        * Github Repositories
        * Path Intellisense
        * R
        * R Debugger
    2. Extensions add additional features to VS Code, not your computer. For example, the Python and R extensions help VS Code to interpret the code, but they don't allow your computer to process it. We'll take care of that in the next step.
    3. Sign in to Cody Chat with your Github account. This will give you free AI.

## Today's Assignment

Now that you're all set up, let's get started on today's assignment.

* Part 1: Download R
  * Download R from [here](https://cran.r-project.org/bin/windows/base/). Just click the link to download, and follow the instructions as it prompts you. R will handle all of the installation.
* Part 2: Setting up your Folder
  * Open a new Terminal in VS Code by clicking Terminal -> New Terminal
  * You're going to use the Command Line to create a folder for your labs
    * Type mkdir pookie-code into the terminal
    * Next type cd pookie-code into the terminal
    * You just created a folder on your computer called pookie-code, and then changed your focus to be inside that folder
* Part 3: Downloading your Lab
  * Go to the [Github Repository](https://github.com/emeliasprott/pookie-code)
  * Go to Labs, click Lab1, then "Download Raw Code" in the top right corner
  * On your computer, move the downloaded file into the pookie-code folder you created
  * Open the file in VS Code by clicking File -> Open
* Part 4: Interacting with the Lab
  * In your terminal, type a single capital R to open the R server
  * Now you need to install the R packages needed to run this app. In the terminal, run each of these commands:
    * install.packages("shiny")
    * install.packages("shinydashboard")
    * install.packages("tidyverse")
    * install.packages("bslib")
    * The first command you run will ask you to select a "CRAN". This is how R packages can be downloaded from anywhere in the world. The number for the US is 0.
  * You can run your lab now.
    * To run the lab, close the terminal you were using for R by clicking the trashcan next to the word R. Keep the first terminal open, and *don't* click the X. In this terminal, you should be inside the pookie-code folder. If you're not, close this terminal too and repeat step 2 without the mkdir step.
    * With the lab open on the center of your screen, click it, then press CTRL + ENTER on your keyboard to run the lab. This will open the lab as a tab in your browser.
    * For today, play around with the input options. See how the graph changes based on the settings you choose.
    * Once you've done that, take a look at the code for the app. The UI section creates the visible parts of the app, and the server creates the actual functions of the app. The server uses some if statements and a for loop. Compare the file to the app output, and find these parts of the code. How do they work? What values does the app accept? In your notes, write down five different input combinations, along with a description of the graph they create.

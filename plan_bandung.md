# Event

Gentle Introduction to Developing modern web apps in R & Python
WiFi
    - Block 71 Bandung
    - Username: blk71
    - Password: blk71bdg

    - Username: blk71daily
    - Password: innovationfactory

Schedule and Deliverables:
https://algorit.ma/kickstart-introduction-developing-modern-web-apps/

Web App template (download link):
https://github.com/onlyphantom/darkershiny

# Objective
- What do we want in a "modern" web app?  
    - **Functionalities**
        - Work with any kind of input sources
        - Get machine learning functionalities
            - Prediction
        - Get visualization functionalities
            - Embed visualization into our app
        - Security features (production code)
        - Cloud deployment
        - Version control
        - Authentication
        - [Optional] Administration
    - **Appearance and UX**
        - Mobile-friendly
        - Customized with own CSS / JS

- How do we gain the skills required for objective #1  

# Plan
- Introduction to R and Python
    - R and Python are programming languages
    - RStudio is IDE (editor)
    - Visual Studio Code, Jupyter Notebook and Labs
    - Terminal (Linux)

- Introduction to the tools we'll use  
    - Visual Studio Code
        - Download link: https://code.visualstudio.com/download
    - RStudio
        - Download link: https://www.rstudio.com/products/rstudio/download/
    - SQL Editor / App
        - Use any free / open source
        - https://tableplus.io
    - Cloud deployment
        - Microsoft Azure
        - https://azure.microsoft.com/en-us/free/
        - If shiny: https://www.rstudio.com/products/shiny/shiny-server/
    - Version Control
        - GitHub
        - https://github.com/
        - GitLens for VS Code
    - Cheatsheet for Shiny
        - https://shiny.rstudio.com/images/shiny-cheatsheet.pdf
    - Shiny Proxy
        - https://www.shinyproxy.io/configuration/

- Developer productivity and deployment
    - Git and version control  
    - Virtual environment
    - Linux servers and cloud options  
    - DON'T: environment variables
- Code along: WebGuard

# Learning Resources
Demo 1: 
- [x] TensorFlow as a web app (HousingApp)

Demo 2:
- [x] Shiny on SQL (Limitless)

Demo 3:
- [x] Shiny in action (Quadrant)

Demo 4:
- [x] Authentication and Continuous Delivery (Pedagogy)

Demo 5:
- [x] Telco app (Confidence)

# Building a web app in Shiny (Start to Finish)
1. Download the web app template
2. Unzip the file
3. Right-click on app.R and open > open in RStudio
4. Click on "run app" green button in RStudio
5. Click on "open in web browser"

1. Open RStudio
2. Click on New > New File > Shiny Web App
3. Click on "Run App"

1. Create our Visualization
    `plot(x, y)` or `ggplot()`
2. Assign that plot to a variable
    `myplot <- plot(x,y)`
3. Use `renderPlot({ myplot })` to render plot in Shiny
4. Click on the Publish button next to Run app

# Building a web app in Python (Start to Finish)
1. Use a microframework like Flask 
    - If you don't have it installed yet:
        `pip install flask`
2. Use virtual environments
    - Or alternatively: conda environments
3. Use a modern IDE
    - Has github integration
    - Simple code completion / intellisense
4. Create `app.py` and the boilerplate:
```py
from flask import Flask
app = Flask(__name__)

@app.route('login')
...
```
Use `flask run` to run the app

## Difference between creating web apps in R vs Python

- Python: In a microframework or framework like Django or Flask, you write separate code for each of:
    - html
    - js
    - css
    - py

- R: Use shiny and write everything in R
    - app.R

- In R: two options for deployment 
    - Free shinyapps.io (Publish button)
        - samuelc.shinyapps.io/predictor
    - Shiny Server (open source) deployed on an Ubuntu machine

- In Python:
    - pythonanywhere
    - Docker (container): alpine linux
    - Run on Linux machine

- Advantages
    - R
        - data manipulation if often one line of code and built in without any reliance on any external libraries
        - `ggplot2` and other cool visualization libraries
        - Shiny is super easy to use (literally three steps)

    - Python
        - Ease of deployment (any linux server or container)
        - Access to pandas, numpy, sk-learn, tf..
        - More "general" so a lot of libraries outside of the data science world

- R and Python are both equally good choice
    - Any big companies releasing open source AI tools
        - Have both R and Python

## Concrete Steps
1. Pick up visualization
    - R: lattice plot, ggplot and base plot in R
    - Python: matplotlib

2. Pick up machine learning
    - Sk-learn, tensorflow or keras or mxnet, caret or algorithms implemented in R

3. Get familiar with Shiny or Flask

4. Learn cloud deployment and version control
    - Choices:
        - AWS (Amazon web services)
        - Microsoft Azure
        - Google Cloud
        - ...

    - Sign up for github.com

5. Reference Materials
    - For Shiny:
        - https://samuelc.shinyapps.io/quadrant
        - https://samuelc.shinyapps.io/textcomplete
    - For Flask:
        - http://pedagogy.azurewebsites.net

    - My Github has a lot of content for:
        - Learning ggplot
        - Learning text mining
        - Learning sentiment analysis
        - Learning pandas and python for data science
        - Learning shiny apps 
        - Free templates







# Event

Gentle Introduction to Developing modern web apps in R & Python
1.15pm - 4.15pm

Schedule and Deliverables:
https://algorit.ma/kickstart-introduction-developing-modern-web-apps/

Web App template (download link):
https://github.com/onlyphantom/darkershiny

# Objective
- What do we want in a "modern" web application?  
    - Able to be hosted on cloud / physical
        - AWS (Amazon Web Services)  
        - Microsoft Azure  
            - https://azure.microsoft.com/en-us/free/
        - Alibaba Cloud  
        - Google Cloud
        ...
    - In a production app, it needs to be able to work with all kind of data sources
        - SQL, Oracle, Postgre, ...
        - APIs (twitter, facebook, google trends, wiki...)
    - Security 
    - Responsive / Mobile-friendly
    - Generous and permissive license / Open-source
    - Administrative features
        - Account system
        - Log in / Log out
        - Mail servers
        - Admin features
    - Flexibility to incorporate JS / CSS elements as necessary
        - Example: integrate Bootstrap

- How do we gain the skills required for objective #1  

# Tools 
    - Prerequisites: R, Python, Git
    - Visual Studio Code
        - https://code.visualstudio.com/download
        - Alternatives: Atom, Sublime, Notepad++
    - RStudio
        - https://www.rstudio.com/products/rstudio/download/
    - SQL Editor
        - TablePlus (find a free alternative)
    - GitHub
        - https://github.com
    - Jupyter Notebook / Lab (installed through conda)
        - https://jupyter.org/install

# Step by Step (R)
1. The git url: https://github.com/onlyphantom/darkershiny has installation instruction and available to download as zip
    - `git clone ...`
2. On your desktop (or anywhere you want), paste the `git clone` command into a terminal (command line / command prompt)
3. Once completed, in the folder find `app.R`. Right click -> Open in RStudio
4. Once opened in RStudio, click on the "Run app" button

# Step by Step (Python)
1. Create a virtual environment
2. Create a new file on your computer, name it  `app.py`
3. Install flask into your environment
    - `pip install flask` or `conda install flask`
4. Write the base template:
```py
from flask import Flask
app = Flask()

@app.route('/')
def home():
    return 'Hello, this is home!'

app.run()
```
5. In your terminal, run the app by doing `flask run`

# Extra Resources:
    - https://github.com/onlyphantom/lebaran

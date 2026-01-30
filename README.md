<div align="center">
<img width="30%" src="https://user-images.githubusercontent.com/72341453/134747028-7e2d90cc-a92f-4f66-815e-54a0d50cca54.PNG">

# StudyBud
</div>

## About

StudyBud is a Django-based web application where users can create and join study rooms on various topics, engage in discussions, and collaborate with other learners. 

This project was built as part of a comprehensive 7-hour video tutorial: [Watch the full tutorial here](https://youtu.be/PtQiiknWUcI?si=DK6uyA5ZnU1oR8v4)

## Screenshots

<table width="100%"> 
<tr>
<td width="50%">      
&nbsp; 
<br>
<p align="center">
  Feed Home
</p>
<img src="https://user-images.githubusercontent.com/72341453/134747262-0a92233d-8010-40f8-84c5-8d94895aac44.PNG">
</td> 
<td width="50%">
<br>
<p align="center">
  Room Conversation Preview
</p>
<img src="https://user-images.githubusercontent.com/72341453/134747155-3ca5b55f-b064-4741-aeae-abe90bddf41e.PNG">  
</td>
</table>

## Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/divanov11/StudyBud.git
cd StudyBud
```

### 2. Create and activate a virtual environment

```bash
# Install virtualenv if you haven't already
pip install virtualenv

# Create a virtual environment
virtualenv venv

# Activate the virtual environment
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate
```

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

### 4. Run the development server

```bash
python manage.py runserver
```

The application will be available at http://127.0.0.1:8000/

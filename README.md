## Credit Default Prediction
https://credit-risk.netlify.app/
# Overview
Credit Default Prediction is a web application that predicts whether a customer will default on their credit based on various financial factors. The application uses a XGBoost model to make predictions and presents the results in an easy-to-use web interface.

# Features
Predicts credit default using multiple financial features.  
Displays the prediction (Default or No Default) without showing the probability.  
Provides an explanation of the key factors influencing the prediction.  
Visualizes input feature values and the relationship between age and debt ratio.  

# Technologies Used
**Backend:** Python, Flask, Gunicorn  
**Frontend:** HTML, CSS, JavaScript, Chart.js  
**Machine Learning:** Scikit-learn (XGBoost)  
**Deployment:** Docker, Google App Engine  
 
### Prerequisites

Ensure you have the following installed on your machine:

- Python 3.9
- Docker
- Google Cloud SDK (for deployment)

### Local Setup

Follow these steps to set up the application locally:

1. **Clone the Repository**

   ```sh
   git clone https://github.com/Tar-ive/credit-risk.git
   cd credit-default-prediction
sh
Copy code
python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`

2. **Install Dependencies**

sh
Copy code
pip install -r requirements.txt

3. **Run the Flask Application**

sh
Copy code
gunicorn --bind :8080 model:app
Access the application at http://localhost:8080.

4. **Docker Setup**
Build Docker Image

sh
Copy code
docker build -t credit-prediction-app .
Run Docker Container

sh
Copy code
docker run -p 8080:8080 credit-prediction-app
Access the application at http://localhost:8080.
  
5. **Deployment to Google App Engine**
Authenticate with GCP

sh
Copy code
gcloud auth login
Set Your GCP Project

sh
Copy code
gcloud config set project YOUR_PROJECT_ID
Deploy the Application

sh
Copy code
gcloud app deploy
Access the Deployed Application

Navigate to https://YOUR_PROJECT_ID.uc.r.appspot.com.
Usage
Navigate to the Web Application

Open the web application in your browser.
Input Financial Data

Fill in the financial data in the provided form.
Get Prediction

Click the "Predict" button to get the prediction.
View Explanation and Charts

The application will display whether the customer is predicted to default or not and show an explanation of key factors.
View the charts for feature values and the relationship between age and debt ratio.
File Structure
app.yaml: Configuration file for Google App Engine.
Dockerfile: Docker configuration file.
requirements.txt: Python dependencies.
model.py: Main application code.
index.html: Frontend code.

# Contributing
Feel free to open issues or submit pull requests for improvements and bug fixes.

# License
This project is licensed under the MIT License.

# Acknowledgements
Inspired by various credit risk prediction projects and tutorials from LEARNERA.

# Credit Default Prediction

[Live Demo](https://credit-risk.netlify.app/)

## Overview
Credit Default Prediction is a web application that predicts whether a customer will default on their credit based on various financial factors. The application uses an XGBoost model to make predictions and presents the results in an easy-to-use web interface.

## Project Structure
 credit-risk/
- .vs/ # Visual Studio configuration
- data/
    - default of credit card clients.xls # Raw data file
- model/ # Model-related files and notebooks
- resources/ # Additional project resources
- Dockerfile.txt # Docker configuration
- README.md # Project documentation
- app.yaml # App Engine configuration
- cs-training.csv # Training dataset
- db.sql # Database schema
- index.html # Frontend interface
- model.py # Main application logic
- netlify.toml # Netlify deployment configuration
- requirements.txt # Python dependencies
- xgboost_model.pkl # Trained XGBoost model
## Features

- Predicts credit default using multiple financial features
- Displays the prediction results in a web interface
- Uses an XGBoost model for predictions

## Technologies Used

- Backend: Python, Flask
- Frontend: HTML, CSS, JavaScript
- Machine Learning: Scikit-learn, XGBoost
- Deployment: Docker, Netlify

## Local Setup

Follow these steps to set up the application locally:

1. **Clone the Repository**
   ```sh
   git clone https://github.com/Tar-ive/credit-risk.git
   cd credit-default-prediction
   ```

2. **Create and Activate Virtual Environment**
   ```sh
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```

3. **Install Dependencies**
   ```sh
   pip install -r requirements.txt
   ```

4. **Run the Flask Application**
   ```sh
   gunicorn --bind :8080 model:app
   ```
   Access the application at http://localhost:8080.

5. **Docker Setup**

   Build Docker Image:
   ```sh
   docker build -t credit-prediction-app .
   ```

   Run Docker Container:
   ```sh
   docker run -p 8080:8080 credit-prediction-app
   ```
   Access the application at http://localhost:8080.

## Deployment to Google App Engine

1. **Authenticate with GCP**
   ```sh
   gcloud auth login
   ```

2. **Set Your GCP Project**
   ```sh
   gcloud config set project YOUR_PROJECT_ID
   ```

3. **Deploy the Application**
   ```sh
   gcloud app deploy
   ```

4. **Access the Deployed Application**
   Navigate to `https://YOUR_PROJECT_ID.uc.r.appspot.com`.

## Usage

1. Navigate to the Web Application
2. Input Financial Data
3. Get Prediction
4. View Explanation and Charts


## Contributing

Feel free to open issues or submit pull requests for improvements and bug fixes.

## License

This project is licensed under the MIT License.

## Acknowledgements

Inspired by various credit risk prediction projects and tutorials from LEARNERA.

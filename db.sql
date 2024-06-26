CREATE TABLE IF NOT EXISTS predictions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    age INT,
    debt_ratio FLOAT,
    payment_history INT,
    default_prediction BOOLEAN,
    prediction_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
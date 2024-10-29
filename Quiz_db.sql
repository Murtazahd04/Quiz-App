create database quizapp;
use quizapp;
CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);
CREATE TABLE quiz (
    quiz_no INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    ans1 VARCHAR(255) NOT NULL,
    ans2 VARCHAR(255) NOT NULL,
    ans3 VARCHAR(255) NOT NULL,
    ans4 VARCHAR(255) NOT NULL,
    c_ans INT NOT NULL  -- Assuming the correct answer is indicated by a number (1 to 4)
);
INSERT INTO quiz (question, ans1, ans2, ans3, ans4, c_ans) VALUES
('What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 3),
('Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Jupiter', 'Venus', 2),
('Who wrote "To Kill a Mockingbird"?', 'Mark Twain', 'Harper Lee', 'J.K. Rowling', 'Ernest Hemingway', 2),
('What is the chemical symbol for water?', 'O2', 'H2O', 'CO2', 'HO', 2),
('How many continents are there?', '5', '6', '7', '8', 3),
('Who developed the theory of relativity?', 'Isaac Newton', 'Albert Einstein', 'Nikola Tesla', 'Stephen Hawking', 2),
('Which is the smallest country in the world by area?', 'Monaco', 'Nauru', 'Vatican City', 'San Marino', 3),
('What is the hardest natural substance on Earth?', 'Gold', 'Iron', 'Diamond', 'Platinum', 3),
('Who painted the Mona Lisa?', 'Vincent Van Gogh', 'Pablo Picasso', 'Claude Monet', 'Leonardo da Vinci', 4),
('What is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Southern Ocean', 'Pacific Ocean', 4);
drop table quiz;
-- Create the results table
drop table quiz_results;
CREATE TABLE quiz_results (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    quiz_no INT NOT NULL,
    score INT NOT NULL,
    total INT NOT NULL,
    date_taken DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (quiz_no) REFERENCES quiz(quiz_no)
);
CREATE TABLE quiz_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ques TEXT NOT NULL,
    option1 TEXT NOT NULL,
    option2 TEXT NOT NULL,
    option3 TEXT NOT NULL,
    option4 TEXT NOT NULL,
    answer TEXT NOT NULL
);
CREATE TABLE Note (
    noteno INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL
);
select * FROM Note;




use lms;

CREATE TABLE IF NOT EXISTS userDetails (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
email VARCHAR(50), Password VARCHAR(20),
first_name VARCHAR(20), last_name VARCHAR(20), 
contact_number VARCHAR(15), verified VARCHAR(10), 
creator_stamp DATETIME, creator_user VARCHAR(50)
); 

INSERT INTO userDetails (email, first_name, last_name, Password, contact_number, verified, creator_stamp, creator_user)
VALUES 
('John@example.com', 'John', 'Doe', 'password1', '1234567890', 'Pending', NOW(), 'admin'),
('Jane@example.com', 'Jane', 'Smith', 'password2', '9876543210', 'Pending', NOW(), 'admin'),
('Bob@example.com', 'Bob', 'Johnson', 'password3', '5555555555', 'Accepeted', NOW(), 'admin'),
('Alice@example.com', 'Alice', 'Johnson', 'password4', NULL, 'Accepeted', NOW(), 'admin'),
('Charlie@example.com', 'Charlie', 'Brown', 'password5', '1111111111', 'Pending', NOW(), 'admin'),
('Eva@example.com', 'Eva', 'White', 'password6', '9998887777', 'Rejected', NOW(), 'admin'),
('David@example.com', 'David', 'Miller', 'password7', '3333333333', 'Accepeted', NOW(), 'admin'),
('Grace@example.com', 'Grace', 'Williams', 'password8', '4444444444', 'Accepeted', NOW(), 'admin'),
('Tom@example.com', 'Tom', 'Davis', 'password9', '6666666666', 'Rejected', NOW(), 'admin'),
('Sophia@example.com', 'Sophia', 'Clark', 'password10', '7777777777', 'Accepeted', NOW(), 'admin'),
('Henry@example.com', 'Henry', 'Smith', 'password11', '8888888888', 'Accepeted', NOW(), 'admin'),
('Olivia@example.com', 'Olivia', 'Brown', 'password12', '2222222222', 'Rejected', NOW(), 'admin'),
('Liam@example.com', 'Liam', 'Johnson', 'password13', NULL, 'Pending', NOW(), 'admin'),
('Ava@example.com', 'Ava', 'Jones', 'password14', '1231231234', 'Accepeted', NOW(), 'admin'),
('Mia@example.com', 'Mia', 'Davis', 'password15', '9876543210', 'Pending', NOW(), 'admin');


CREATE TABLE IF NOT EXISTS hiredCandidate (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
first_name VARCHAR(20), middle_name VARCHAR(20),last_name VARCHAR(20), 
email VARCHAR(50), degree VARCHAR(50),  
hired_city VARCHAR(20), hired_date DATE, hired_lab VARCHAR(50), 
mobile_number VARCHAR(15), permanent_pincode VARCHAR(10), 
attitude VARCHAR(50), communication_remark VARCHAR(50), knowledge_remark VARCHAR(50), aggregate_remark VARCHAR(50), 
status VARCHAR(10), 
creator_stamp DATETIME, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);


INSERT INTO hiredCandidate (first_name, middle_name, last_name, email, hired_city, degree, hired_date, mobile_number, 
permanent_pincode, hired_lab, attitude, communication_remark, knowledge_remark, aggregate_remark, status, creator_stamp, creator_user)
VALUES
 ('John','Tom', 'Doe','john@email.com', 'Pune', 'BE', '2024-01-01', '1234567890', '12345', 'Lab1', 'Positive', 'Good', 'Excellent', 'Outstanding', 'Active',NOW(), 1),
('Jane','Bob', 'Smith','jane@email.com', 'Mumbai', 'ME', '2024-01-02', '9876543210', '54321', 'Lab2', 'Positive', 'Excellent', 'Good', 'Outstanding', 'Active',NOW(), 2),
( 'Bob','xyz', 'Johnson','Bob@example.com', 'Bangalore', 'BE', '2023-11-01', '5555555555', '54311', 'Lab3', 'Positive', 'Good', 'Excellent', 'Good', 'Active',NOW(), 3),
( 'Alice','pqrs', 'Johnson','Alice@example.com', 'Mumbai', 'MCA', '2023-12-11',NUll, '56311', 'Lab1', 'Nutral', 'Excellent', 'Good', 'Good', 'InActive',NOW(), 4),
( 'Charlie','black', 'Brown', 'Charlie@example.com', 'Pune', 'MCA', '2023-12-19','1111111111', '44311', 'Lab2', 'Negative', 'Good', 'Good', 'Good', 'InActive',NOW(), 5),
( 'Eva','Gray', 'White','Eva@example.com','Bangalore','ME', '2024-1-12', '9998887777', '44312', 'Lab3', 'Positive', 'Excellent', 'Excellent', 'Excellent', 'Active',NOW(), 6),
( 'David','Roy', 'Miller','David@example.com', 'Mumbai','BE', '2023-5-01','3333333333',  '44333', 'Lab1', 'Positive', 'Excellent', 'Excellent', 'Outstanding', 'Active',NOW(), 7),
('Grace','Dum', 'Williams','Grace@example.com','Bangalore','BE','2023-8-01', '4444444444', '47833', 'Lab2', 'Positive', 'Excellent', 'Excellent', 'Outstanding', 'Active',NOW(), 8),
('Tom','Lean','Davis','Tom@example.com','Pune','BE','2023-10-01','6666666666', '41233', 'Lab3', 'Positive', 'Good', 'Excellent', 'Good', 'InActive',NOW(), 9),
('Sophia','Alean','Clark','Sophia@example.com','Pune', 'BE', '2023-07-01', '7777777777' , '13345', 'Lab1', 'Positive', 'Good', 'Excellent', 'Outstanding', 'Active',NOW(), 10);



CREATE TABLE IF NOT EXISTS fellowshipCandidate (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, CIC_ID VARCHAR(15),  
first_name VARCHAR(20), middle_name VARCHAR(20), last_name VARCHAR(20), 
EmailId VARCHAR(50), Mobile_number VARCHAR(15), Birth_date DATE, IsBirthDateVerified VARCHAR(10),
Degree VARCHAR(50),
Hired_date DATE, hired_city VARCHAR(20), Hired_lab VARCHAR(20),
Permanent_pincode VARCHAR(10), 
Attitude VARCHAR(50), Communication_remark VARCHAR(50), Knowledge_remark VARCHAR(50), Aggregate_remark VARCHAR(50),
Creator_stamp DATETIME, Creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id),
Parent_Name VARCHAR(255), Parent_Occupation VARCHAR(50),
Parents_Mobile_Number VARCHAR(15), Parents_Annual_Salary VARCHAR(10),
Local_Address VARCHAR(255), Permanent_Address VARCHAR(255), Photo_Path VARCHAR(255),
Joining_Date DATE, Candidate_Status VARCHAR(25), Personal_Information TEXT,
Bank_Information VARCHAR(255), Educational_Information VARCHAR(255),
Document_Status VARCHAR(15), Remark VARCHAR(255)
);


INSERT INTO fellowshipCandidate (CIC_ID, first_name, middle_name, last_name, EmailId, hired_city, Degree, Hired_date, Mobile_number, 
Permanent_pincode, Hired_lab, Attitude, Communication_remark, Knowledge_remark, Aggregate_remark, Creator_user, Birth_date, IsBirthDateVerified, 
Parent_Name, Parent_Occupation, Parents_Mobile_Number, Parents_Annual_Salary, Local_Address, Permanent_Address, Photo_Path, Joining_Date, Candidate_Status, 
Personal_Information, Bank_Information, Educational_Information, Document_Status, Remark)
VALUES
    ('CIC032022-11333','John','Tom', 'Doe','john@email.com', 'Pune', 'BE', '2024-01-01', '1234567890', '12345','Lab1', 'Positive', 'Good', 'Excellent', 'Outstanding', 1, '1990-01-01', true, 'John Doe Sr.', 'Engineer', '9876543210', 75000.00, 'LocalAddress1', 'PermanentAddress1', '/photos/john_doe.jpg', '2024-01-15', 'Active', 'Personal info 1', 'Bank info 1', 'Education info 1', 'Verified', 'No remarks'),
    ('CIC032021-11333','Jane','Bob', 'Smith','jane@email.com', 'Mumbai', 'ME', '2024-01-02', '9876543210', '54321', 'Lab2', 'Positive', 'Excellent', 'Good', 'Outstanding',2 ,'1991-11-01', true, 'Smith Doe Sr.', 'Engineer', '9876588210', 65000.00, 'LocalAddress2', 'PermanentAddress2', '/photos/jane_Smith.jpg', '2024-01-14', 'Active', 'Personal info 2', 'Bank info 2', 'Education info 2', 'Verified', 'No remarks'),
	('CIC034021-11333','Bob','xyz', 'Johnson','Bob@example.com', 'Benglor', 'BE', '2023-11-01', '5555555555', '54311', 'Lab3', 'Positive', 'Good', 'Excellent', 'Good', 3,'1992-12-01', true, 'Aline Doe Sr.', 'Doctor', '963588210', 65050.00, 'LocalAddress3', 'PermanentAddress3', '/photos/Bob_jhonson.jpg', '2023-12-13', 'Active', 'Personal info 3', 'Bank info 3', 'Education info 3', 'Verified', 'No remarks'),
	('CIC037021-11333','Alice','pqrs', 'Johnson','Alice@example.com', 'Mumbai', 'MCA', '2023-12-11',NUll, '56311', 'Lab1', 'Nutral', 'Excellent', 'Good', 'Good', 4,'1993-10-01', true, ' bob Doe Sr.', 'Doctor', '963598710', 45000.00, 'LocalAddress4', 'PermanentAddress4', '/photos/Alice_jhonson.jpg', '2024-02-13', 'InActive', 'Personal info 4', 'Bank info 4', 'Education info 4', 'Verified', 'No remarks'),
    ('CIC037021-11333','Charlie','black','Brown','Charlie@example.com', 'Pune', 'MCA', '2023-12-19','1111111111', '44311', 'Lab2', 'Negative', 'Good', 'Good', 'Good', 5,'1994-08-01', true, ' Charlie Doe Sr.', 'carpenter', '963522710', 50000.00, 'LocalAddress5', 'PermanentAddress5', '/photos/Alice_jhonson.jpg', '2024-02-13', 'InActive', 'Personal info 5', 'Bank info 5', 'Education info 5', 'Verified', 'No remarks');


CREATE TABLE IF NOT EXISTS CandidateBankDetails (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, candidateId INTEGER, 
FOREIGN KEY (candidateId) REFERENCES userDetails (Id) , Name VARCHAR(100), 
Account_Number VARCHAR(20), Is_Account_Num_Verified VARCHAR(10), 
Ifsc_code VARCHAR(20), is_ifsc_code_verified VARCHAR(10), 
pan_number VARCHAR(10), is_pan_number_verified VARCHAR(10), 
adhaar_num VARCHAR(16), is_addhaar_num_verified VARCHAR(10), 
creator_stamp DATETIME, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
); 

INSERT INTO CandidateBankDetails (candidateId, Name, Account_Number, Is_Account_Num_Verified, Ifsc_code, is_ifsc_code_verified,
 pan_number, is_pan_number_verified, adhaar_num, is_addhaar_num_verified, creator_stamp, creator_user)
VALUES
    (1, 'John Doe', '123456789012', true, 'ABC1234567', true, 'ABCDE1234F', true, '123456789012', true,now(), 1),
	(2, 'Jane Smith', '102345678912', true, 'ABC1234567', true, 'ABCGE1234F', true, '123456789013', true,now(), 2),
	(3, 'Bob Johnson', '12345789012', true, 'ABC1234568', true, 'ABCSE1234F', true, '123456789014', true,now(), 3),
	(4, 'Alice Johnson', '123789789012', true, 'ABC1235467', true, 'BBCDE1234F', true, '123456789015', true,now(), 4),
	(5, 'Charlie Brown', '123741789012', true, 'ABC1243569', true, 'EBCDE1234F', true, '123456789016', true,now(), 5),
	(6, 'Eva White', '123456774512', true, 'ABC1234560', true, 'ABCDK1234F', true, '123456789017', true,now(), 6),
    (7, 'David Miller', '147456789012', true, 'ABC1234561', true, 'AUCDE1234F', true, '123456789018', true,now(), 7),
    (8, 'Grace Williams', '785654321098', true, 'XYZ9876543', true, 'MYZAB5678P', true, '987654321019', true, now(),8),
	(9, 'Tom Davis', '123456748512', true, 'ABC1234562', true, 'ABCIE1234F', true, '123456789010', true,now(), 9),
	(10, 'Sophia Clark', '123785789012', true, 'ABC1234563', true, 'OBCDE1234F', true, '123456789000', true,now(), 10),
	(11, 'Henry Smith', '204456789012', true, 'ABC1234564', true, 'APCDE1234F', true, '123456789010', true,now(), 11),
	(12, 'Olivia Brown', '178956789012', true, 'ABC1234565', true, 'EBCDE1234F', true, '123456789020', true,now(), 12),
	(13, 'Liam Johnson', '123456789012', true, 'ABC1234566', true, 'SBCDE1234F', true, '123456789030', true,now(), 13),
	(14, 'Ava Jones', '123456789012', true, 'ABC1234544', true, 'ABCZE1234F', true, '123456789040', true,now(), 14),
	(15, 'Mia Davis', '123456789012', true, 'ABC1234533', true, 'ABCRE1234F', true, '123456789050', true,now(), 15);



CREATE TABLE IF NOT EXISTS CandidateQualification (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, candidateId INTEGER, 
FOREIGN KEY (candidateId) REFERENCES userDetails (Id), 
diploma VARCHAR(255), degree_name VARCHAR(255), is_degree_name_verified VARCHAR(10), 
employee_decipline VARCHAR(255), is_employee_decipline_verified VARCHAR(10), 
passing_year VARCHAR(5), is_passing_year_verified VARCHAR(10), 
aggr_per VARCHAR(6), is_aggr_per_verified VARCHAR(10), final_year_per VARCHAR(6), is_final_year_per_verified VARCHAR(10), 
training_institute VARCHAR(255), is_training_institute_verified VARCHAR(10), 
training_duration_month VARCHAR(100), is_training_duration_month_verified VARCHAR(10), 
other_training VARCHAR(255), is_other_training_verified VARCHAR(10), 
creator_stamp DATETIME, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);



INSERT INTO CandidateQualification (candidateId, diploma, degree_name, is_degree_name_verified, employee_decipline, 
is_employee_decipline_verified, passing_year, is_passing_year_verified, aggr_per, is_aggr_per_verified, 
final_year_per, is_final_year_per_verified, training_institute, is_training_institute_verified, 
training_duration_month, is_training_duration_month_verified, other_training, is_other_training_verified, creator_stamp, creator_user)
VALUES
    (1, 'Diploma in Computer Science', 'Bachelor in Computer Science', true, 'Computer Science', true, 2019, true, 75.5, true, 78.2, true, 'Tech Institute', true, 12, true, 'Java ', true,Now(), 1),
    (2, 'Diploma in Mechnical', 'Masters of Computer Science', true, 'Computer Science', true, 2019, true, 80.0, true, 85.5, true, 'Tech School', true, 24, true, 'Python Programming Certification ', true,Now(), 2),
    (3, 'Diploma in Electrical ','Bachelor in Electrical', true, 'Electrical Engineering', true, 2017, true, 78.2, true, 82.0, true, 'Engineering College', true, 18, true, 'PLC Programming Certification', true,Now(), 3),
    (4, 'Diploma in computer Science', 'Masters of Computer Application', true, 'Computer', true, 2019, true, 89.5, true, 91.0, true, 'Cyber School', true, 36, true, 'CCNA', true,Now(), 4),
    (5, 'Diploma in Computer Applications', 'Master of Science in Computer Applications', true, 'Computer Applications', true, 2016, true, 70.0, true, 75.5, true, 'Techno College', true, 15, true, 'Python Programming Certification', true,Now(), 5),
	(6, 'Diploma in IT', 'Masters of IT', true, 'IT', true, 2016, true, 80.0, true, 85.5, true, 'DKTE ', true, 24, true, 'C++ Programming Certification ', true,Now(), 6),
    (7, 'Diploma in IT', 'Bachelor  in Computer Science', true, 'Computer Science', true, 2017, true, 75.0, true, 78.2, true, 'Arya Institute', true, 12, true, 'C Certification', true,Now(), 7),
    (8, 'Diploma in Computer Science', 'Bachelor  in Computer Science', true, 'Computer Science', true, 2020, true, 75.5, true, 78.2, true, 'SIT Institute', true, 12, true, 'CCNP', true,Now(), 8),
	(9, 'Diploma in Computer Science', 'Bachelor  in Computer Science', true, 'Computer Science', true, 2019, true, 75.5, true, 78.2, true, 'Morden Institute', true, 12, true, 'CCNP', true,Now(), 9),
    (10, 'Diploma in Computer Science', 'Bachelor  in Computer Science', true, 'Computer Science', true, 2020, true, 75.5, true, 78.2, true, 'SIT Institute', true, 12, true, 'Java', true,Now(), 10),
    (11, 'Diploma in IT', 'Bachelor  in IT', true, ' Inormation Technology', true, 2020, true, 75.5, true, 78.2, true, 'SIT Institute', true, 12, true, 'CCNP', true,Now(),11),
    (12, 'Diploma in Computer Science', 'Bachelor  in Computer Science', true, 'Computer Science', true, 2016, true, 75.5, true, 78.2, true, 'SIT Institute', true, 12, true, 'CCNP', true,Now(), 12),
    (13, 'Diploma in Computer Science', 'Bachelor  in Computer Science', true, 'Computer Science', true, 2020, true, 75.5, true, 78.2, true, 'SIT Institute', true, 12, true, 'CCNP', true,Now(), 13),
    (14, 'Diploma in Computer Science', 'Bachelor  in Computer Science', true, 'Computer Science', true, 2020, true, 75.5, true, 78.2, true, 'SIT Institute', true, 12, true, 'Java', true,Now(), 14),
    (15, 'Diploma in Computer Science', 'Bachelor  in Computer Science', true, 'Computer Science', true, 2021, true, 75.5, true, 78.2, true, 'SIT Institute', true, 12, true, 'CCNP', true,Now(), 15);
    
    CREATE TABLE IF NOT EXISTS CandidateDocuments (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, candidateId INTEGER, 
FOREIGN KEY (candidateId) REFERENCES userDetails (Id), 
doc_type VARCHAR(25), doc_path VARCHAR(255), Status VARCHAR(15), 
creator_stamp DATETIME, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);



INSERT INTO CandidateDocuments (candidateId, doc_type, doc_path, Status, creator_stamp, creator_user)
VALUES 
(1, 'Certificate', '/documents/john_doe.pdf', 'Received',now(), 1),
(2, 'Adharcard', '/documents/Jane Smith.pdf', 'Received',now(), 2),
(3, 'Pan_Card', '/documents/Bob Johnson.pdf', 'Received',now(), 3),
(4, 'Certificate', null, 'Pending',now(), 4),
(5, 'Adharcard', null, 'pending',now(), 5),
(6, 'Pan_card', '/documents/Eva White.pdf', 'Received',now(), 6),
(7, 'Certificate', '/documents/David Miller.pdf', 'Received',now(), 7),
(8, 'Adharcard', null, 'pending',now(), 8),
(9, 'Pan_Card', '/documents/Tom Davis.pdf', 'Received',now(), 9),
(10, 'Certificate', '/documents/Sophia Clark.pdf', 'Received',now(), 10),
(11, 'Adharcard', null, 'Pending',now(), 11),
(12, 'panvcard', null, 'pending',now(), 12),
(13, 'Certificate', '/documents/Liam Johnson.pdf', 'Received',now(), 13),
(14, 'Adharcard', '/documents/Ava Jones.pdf', 'Received',now(), 14),
(15, 'Pan_card', '/documents/ Mia Davis.pdf', 'Received',now(), 15);

CREATE TABLE IF NOT EXISTS Company (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255), 
address VARCHAR(255), location VARCHAR(255), status VARCHAR(15),
creator_stamp DATETIME, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);
    
    INSERT INTO Company (Name, Address, Location, Status, creator_user)
VALUES
    ('ABC Corp', '123 Main Street', 'City1', 'Active', 1),
    ('XYZ Ltd', '456 Oak Avenue', 'City2', 'Active', 2),
    ('Tech Innovators', '789 Maple Lane', 'City3', 'Active', 3),
    ('Global Solutions', '101 Pine Road', 'City4', 'Active', 4),
    ('Dynamic Enterprises', '202 Elm Street', 'City5', 'Active', 5),
    ('Innovate Tech', '303 Cedar Avenue', 'City6', 'Active', 1),
    ('Swift Solutions', '404 Birch Lane', 'City7', 'Active', 2),
    ('Pinnacle Systems', '505 Walnut Road', 'City8', 'Active', 3),
    ('FutureTech Inc', '606 Spruce Lane', 'City9', 'Active', 4),
    ('Eagle Software', '707 Fir Street', 'City10', 'Active', 5);
    
    
    CREATE TABLE IF NOT EXISTS TechStack (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, tech_name VARCHAR(50), image_path TEXT, 
framework VARCHAR(50), cur_status VARCHAR(10), 
creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);


INSERT INTO TechStack (tech_name, image_path, framework, cur_status, creator_user)
VALUES
    ('Java', '/images/java_logo.png', 'Spring Boot', 'Active', 1),
    ('JavaScript', '/images/javascript_logo.png', 'React', 'Active', 2),
    ('Python', '/images/python_logo.png', 'Django', 'Active', 3),
    ('C#', '/images/csharp_logo.png', 'ASP.NET Core', 'Active', 4),
    ('Java', '/images/ruby_logo.png', 'Ruby on Rails', 'Active', 5),
    ('PHP', '/images/php_logo.png', 'Laravel', 'Active', 1),
    ('Java', '/images/swift_logo.png', 'iOS', 'Active', 2),
    ('Kotlin', '/images/kotlin_logo.png', 'Android', 'Active', 3),
    ('Node.js', '/images/nodejs_logo.png', 'Express.js', 'Active', 4),
    ('Java', '/images/go_logo.png', 'Gin', 'Active', 5);


CREATE TABLE IF NOT EXISTS TechType (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
type_name VARCHAR(50), cur_status VARCHAR(10),
creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);



INSERT INTO TechType (type_name, cur_status, creator_user)
VALUES
    ('Programming Language', 'Active', 1),
    ('Front-end Framework', 'Active', 2),
    ('Back-end Framework', 'Active', 3),
    ('Mobile App Development', 'Active', 4),
    ('Database Management System', 'Active', 5),
    ('Web Development', 'Active', 1),
    ('Mobile Development', 'Active', 2),
    ('Server-side Scripting Language', 'Active', 3),
    ('Web Framework', 'Active', 4),
    ('Cloud Computing', 'Active', 5);
    
    
   CREATE TABLE IF NOT EXISTS MakerProgram (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
program_name VARCHAR(255), program_type VARCHAR(255), program_link VARCHAR(255), 
tech_stack_id INTEGER, FOREIGN KEY (tech_stack_id) REFERENCES TechStack (Id),
tech_type_id INTEGER, FOREIGN KEY (tech_type_id) REFERENCES TechType (Id),
is_program_approved VARCHAR(5), Description TEXT, status VARCHAR(15), 
creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);  


INSERT INTO MakerProgram (program_name, program_type, program_link, tech_stack_id, tech_type_id, is_program_approved, Description, status, creator_user)
VALUES
    ('Java Basics Program', 'Tutorial', '/programs/java_basics', 1, 1, true, 'Learn the fundamentals of Java programming language.', 'Active', 1),
    ('Java_Full_Stack+SpringBoot+Angular', 'Full Stack', '/programs/Full_Stack', 6, 7, true, 'Learning java ,angular and springboot', 'Active', 2),
    ('Java_Full_Stack+Hibernate+Angular', 'Full Stack', '/programs/Hibernater', 3, 3, true, 'Master Python web development with Django framework.', 'Active', 3),
    ('React Js', 'Front End', '/programs/Frontend', 4,2, true, 'Lerning React for front development', 'Active', 4),
    ('SpringBoot', 'Backend', '/programs/Backend', 1, 3, true, 'Lerning Spring Boot for backend development.', 'Active', 5);

    
    CREATE TABLE IF NOT EXISTS AppParameters (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
key_type VARCHAR(15), key_value VARCHAR(10), key_text VARCHAR(10),
cur_status VARCHAR(10), lastupd_user VARCHAR(255), lastupd_stamp DATETIME,
creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id), seq_num INTEGER
);

INSERT INTO AppParameters (key_type, key_value, key_text, cur_status, lastupd_user, lastupd_stamp, creator_user, seq_num)
VALUES
    ('DOC_STATUS', 'PND', 'Pending', 'Active', 1, NOW(), 1, 1),
    ('DOC_STATUS', 'RCEVD', 'Received', 'Active', 2, NOW(), 1, 1),
    ('CUR_STATUS', 'PND', 'Pending', 'Active', 3, NOW(), 3, 3); 
    
    
    CREATE TABLE IF NOT EXISTS Lab (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, name VARCHAR(100), location VARCHAR(50), address VARCHAR(255), 
Status VARCHAR(10), creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);

INSERT INTO Lab (name, location, address, Status, creator_user)
VALUES
    ('Lab1', 'Mumbai', '123 Main Street', 'Active', 1),
    ('Lab2', 'Pune', '456 Oak Avenue', 'Active', 2),
    ('Lab3', 'Bangalore', '789 Maple Lane', 'Active', 3),
    ('Lab4', 'Mumbai', '789 Maple Lane', 'Active', 3);

    
    
    CREATE TABLE IF NOT EXISTS LabThreshold (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
lab_id INTEGER, FOREIGN KEY (lab_id) REFERENCES Lab (Id),
lab_capacity INTEGER, lead_threshold INTEGER,
ideation_engg_threshold INTEGER, buddy_engg_threshold INTEGER,
Status VARCHAR(10), creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);
    
    
    
INSERT INTO LabThreshold (lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, Status, creator_user)
VALUES
    (1, 50, 5, 10, 15, 'Active', 1),
    (2, 40, 4, 8, 12, 'Active', 2),
    (3, 60, 6, 12, 18, 'Active', 3);
    
    
    CREATE TABLE IF NOT EXISTS Mentor (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(100), mentor_type VARCHAR(25), 
lab_id INTEGER, FOREIGN KEY (lab_id) REFERENCES Lab (Id),
Status VARCHAR(25), creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);



-- 888

INSERT INTO Mentor (name, mentor_type, lab_id, Status, creator_user)
VALUES
    ('Shahazad', 'Mentor', 1, 'Active', 1),
    ('Sunil', 'Lead', 1, 'Active', 2),
    ('Pooja', 'ideation', 2, 'Active', 3),
    ('Aishwarya', 'Buddy', 1, 'Active', 4),
    ('Gunjan','Lead',1,'Active',5);

CREATE TABLE IF NOT EXISTS MentorIdeationMap (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
parent_mentor_id INTEGER, FOREIGN KEY (parent_mentor_id) REFERENCES Mentor (Id),
mentor_id INTEGER, FOREIGN KEY (mentor_id) REFERENCES Mentor (Id), 
status VARCHAR(15), creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id) 
);

INSERT INTO MentorIdeationMap (parent_mentor_id, mentor_id, status, creator_user)
VALUES
    (2, 1, 'Active', 1),
    (5, 3, 'Active', 2),
    (2, 4, 'Active', 3),
    (5, 1, 'Active', 4);

CREATE TABLE IF NOT EXISTS MentorTechStack (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
mentor_id INTEGER, FOREIGN KEY (mentor_id) REFERENCES Mentor (Id), 
tech_stack_id INTEGER, FOREIGN KEY (tech_stack_id) REFERENCES TechStack (Id), 
Status VARCHAR(15), creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);

INSERT INTO MentorTechStack (mentor_id, tech_stack_id, Status, creator_user)
VALUES
    (1, 1, 'Active', 1),
    (2, 5, 'Active', 2),
    (3, 3, 'Active', 3),
    (4, 4, 'Active', 4);

CREATE TABLE IF NOT EXISTS CompanyRequirement (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
company_id INTEGER, FOREIGN KEY (company_id) REFERENCES Company (Id), 
requested_month VARCHAR(10), city VARCHAR(25), is_doc_verifrication VARCHAR(10), 
requirement_doc_path VARCHAR(255), no_of_engg INTEGER, 
tech_stack_id INTEGER, FOREIGN KEY (tech_stack_id) REFERENCES TechStack (Id),
tech_type_id INTEGER, FOREIGN KEY (tech_type_id) REFERENCES TechType (Id),
maker_program_id INTEGER, FOREIGN KEY (maker_program_id) REFERENCES MakerProgram (Id),
lead_id INTEGER, FOREIGN KEY (lead_id) REFERENCES Mentor (id), 
ideation_engg_id INTEGER, FOREIGN KEY (ideation_engg_id) REFERENCES Mentor (Id),
buddy_engg_id INTEGER, FOREIGN KEY (buddy_engg_id) REFERENCES Mentor (Id),
special_remark VARCHAR(255), Status VARCHAR(10), creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);

INSERT INTO CompanyRequirement (company_id, requested_month, city, is_doc_verifrication, requirement_doc_path, no_of_engg, tech_stack_id, 
tech_type_id, maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, Status, creator_user)
VALUES
    (1, '2024-03-01', 'City1', true, '/documents/requirement_doc.pdf', 10, 1, 1, 1, 1, 2, 3, 'Special requirements for the project.', 'Active', 1),
	(2, '2024-04-01', 'City2', false, '', 8, 2, 2, 2, 2, 3, 4, 'Looking for innovative solutions.', 'Active', 2),
    (3, '2024-05-01', 'City3', true, '/documents/requirement_doc2.pdf', 12, 3, 3, 3, 3, 4, 5, 'Prioritize candidates with experience in cloud computing.', 'Active', 3);

CREATE TABLE IF NOT EXISTS CandidateStackAssignment (
Id INTEGER PRIMARY KEY AUTO_INCREMENT, 
requirement_id INTEGER, FOREIGN KEY (requirement_id) REFERENCES CompanyRequirement (Id), 
candidateId INTEGER, FOREIGN KEY (candidateId) REFERENCES hiredCandidate (Id), 
assign_date DATE, complete_date DATE, Status VARCHAR(15), 
creator_stamp DATETIME DEFAULT CURRENT_TIMESTAMP, creator_user INTEGER,
FOREIGN KEY (creator_user) REFERENCES userDetails (Id)
);

INSERT INTO CandidateStackAssignment (requirement_id, candidateId, assign_date, complete_date, Status, creator_user)
VALUES
    (1, 1, '2024-03-05', '2024-03-20', 'Completed', 1),
    (2, 2, '2024-04-10', '2024-04-25', 'In Progress', 2),
    (3, 3, '2024-05-15', NULL, 'Pending', 3);
    
    
    
    
    
    
    

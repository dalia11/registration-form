CREATE DATABASE Registration;
USE Registration;

CREATE TABLE Department(
    dept_id int auto_increment,
    name varchar(50) unique not null,
    description varchar(100),
    PRIMARY key(dept_id)
);

CREATE TABLE Users(
    user_id int auto_increment,
    email varchar(50) not null,
    username varchar(50) unique not null,
    password varchar(50) not null,
    registration_date TIMESTAMP,
    department_id int,
    PRIMARY key(user_id), FOREIGN key(department_id) REFERENCES Department(dept_id)
);

CREATE TABLE Courses(
    course_id int auto_increment,
    course_name varchar(50) unique not null,
    course_description varchar(100),
    instructor_name varchar(50),
    credit_hours int not null,
    department_id int,
    PRIMARY key(course_id), FOREIGN key(department_id) REFERENCES Department(dept_id)
 );
 
 INSERT INTO Department (name, description) VALUES("computer&communication","Cooperative education and internship assignments provide experience related to each student's academic interests The cooperative education opportunities are open to undergraduate computer science");
 INSERT INTO Department (name, description) VALUES("electromechanics","For those interested in performing installation and repair work on computer-driven equipment, becoming an electro-mechanical technician may be a good career option. These engineering technicians piece together and calibrate new machines, such as manufacturing robotic devices. They also diagnose issues, make necessary repairs, create new components and execute performance tests.");
INSERT INTO Department (name, description) VALUES("petrochemical"," Our department is committed to educating the next generation of petroleum engineering leaders who will improve our quality of life.");
INSERT INTO Department (name, description) VALUES("construction","Students learn blueprint reading, building material properties, math, quantity take off, structural analysis, computer applications, cost estimating, scheduling, surveying, safety, contracts, problem solving, people and networking, management and leadership skills.");
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("programming","An introduction to programming in the C++ language. Types and representations, arithmetic, strings, arrays, control structures, basic algorithm design, and problem solving.","ahmed",3,1);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("operating_system","A study of operating systems rocessing of l/O","dr/hossam",3,1);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("datastructure","Detailed study of data structures and their implementation","Dr/rana",3,1);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("surveing","Introduction to construction surveying","dr/lara",3,4);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("design","Study of the design/build process","dr/mohamed",3,4);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("Soils and Foundation","Origin, classification, and physical properties","dr/nada",3,4);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("Fluid Power Systems","Students will be introduced to the fundamentals of power","dr/ibrahim",4,2);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("Machinery","This course covers the concepts of rotating elec","dr/dina",4,2);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("CAD/CAM","This course covers Computer-Aided Design (CAD)","dr/alaa",3,2);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("Polymer Chemistry","Mechanisms and kinetics of polymerization reaction","dr/sara",3,3);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("Organic Syntheses","Organic Synthesis of compounds through one step","dr/amal",2,3);
INSERT INTO Courses (course_name, course_description, instructor_name, credit_hours, department_id) VALUES("Petrochemical tech","Ethylene and propylene production","dr/marwa",3,3);
 
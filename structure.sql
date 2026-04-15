create database school_management;
use school_management;
create table roles(
    id int  PRIMARY KEY AUTO_INCREMENT ,
    label varchar(225)

);
create table Users(
    id int  PRIMARY KEY AUTO_INCREMENT  ,
    firstName varchar(225) NOT null,
    lasttName varchar(225) NOT null,
    email varchar(225) NOT null UNIQUE,
    passwork varchar(225) NOT null UNIQUE,
    id_role int NOT null ,
    FOREIGN KEY(id_role) REFERENCES roles(id)
);
create table classes(
    id int  PRIMARY KEY AUTO_INCREMENT  ,
    name varchar(225),
    class_number int NOT null

);

create table students(
    id int  PRIMARY KEY AUTO_INCREMENT  ,
    dateofbirth date,
    student_number int NOT null,
    id_classe int,
    id_user int  ,
     FOREIGN KEY(id_classe) REFERENCES classes(id),
    FOREIGN KEY (id_user) REFERENCES users(id)


);
create table courses(
    id int PRIMARY KEY  AUTO_INCREMENT  ,
    title varchar(225) NOT null ,
    descriptions varchar(225) NOT null ,
    totale_hours decimal(6,3) NOT null ,
    id_prof  int NOT null,
    FOREIGN KEY (id_prof) REFERENCES users(id)

);

create table enrollments(
    id int  PRIMARY KEY AUTO_INCREMENT  ,
    enrolled_at date,
    status varchar(225) NOT null,
    id_student int, 
    FOREIGN KEY (id_student) REFERENCES students(id),
    id_cour int, 
    FOREIGN KEY(id_cour) REFERENCES courses(id)

);
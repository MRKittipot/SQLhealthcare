create schema healthcareappV2;
use healthcareappV2;

create table User (
	User_ID int,
    User_name varchar(255),
    User_sex varchar(6),
    User_address varchar(255),
    ID_QA int,
    primary key(User_ID),
    foreign key(ID_QA) references QA(ID_QA));
    
create table QA (
	ID_QA int,
    QA_topic varchar(255),
    QA_question text,
    QA_ans text,
    QA_date date,
    primary key(ID_QA));

create table writerQA (
	ID_QA int,
    User_ID int,
    Doctor_ID int,
    foreign key(ID_QA) references QA(ID_QA),
    foreign key(User_ID) references User(User_ID),
    foreign key(Doctor_ID) references Doctor(Doctor_ID));
    
create table Department(
	Dept_ID int,
    Dept_name varchar(255),
    primary key(Dept_ID));
    
create table Admin(
	Admin_ID int,
    Admin_name varchar(255),
    Dept_ID int,
    primary key(Admin_ID),
    foreign key(Dept_ID) references Department(Dept_ID));
    
create table Doctor(
	Doctor_ID int,
    Doctor_name varchar(255),
    Doctor_sex varchar(6),
    Dept_ID int,
    primary key(Doctor_ID),
    foreign key(Dept_ID) references Department(Dept_ID));
    
create table News(
	News_ID int,
    News_name varchar(255),
    News_article varchar(255),
    News_date date,
    Writer_ID int,
    primary key(News_ID),
    foreign key(Writer_ID) references Writer_article(Writer_ID));
    
create table Writer_article(
	Writer_ID int,
    Doctor_ID int,
    primary key(Writer_ID),
    foreign key(Doctor_ID) references Doctor(Doctor_ID));
    
create table Medicine(
	Medicine_ID int,
    Medicine_name varchar(255),
    Medicine_detail text,
    Medicine_date date,
    Writer_ID int,
    primary key(Medicine_ID),
    foreign key(Writer_ID) references Writer_article(Writer_ID));
create schema healthcareappplanb;
use healthcareappplanb;

drop database healthcareappplanb;

create table Doctor(
	Doctor_ID int not null auto_increment primary key,
    Doctor_name varchar(255),
    Doctor_sex varchar(6),
    Dept_ID int,
    foreign key(Dept_ID) references Department(Dept_ID));

create table Admin(
	Admin_ID int not null auto_increment primary key,
    Admin_name varchar(255),
    Dept_ID int,
    foreign key(Dept_ID) references Department(Dept_ID));

create table Department(
	Dept_ID int not null auto_increment primary key,
    Dept_name varchar(255));
    
create table News(
	News_ID int not null auto_increment primary key,
    News_name varchar(255), 
    News_article varchar(255),
    News_date date,
    Writer_ID int,
    foreign key(Writer_ID) references Writer_article(Writer_ID));
    
create table Writer_article(
	Writer_ID int not null auto_increment primary key,
    Doctor_ID int,
    foreign key(Doctor_ID) references Doctor(Doctor_ID));

create table Medicine(
	Medicine_ID int not null auto_increment primary key,
    Medicine_name varchar(255),
    Medicine_detail text,
    Medicine_date date,
    Writer_ID int,
    foreign key(Writer_ID) references Writer_article(Writer_ID));
    
    
create table PostNews(
	Post_News_ID int not null auto_increment primary key,
    Post_News_name varchar(255));
    
create table PostMedecine(
	Post_Medicine_ID int not null auto_increment primary key,
    Post_Medicine_name varchar(255));

    


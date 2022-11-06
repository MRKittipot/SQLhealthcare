create schema healthcareappplanb;

use healthcareappplanb;

create table Doctor(
	Doctor_ID int,
    Doctor_name varchar(255),
    Doctor_sex varchar(6),
    Dept_ID int,
    primary key(Doctor_ID),
    foreign key(Dept_ID) references Department(Dept_ID));

create table Admin(
	Admin_ID int,
    Admin_name varchar(255),
    Dept_ID int,
    primary key(Admin_ID),
    foreign key(Dept_ID) references Department(Dept_ID));

create table Department(
	Dept_ID int,
    Dept_name varchar(255),
    primary key(Dept_ID));
    
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


    
    

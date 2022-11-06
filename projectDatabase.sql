create schema HealthcareApp;
use HealthcareApp;

create table User
	(user_ID int,
	user_name varchar(25),
    user_sex varchar(6),
    user_symptom text,
    user_predictDisease text,
    primary key(user_ID)
	);
    
create table Doctor
	(doctor_ID int,
    doctor_name varchar(25),
	doctor_sex varchar(6),
    doctor_department varchar(25),
    primary key(doctor_ID)
    );
    
create table Admin 
	(admin_ID int,
    admin_name varchar(25),
    admin_department varchar(25),
    primary key(admin_ID)
    );

create table Disease
	(disease_ID int,
    disease_name varchar(25),
    disease_symptom text,
    disease_treatment text,
    primary key(disease_ID)
    );
    
create table News
	(news_ID int,
    news_name text,
    news_writer varchar(25),
    primary key(news_ID)
    );
    
create table Medicine
	(med_ID int,
    med_name varchar(25),
    med_prop text,
    primary key(med_ID)
    );
    
create table Category
	(category_ID int,
    category_name varchar(25),
    primary key(category_ID)
    
    );
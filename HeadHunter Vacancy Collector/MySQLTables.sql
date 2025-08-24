### Vacancies
create table headhunter.vacancies (
	id int auto_increment primary key,
    h_id bigint not null unique,
    title varchar(255),
    position varchar(100),
    publish_date date,
    category varchar(100),
    company_id int,
    location_id int,
    min_salary int,
    max_salary int,
    foreign key(company_id) references companies(id),
    foreign key(location_id) references locations(id)
    );


### Companies
create table headhunter.companies (
		id int auto_increment primary key,
        companies_id int not null unique,
        name varchar(100)
);


### Locations
create table headhunter.locations (
	id int auto_increment primary key,
    location_id int not null unique,
    country varchar(200),
    city varchar(200)
);


### Skills
create table headhunter.skills (
	id int auto_increment primary key,
    name varchar (255) 
);


### Vacancy_skill
create table headhunter.vacancy_skill (
    vacancy_id int not null,
    skill_id int not null,
    foreign key (vacancy_id) references headhunter.vacancies(id),
    foreign key (skill_id) references headhunter.skills(id)
);
	





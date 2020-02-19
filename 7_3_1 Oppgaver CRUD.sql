create table person (
	ID int auto_increment,
    Personnummer char(11) not null unique,
    Navn varchar(100) unique,
    EPost varchar(100) unique,
    primary key(ID)
);

insert into person (Personnummer, Navn, EPost)
/*values ('12345678901', 'Ola Normann', 'ola@normann.no');*/
/*values ('98765432109', 'Per Normann', 'per@normann.no');*/
values ('88765432109', 'Oytein Synnestvedt', 'oystein@gmail.no');

alter table person
add Foedselsdato date;

select *
from person;

update person 
set Foedselsdato = '1990-01-01'
where Navn = 'Per Normann';

update person 
set Foedselsdato = '1988-04-19'
where Navn = 'Oytein Synnestvedt';

create table epost (
	Addresse varchar(75) not null unique,
    Type varchar(50),
    Person_ID int not null,
    primary key(Addresse),
    CONSTRAINT fk FOREIGN KEY (Person_ID) REFERENCES Person(ID)
);

insert into epost(Addresse, Person_ID)
select EPost, ID
from person;

select *
from epost;

 



drop table abv_user_role if exists;
drop table abv_user if exists;
drop table abv_role if exists;

create table abv_user (
	user_id integer  generated by default as identity,
    username varchar(255) not null,
    password varchar(255) not null,
    salt varchar(255),
    primary key (user_id)
);

create table abv_role (
       role_id integer generated by default as identity,
        is_active boolean,
        description varchar(255),
        role_name varchar(255) not null,
        primary key (role_id)
);	
  
create table abv_user_role (
    user_id varchar(255) not null,
    role_id varchar(255) not null,
	Foreign Key (user_id) REFERENCES abv_user(user_id),
	Foreign Key (role_id) REFERENCES abv_role(role_id)
);
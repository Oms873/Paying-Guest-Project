create table listpgs(
    
    listpg_id int primary key auto_increment, 
    pg_name varchar(256) not null, 
    address varchar(500) not null, 
    No_of_rooms varchar(50) not null, 
    pgtype_id int not null, 
    image varchar(300), 
    constraint fk_listpgs_pgtypes foreign key(pgtype_id) references pgtypes(pgtype_id)
    
    );

     create table pgtypes(
        
        pgtype_id int primary key auto_increment, 
        type varchar(10) not null
        
        );

       insert into pgtypes(type) values('Boy'),('Girl'); 
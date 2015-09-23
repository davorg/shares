create table instrument_type (
  id integer primary key auto_increment,
  code char(10) not null,
  name varchar(255)
) ENGINE=InnoDB;

create table instrument (
  id integer primary key auto_increment,
  instrument_type_id integer not null,
  ticker char(10) not null,
  name varchar(255) not null,
  foreign key (instrument_type_id) references instrument_type(id)
) ENGINE=InnoDB;

create table price (
  id integer primary key auto_increment,
  instrument_id integer not null,
  date datetime not null,
  foreign key (instrument_id) references instrument(id)
) ENGINE=InnoDB;

create table trade (
  id integer primary key auto_increment,
  instrument_id integer not null,
  date datetime not null,
  number integer not null,
  price decimal(20, 5) not null,
  fee decimal (5,2) not null,
  foreign key (instrument_id) references instrument(id)
) ENGINE=InnoDB;

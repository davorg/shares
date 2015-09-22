create table share (
  id integer primary key auto_increment,
  ticker char(10) not null,
  name varchar(255) not null
) ENGINE=InnoDB;

create table trade (
  id integer primary key auto_increment,
  share_id integer not null,
  date datetime not null,
  number integer not null,
  price decimal(20, 5) not null,
  fee decimal (5,2) not null,
  foreign key (share_id) references share(id)
) ENGINE=InnoDB;

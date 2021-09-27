create table customer (
    id BINARY(16) primary key,
    name varchar(255) not null,
    contact_name varchar (255) not null,
    email varchar (255) not null,
    phone varchar (255) not null
);

insert into customer (id, name, contact_name, email, phone) values
(UUID_TO_BIN(UUID()), 'Coca Cola', 'John Doe', 'john.doe@cocacola.com', '202-555-0143'),
(UUID_TO_BIN(UUID()), 'Dell', 'Bob Frapples', 'bob.frapples@dell.com', '202-555-0180'),
(UUID_TO_BIN(UUID()), 'Apple', 'Barb Ackue', 'barb.ackue@apple.com', '202-555-0128'),
(UUID_TO_BIN(UUID()), 'Google', 'Sue Vaneer', 'sue.vaneer@google.com', '202-555-0174'),
(UUID_TO_BIN(UUID()), 'FedEx', 'Robin Banks', 'robin.banks@fedex.com', '202-555-0146'),
(UUID_TO_BIN(UUID()), 'Salesforce', 'Zack Lee', 'zack.lee@salesforce.com', '202-555-0122');
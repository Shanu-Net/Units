create database Units
Use Units
create table tbl_UNTMST
(
Untmst_id int identity(1,1),
Unit_name varchar(50),
Unit_group varchar(50),
Unit_desc varchar(100)
Constraint PK_UNTMST_Untmst_id Primary Key (Untmst_id)
)

create table tbl_GRPMST
(
Grpmst_id int identity(1,1),
Group_code varchar(20),
Group_name varchar(100),
Und_group varchar(100),
Group_desc varchar(100),
Untmst_id int,
Constraint PK_GRPMST_Grpmst_id Primary Key (Grpmst_id),
Constraint FK_UNTMST_GRPMST_Untmst_id Foreign Key (Untmst_id) References tbl_UNTMST (Untmst_id)
)

create table tbl_ITEMAS
(
Itemas_id int identity(1,1),
It_code varchar(20),
It_name varchar(100),
It_spec varchar(100),
Grpmst_id int,
It_desc varchar(100),
Untmst_id int,
Constraint PK_ITEMAS_Itemas_id Primary Key (Itemas_id),
Constraint FK_GRPMST_ITEMAS_Grpmst_id Foreign Key (Grpmst_id) References tbl_GRPMST (Grpmst_id),
Constraint FK_UNTMST_ITEMAS_Untmst_id Foreign Key (Untmst_id) References tbl_UNTMST (Untmst_id)
)

select * from tbl_UNTMST
select * from tbl_GRPMST
select * from tbl_ITEMAS
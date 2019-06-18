# create database concepts;
# use concepts;
# create table varCharVSChar(characters char(10), varcharacters varchar(10)); 
# varchar :- 0 to 65,335 characters. char :- 0 to 255
insert into varCharVSChar(characters, varcharacters) values ('ab', 'abcdef');
select * from varCharVSChar;

select length(characters), length(varcharacters) from varCharVSChar;
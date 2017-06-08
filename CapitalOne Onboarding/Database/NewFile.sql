drop table NF_Profiles;
drop sequence userid_seq;

create table NF_Profiles (userid int not null, firstname varchar(255), lastname varchar(255), work_location varchar(255), city varchar(255), state varchar(2), 
    school varchar(255), leader varchar(1));

create sequence userid_seq start with 1 increment by 1 nocache;

insert into NF_Profiles values (userid_seq.nextval, 'Clayton','Dittman', 'Plano','Corpus Christi','TX','Texas AandM University','Y');
insert into NF_Profiles values (userid_seq.nextval, 'Allyson','Walpole', 'Plano','Cypress', 'TX', 'University of Texas at Austin', 'N');
insert into NF_Profiles values (userid_seq.nextval, 'Parth', 'Patidar', 'McLean', 'Woodbridge', 'VA', 'University of Viriginia', 'Y');
insert into NF_Profiles values (userid_seq.nextval, 'Coty', 'Kurtz', 'Plano', 'Austin', 'TX', 'University of Texas at Austin', 'N');
insert into NF_Profiles values (userid_seq.nextval, 'Julia', 'Xu', 'Plano', 'Portage', 'MI', 'University of Chicago', 'N');

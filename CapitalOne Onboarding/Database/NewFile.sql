drop table NF_Profiles;
drop table NF_Announcements;
drop table NF_Events;
drop sequence userid_seq;
drop sequence ancid_seq;
drop sequence evid_seq;

create table NF_Profiles (userid int not null, firstname varchar(255), lastname varchar(255), work_location varchar(255), city varchar(255), state varchar(2), 
    school varchar(255), leader varchar(1));
create table NF_Announcements (ancid int not null, ancdate timestamp with time zone, message varchar(400));
create table NF_Events (evid int not null, evdate timestamp with time zone, details varchar(1000));

create sequence userid_seq start with 1 increment by 1 nocache;
create sequence ancid_seq start with 1 increment by 1 nocache;
create sequence evid_seq start with 1 increment by 1 nocache;

-- INSERT STATEMENTS FOR PROFILES
insert into NF_Profiles values (userid_seq.nextval, 'Clayton','Dittman', 'Plano','Corpus Christi','TX','Texas AandM University','Y');
insert into NF_Profiles values (userid_seq.nextval, 'Allyson','Walpole', 'Plano','Cypress', 'TX', 'University of Texas at Austin', 'N');
insert into NF_Profiles values (userid_seq.nextval, 'Parth', 'Patidar', 'McLean', 'Woodbridge', 'VA', 'University of Viriginia', 'Y');
insert into NF_Profiles values (userid_seq.nextval, 'Coty', 'Kurtz', 'Plano', 'Austin', 'TX', 'University of Texas at Austin', 'N');
insert into NF_Profiles values (userid_seq.nextval, 'Julia', 'Xu', 'Plano', 'Portage', 'MI', 'University of Chicago', 'N');

--INSERT STATEMENTS FOR ANNOUNCEMENTS
insert into NF_Announcements values (ancid_seq.nextval, SYSDATE, 'This is the first announcement ever! Welcome to our app.');
insert into NF_Announcements values (ancid_seq.nextval, to_timestamp_tz('2017-10-31 18:24 America/Chicago', 'yyyy-mm-dd hh24:mi tzr'), 'Time for some spooky fun. Join us for some trick or treating!');
insert into NF_Announcements values (ancid_seq.nextval, to_timestamp_tz('2017-06-08 08:00 America/New_York', 'yyyy-mm-dd hh24:mi tzr'), 
    'The event will be serving breakfast a bit late today. Sorry for the wait!');

--INSERT STATEMENTS FOR EVENTS
insert into NF_Events values (evid_seq.nextval, to_timestamp_tz('2017-06-09 08:00 America/New_York', 'yyyy-mm-dd hh24:mi tzr'), 
    'Busch Gardens Intern Event');
insert into NF_Events values (evid_seq.nextval, to_timestamp_tz('2017-07-04 13:00 America/Chicago', 'yyyy-mm-dd hh24:mi tzr'), 
    'Fourth of July Picnic Lunch');    
select firstname, lastname, work_location from NF_Profiles where leader='Y';

select firstname, lastname, work_location from NF_Profiles where work_location='Plano';

select work_location, count(userid) as "# of Interns" from NF_Profiles group by work_location;

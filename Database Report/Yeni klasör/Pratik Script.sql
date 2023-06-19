use pratik;

select * from employee where date_of_birth like "1969%" order by employee_name desc;

INSERT INTO employee(employee_id, employee_name, gender, pay_rate, state, date_of_birth, citizen_desc, hispanic_latino, race_desc, recruiment_source,engagement_survey, employee_satisfaction, special_project_counts, marital_status_id)
values(9099962123,"Mehmet Kadri Gofralılar", "M", 82, "TR", "1969-05-26", "TR Citizen", "No", "White", "Pay Per Click - Google", 4.78, 4, 2, 1);
- Install dependencies

pip install -r requirements.txt

- Create database and import the sql file "ers.sql" located at "EmployeeFinder-master\Database" (i used xampp server)

Database name - "ers"

- Start the web app

python main.py

- ADMIN LOGIN CREDENTIALS
Username - akshay
Password - akshay


** MODULES **

1- USER(EMPLOYEE)

Login: User can login his account using id and password
Update profile: User can update their profiles
Add Skills/Experience: User can add skills and experiences
Upload Resume: User can add their Resume
View Job Offers: User can view job offers
Send Feedback: User can send and view feedbacks

2- ADMIN(RECRUITER)

Login : Admin can login in his personal account using id and password
View and Delete candidates: Admin can view and delete candidates
Filter candidates: Admin can filter candidates as per skills
Send Job Offers: Admin can send job offers to candidates
View Feedback: System allows admin to view the users feedback
Resume Parser: Admin can parse resumes based on job description


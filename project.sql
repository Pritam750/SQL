Create Database Library_Management_Systems;
Show Databases;
CREATE TABLE members(Member_ID INT PRIMARY KEY  NOT NULL, Member_Name VARCHAR(255) NOT NULL, Contact INT, Address VARCHAR(255), Semester INT);

Insert into members(Member_ID, Member_name, Contact, Address, Semester) values(001, 'Bharti Shah',985414379, 'Gurgram',  5);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(002, 'Ankur Singh', 777555334, 'Delhi', 4);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(003, 'Pinky Gawlot', 912456689, 'Mumbai', 7);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(004, 'Aniket Kumar', 854612789, 'Indore', 8);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(005, 'Sahil Khan', 751236789, 'Patna', 2);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(006, 'Alfi Pathan', 854192795, 'Lucknow', 3);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(007, 'Prithvi Singh', 788961235, 'Chennai', 7);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(008, 'Neha Modi', 854679725, 'Hydrabad', 8);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(009, 'Dhruv Palli', 753466987, 'Panjim', 5);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(010, 'Sam Raj', 852467538, 'Kochi', 5);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(011, 'Raju Aford', 789451234, 'Vizag', 1);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(012, 'Alok Shrivas', 853163978, 'Raipur', 4);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(013, 'Jonhy Singh', 951254136, 'Gandhinagar', 8);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(014, 'David Beckharm', 985264780, 'Surat', 6);
insert into members(Member_ID, Member_Name, Contact, Address, Semester) values(015, 'Neymar sharma', 951064780, 'Kohima', 2);

CREATE TABLE books(Books_number INT Primary key , Book_name VARCHAR(255), Category VARCHAR(255), Book_author VARCHAR(255));
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(4654, 'Photonics', 'Science', 'Dilbar sahavb');
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(2356, 'Prisoners of Geography','Geography','Tim Marshall' );
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(3265,'The Indian Metropolis','Economic','Feroze Varun Gandhi');
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(5213,'CLASSICAL DYNAMICS','Science & Mathematics','PROF. MAHANANDA PATHAK');
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(6549,'CSIR NET Atomic & Molecular','Science & Mathematics','Shubham Rastogi');
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(7524,'Land of the Seven Rivers','Geography','Sanjeev Sanyal');
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(7746,'Sapiens','History','Yuval Noah Harari' );
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(8646,'Ikigai','Meditation','Héctor García');
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(9846,'Waves and Thermodynamics','Science & Mathematics','DC Pandey');
INSERT INTO books(Books_number, Book_name, Category, Book_author) VALUES(9975,'Penguin Classics The Beginning Of Infinity','Science & Mathematics','David Deutsch');


CREATE TABLE a_members(
Account_ID VARCHAR(255) PRIMARY KEY,
Members_ID INT(255),
Account_type VARCHAR(255), 
Account_status VARCHAR(255), FOREIGN KEY(Members_ID) REFERENCES members(Member_ID));

INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0123',008,'Premium','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0122',001,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0121',005,'Premium','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0124',0015,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0125',013,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0126',014,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0127',004,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0128',012,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0129',003,'Premium','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0130',011,'Premium','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0131',002,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0132',010,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0133',006,'Reglar','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0134',007,'Premium','Active');
INSERT INTO a_members(Account_ID, Members_ID, Account_type, Account_status) VALUES('A0135',009,'Reglar','Active');

UPDATE a_members set Account_status='Inactive' where Members_ID =('3');
UPDATE a_members set Account_status='Inactive' where Members_ID =('5');
UPDATE a_members set Account_status='Inactive' where Members_ID =('7');
UPDATE a_members set Account_status='Inactive' where Members_ID =('9');
UPDATE a_members set Account_status='Inactive' where Members_ID =('14');



CREATE TABLE book_issue(Member_ID Int Primary key , Books_number INT,issue_date DATE, last_date DATE , Due INT, return_date DATE NULL);

INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(001,2356, '2023-1-21','2023-2-21',0,'2023-2-19');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(002,'3265', '2023-1-12','2023-2-12',200,'2023-3-15');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(004,'8646','2023-2-21','2023-3-21',100,'2023-2-25');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(006,2356, '2023-1-17','2023-2-17',0,'2023-2-12');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(008,7746, '2023-1-3','2023-2-3',100,'2023-2-10');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(015,7524, '2023-2-6','2023-3-6',0,'2023-2-22');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(010,6549, '2023-2-18','2023-3-18',0,'2023-3-1');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(011,5213, '2023-2-4','2023-3-4',0,'2023-2-12');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(012,3265, '2023-1-5','2023-2-5',200,'2023-3-7');
INSERT INTO book_issue(Member_ID, Books_number, issue_date, last_date, Due, return_date) VALUES(013,9846, '2023-1-21','2023-2-21',0,'2023-2-5');

----------------\\ OPERATIONS\\--------------

SELECT * FROM members;

SELECT * FROM books;

SELECT * FROM a_members;

SELECT * FROM book_issue;

SELECT * FROM a_members WHERE Account_type='Premium' and Account_status='Active';

SELECT * FROM a_members WHERE Account_status='Active';

Select * from members LEFT JOIN a_members on members.Member_ID=a_members.Members_ID Where a_members.Account_type='Reglar' and a_members.Account_status='Active' ;

Select * from members LEFT JOIN a_members on members.Member_ID=a_members.Members_ID Where a_members.Account_type='Reglar' and a_members.Account_status='Active' Limit 2;

Select * from members LEFT JOIN book_issue on members.Member_ID=book_issue.Member_ID Where book_issue.Due>=100;

Select * from book_issue LEFT JOIN books on book_issue.Books_number=books.Books_number where books.Category='Science & Mathematics';

Select members.Contact, members.Member_name from members LEFT JOIN book_issue on members.Member_ID=book_issue.Member_ID Where book_issue.Due>=100;

SELECT COUNT(Account_status) AS Active_members FROM a_members WHERE Account_status='Active';

Select members.Member_ID, members.Member_name, book_issue.Books_number, book_issue.issue_date, book_issue.last_date from members LEFT JOIN book_issue on members.Member_ID=book_issue.Member_ID Where Semester=8;

SELECt Category, COUNT(*) AS Number from books Group by Category;

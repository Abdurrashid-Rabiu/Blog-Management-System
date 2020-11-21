# Blog-Management-System
A web-based Blog Management System developed using PHP and Bootstrap.
The system have a database called "bog".
The database have four tables namely:
"admin" Table: The admin table have three fields namely: id, username, hashed_password. Where id=1, username=Admin and hashed_password=admin$101Ar note: hashed_password is encrypted using md5 encryption algorithm.
"staff" Table: The staff table have five fields namely: id, admin_id, username, hashed_password and image note: hashed_password is encrypted using md5 encryption algorithm. Note: One staff is registered with username:Abdurrashid password:123456
"articles" Table: The articles table have six fields namely: id, staff_id, article_name, date, image and content.
"news" Table: The news table have six fields namely: id, staff_id, news_name, date, image and content.
The database will later be uploaded to this repository.
The Blog Management System is a simple PHP application that allow an admin(1) to register as many staffs as possible, thoe staffs (who are the article writers) in return can login to their accounts and manage Blog and News.
To manage Blogs, the staff can add new blog and can delete a particular blog.
To manage News, the staff can add new news and can delete a particular news.
Admin can also delete a particular staff.
The users visiting the website can see all the blogs and news the staff post.

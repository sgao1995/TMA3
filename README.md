Documentation for part 1:

Part 1 is a custom pc shopping web application that allows users to select parts they want and then display their selections to them.

Used knowledge and examples from the textbook, http://www.w3schools.com/, and http://www.tutorialspoint.com/php/index.htm to help implement part 1, 2, 3, and 4.

Used asp:Label for displaying the result and asp:RequiredFieldValidator to validate

Documentation for part 2:

Part 2 is a web application that uses cookies to track how many times a client has visited the page along with displaying client IP and time of client's computer.

Used HttpCookie to do this part, learned more about them on: https://msdn.microsoft.com/en-us/library/system.web.httpcookie(v=vs.110).aspx

Documentation for part 3:

Part 3 is a web application that uses ASP.NET Ajax to run a slideshow of images with urls that were put into a database.

Used ASP.NET's UpdatePanel and ScriptManager to do the AJAX. Used knowledge from: https://msdn.microsoft.com/en-us/library/bb399001.aspx

Used database to store info about slide pictures.

Using queries, info about the slide images are taken from the database and then used to display them. Ajax is used to allow user to change images without refreshing the page.

Documentation for part 4:

Part 4 is a web store similar to part 1, however users can now submit their orders which will then ask them to register or login. Previous orders can be checked by logging in and pressing the previous order tab.

Regular expressions from http://stackoverflow.com/questions/24115303/max-length-for-email-validation-with-regular-expression and http://regexlib.com/Search.aspx?k=street were used for validation.

When a user submits their info and either registers or login, their username is kept in a session and their form info will be passed into the database.

This information will then be displayed after submission and if they click on previous orders, it will show all their previous orders.

Interpretation of assignment question and requirements:

Part 1 is to create a custom pc store that lets users select parts that have prices, they can then submit their order and the website should show them their order and total price.

Part 2 is to create a web app that will display client's computer time, IP address, and also page view counts. This should be done using cookies.

Part 3 is to create a slideshow that uses AJAX so that image changes won't change the site. Mine has next and previous buttons to control which image to display. Slide info (img source, title, and description) should be stored in a database.

Part 4 is to expand on Part 1 and let users submit their orders and then register/login. Then users can check their previous orders. This should use a database to keep track of user info and their orders.

Design and implementation of assignment 3:

Part 1 is composed of an About.aspx, Index.aspx and their C# files. About.aspx just contains info about the site and instructions. Index.aspx is where the part ordering takes place. There are several buttons (the categories of parts) and once users click on one they have to then select an option from the radio button list that will pop out.

After choosing all parts, clicking the submit order button will display all of their choices as well as total price into a hidden label. This label is then revealed and the part choices are hidden.

Part 2 is composed of an Index.aspx file and its C# file, Index.aspx.cs. In it are three labels, one for IP Address, one for page count, and one for client computer time. HttpCookie is used to store info like the IP Address and page count.

Javascript is used instead of C# to get client computer time since server side scripts cannot get client time.

Part 3 is composed of an Index.aspx file and its C# file as well. I used UpdatePanel to implement the AJAX and the slideshow is user controlled. They have to press the next image button or previous image button. The slide infos are all stored on a database. The Table for the database is called SlideImg.

SlideImg Table is composed of ImgId (the image's id number), ImgSrc (the url of the image), ImgTitle (title of the image), and ImgDesc (Image description).

Using Linq to SQL queries, on load, and next/previous image button, info is fetched from the database and then image id is incremented in C# and the image is loaded/switched.

Part 4 is composed of an About.aspx, Index.aspx, orders.aspx, and previous.aspx along with their C# files.

Registration and Login are hidden until user submit their parts. If a user registers afterwards, their info is then stored to the database using queries and their username is stored into a session and then the web app will redirect them to their order summary.

If a user chooses to login, their login details are then matched with the database to verify and if successful, they will be redirected as well.

Every order is stored on the database, the user will be linked with their order because orders have userID foreign keys.

Also, login and registration have validations to check if the fields are correctly entered and that they are not empty.

The two database tables used for this are: OrderInfo (which stores orders) and UserInfo (which stores user login and address information).

OrderInfo is composed of OrderId, UserID (a foreign key, which is the primary key of UserInfo), and the computer parts (CPU, Mobo, Memory, Storage, VideoC, Case, OS, PSU, and tPrice (which is total price)).

UserInfo is composed of UserID, Username, Password, Email, Address, fname (first name), and lname (last name).

previousorder.aspx checks if a user is already logged in, if so then they are redirected to orders.aspx which will display their orders and if not then they are asked to log in.

Orders are displayed from newest to oldest in a ListView, which I learned of on https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.listview(v=vs.110).aspx

Guide for users:

Open the TMA3 folder using Visual Studios by going to File then Open and then Web Site...

After opening the TMA3 Website using Visual Studios, launch tma3a.htm.

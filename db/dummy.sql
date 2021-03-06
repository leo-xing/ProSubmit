USE pro_submit;
SET FOREIGN_KEY_CHECKS = 0;
/**
*	For this dummy data, users will log in as a partner
*	with their seneca email address and the password 'prosubmit'
*
DELETE FROM `partner`;
INSERT INTO `partner` VALUES 
(1,"Bell Canada","raburrell@myseneca.ca","Ramone","Burrell","Director Of IT","1-416-111-1111","1234 Bedrock Ave. M1F-2J5 Toronto Candada",SHA1("prosubmit"),current_timestamp),
(2,"Rogers Canada","capilkey@myseneca.ca","Chad","Pilkey","Directory Of IT","1-416-222-2222","1234 Bedrock Ave. M1F-2J5 Toronto Candada",SHA1("prosubmit"),current_timestamp),
("","Facebook","cxie8@myseneca.ca","Chaobo","Xie","Directory Of IT","1-416-222-2222","1234 Bedrock Ave. M1F-2J5 Toronto Candada",SHA1("prosubmit"),current_timestamp),
("","Twitter","xlian3@myseneca.ca","Xing","Liang","Directory Of IT","1-416-222-2222","1234 Bedrock Ave. M1F-2J5 Toronto Candada",SHA1("prosubmit"),current_timestamp);*/

DELETE FROM `semester`;
INSERT INTO `semester` VALUES
("20133","Fall 2013"),
("20141","Winter 2014"),
("20142","Summer 2014"),
("20143","Fall   2014"),
("20144","Winter 2015");

DELETE FROM `course`;
INSERT INTO `course` VALUES
("PRJ566","Project Planning and Management"),
("PRJ966","Extreme Project Planning and Management");

DELETE FROM `student`;
INSERT INTO `student` VALUES 
(1,NULL,"Ramone","Burrell","raburrell@myseneca.ca","raburrell",1),
(2,NULL,"Chad","Pilkey","capilkey@myseneca.ca","capilkey",1),
(3,NULL,"Chaobo","Xie","cxie8@myseneca.ca","cxie8",1),
(4,NULL,"Xian","Lian","raburrell@myseneca.ca","xlian3",1),

(5,NULL,"Antolio","Vivaldi","raburrell@myseneca.ca","alvivaldi",2),
(6,NULL,"Johannes Sebastian","Bach","capilkey@myseneca.ca","jsbach",2),
(7,NULL,"Ludwig Van","Beethoven","cxie8@myseneca.ca","lvbeethoven",2);

UPDATE `student` SET student_bio = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.";

DELETE FROM `group`;
INSERT INTO `group` VALUES
(1,"BrainStorm Factory",1,"WE DO STUFF","20133","PRJ566",1),
(2,"The Prolifics",2,"WE MADE A LOT OF GOOD MUSIC","20133","PRJ566",5);



DELETE FROM `project`;
INSERT INTO `project` VALUES
("",1,"Service Pro","Android application for managing services",current_timestamp,NULL,NULL,1,1),
("",2,"Rogers ServPro","IOS application for managing services",current_timestamp,NULL,NULL,1,1),
("",2,"Test Project 3","Descriotnion not provided",current_timestamp,NULL,NULL,2,2),
("",2,"Test Project 4","Descriotnion not provided",current_timestamp,NULL,NULL,1,3),
("",2,"Test Project 5","Descriotnion not provided",current_timestamp,NULL,NULL,3,4),
("",2,"Test Project 6","Descriotnion not provided",current_timestamp,NULL,NULL,4,6);


DELETE FROM `professor`;
INSERT INTO `professor` VALUES
(1,"raburrell_prof","Ramone","Burrell"),
(2,"capilkey_prof","Chad","Pilkey"),
(3,"cxie8_prof","Chaobo","Xie"),
(4,"xlian3_prof","Xian","Liang");

DELETE FROM `system_admin`;
INSERT INTO `system_admin` VALUES
("raburrell_admin"),
("capilkey_admin"),
("cxie8_admin"),
("xlian3_admin");


SET FOREIGN_KEY_CHECKS = 1;

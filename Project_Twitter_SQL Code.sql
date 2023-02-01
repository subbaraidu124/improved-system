Drop Database if exists Twitter;
Create Database Twitter;
Use Twitter;
show databases;
drop database Twitter;


Create Table Users(
username varchar(40) not null,
title varchar(5),
first_name varchar(25) not null,
middle_name varchar(25),
last_name varchar(25) not null,
email_id varchar(60) not null unique,
mobile_number varchar(20) not null,
primary key(username)
);

Create Table LoginDetails(
userid varchar(60) not null,
username varchar(40) not null unique,
password varchar(40) not null,
validator varchar(40),
email_id varchar(60) not null unique,
mobile_number varchar(20) not null,
foreign key(username) references Users(username)
);



Create Table Tweets(
post_id varchar(60) not null,
text_cont text not null,
posted_by varchar(40),
posted_on timestamp,
likes_count int default(0),
retweets_count int default(0),
comments_count int default(0),
retweeted_from varchar(40),
CONSTRAINT post_unique UNIQUE (post_id),
Foreign Key(posted_by) references Users(username) 
);

Create Table Comments(
comment_uid varchar(100) not null,
commented_post varchar(100) not null,
comment_text text not null,
commented_by varchar(100),
commented_on timestamp,
likes_count int default(0),
CONSTRAINT Comment_uni_key UNIQUE (comment_uid),
Foreign Key(commented_by) references Users(username),
Foreign Key(commented_post) references Tweets(post_id) 
);


create table Network(
uid varchar(60) not null primary key,
user_followed varchar(40) not null,
followedby varchar(40) not null,
followed_date datetime not null,
Foreign Key(user_followed) references Users(username),
Foreign Key(followedby) references Users(username)
);

show full tables;

##USERS TABLE DATA:

Insert into users values  ('testuser1','Mr.','test','m','User1','testuser1@gmail.com','9016486376');
Insert into users values  ('testuser2','Mr.','test','m','User2','testuser2@gmail.com','9016486320');
Insert into users values  ('testuser3','Mr.','test','m','User3','testuser3@gmail.com','9016486261');
Insert into users values  ('testuser4','Mr.','test','m','User4','testuser4@gmail.com','9016486347');
Insert into users values  ('testuser5','Mr.','test','m','User5','testuser5@gmail.com','9016486389');
Insert into users values  ('testuser6','Mr.','test','m','User6','testuser6@gmail.com','9016486349');
Insert into users values  ('testuser7','Mr.','test','m','User7','testuser7@gmail.com','9016486333');
Insert into users values  ('testuser8','Mr.','test','m','User8','testuser8@gmail.com','9016486447');
Insert into users values  ('testuser9','Mr.','test','m','User9','testuser9@gmail.com','9016486375');
Insert into users values  ('testuser10','Mr.','test','m','User10','testuser10@gmail.com','9016486262');
Insert into users values  ('testuser11','Mr.','test','m','User11','testuser11@gmail.com','9016486408');
Insert into users values  ('testuser12','Mr.','test','m','User12','testuser12@gmail.com','9016486404');
Insert into users values  ('testuser13','Mr.','test','m','User13','testuser13@gmail.com','9016486267');
Insert into users values  ('testuser14','Mr.','test','m','User14','testuser14@gmail.com','9016486421');
Insert into users values  ('testuser15','Mr.','test','m','User15','testuser15@gmail.com','9016486314');
Insert into users values  ('testuser16','Mr.','test','m','User16','testuser16@gmail.com','9016486332');
Insert into users values  ('testuser17','Mr.','test','m','User17','testuser17@gmail.com','9016486396');
Insert into users values  ('testuser18','Mr.','test','m','User18','testuser18@gmail.com','9016486414');
Insert into users values  ('testuser19','Mr.','test','m','User19','testuser19@gmail.com','9016486287');
Insert into users values  ('testuser20','Mr.','test','m','User20','testuser20@gmail.com','9016486426');
Insert into users values  ('testuser21','Mr.','test','m','User21','testuser21@gmail.com','9016486322');
Insert into users values  ('testuser22','Mr.','test','m','User22','testuser22@gmail.com','9016486377');
Insert into users values  ('testuser23','Mr.','test','m','User23','testuser23@gmail.com','9016486300');
Insert into users values  ('testuser24','Mr.','test','m','User24','testuser24@gmail.com','9016486396');
Insert into users values  ('testuser25','Mr.','test','m','User25','testuser25@gmail.com','9016486301');
Insert into users values  ('testuser26','Mr.','test','m','User26','testuser26@gmail.com','9016486305');
Insert into users values  ('testuser27','Mr.','test','m','User27','testuser27@gmail.com','9016486395');
Insert into users values  ('testuser28','Mr.','test','m','User28','testuser28@gmail.com','9016486300');
Insert into users values  ('testuser29','Mr.','test','m','User29','testuser29@gmail.com','9016486448');
Insert into users values  ('testuser30','Mr.','test','m','User30','testuser30@gmail.com','9016486351');
Insert into users values  ('testuser31','Mr.','test','m','User31','testuser31@gmail.com','9016486296');
Insert into users values  ('testuser32','Mr.','test','m','User32','testuser32@gmail.com','9016486308');
Insert into users values  ('testuser33','Mr.','test','m','User33','testuser33@gmail.com','9016486407');
Insert into users values  ('testuser34','Mr.','test','m','User34','testuser34@gmail.com','9016486423');
Insert into users values  ('testuser35','Mr.','test','m','User35','testuser35@gmail.com','9016486424');
Insert into users values  ('testuser36','Mr.','test','m','User36','testuser36@gmail.com','9016486450');
Insert into users values  ('testuser37','Mr.','test','m','User37','testuser37@gmail.com','9016486340');
Insert into users values  ('testuser38','Mr.','test','m','User38','testuser38@gmail.com','9016486319');
Insert into users values  ('testuser39','Mr.','test','m','User39','testuser39@gmail.com','9016486268');
Insert into users values  ('testuser40','Mr.','test','m','User40','testuser40@gmail.com','9016486396');
Insert into users values  ('testuser41','Mr.','test','m','User41','testuser41@gmail.com','9016486304');
Insert into users values  ('testuser42','Mr.','test','m','User42','testuser42@gmail.com','9016486351');
Insert into users values  ('testuser43','Mr.','test','m','User43','testuser43@gmail.com','9016486286');
Insert into users values  ('testuser44','Mr.','test','m','User44','testuser44@gmail.com','9016486344');
Insert into users values  ('testuser45','Mr.','test','m','User45','testuser45@gmail.com','9016486444');
Insert into users values  ('testuser46','Mr.','test','m','User46','testuser46@gmail.com','9016486339');
Insert into users values  ('testuser47','Mr.','test','m','User47','testuser47@gmail.com','9016486424');
Insert into users values  ('testuser48','Mr.','test','m','User48','testuser48@gmail.com','9016486337');
Insert into users values  ('testuser49','Mr.','test','m','User49','testuser49@gmail.com','9016486431');
Insert into users values  ('testuser50','Mr.','test','m','User50','testuser50@gmail.com','9016486387');
Insert into users values  ('testuser51','Mr.','test','m','User51','testuser51@gmail.com','9016486338');
Insert into users values  ('testuser52','Mr.','test','m','User52','testuser52@gmail.com','9016486380');
Insert into users values  ('testuser53','Mr.','test','m','User53','testuser53@gmail.com','9016486327');
Insert into users values  ('testuser54','Mr.','test','m','User54','testuser54@gmail.com','9016486286');
Insert into users values  ('testuser55','Mr.','test','m','User55','testuser55@gmail.com','9016486397');
Insert into users values  ('testuser56','Mr.','test','m','User56','testuser56@gmail.com','9016486391');
Insert into users values  ('testuser57','Mr.','test','m','User57','testuser57@gmail.com','9016486335');
Insert into users values  ('testuser58','Mr.','test','m','User58','testuser58@gmail.com','9016486406');
Insert into users values  ('testuser59','Mr.','test','m','User59','testuser59@gmail.com','9016486327');
Insert into users values  ('testuser60','Mr.','test','m','User60','testuser60@gmail.com','9016486269');
Insert into users values  ('testuser61','Mr.','test','m','User61','testuser61@gmail.com','9016486443');
Insert into users values  ('testuser62','Mr.','test','m','User62','testuser62@gmail.com','9016486258');
Insert into users values  ('testuser63','Mr.','test','m','User63','testuser63@gmail.com','9016486332');
Insert into users values  ('testuser64','Mr.','test','m','User64','testuser64@gmail.com','9016486256');
Insert into users values  ('testuser65','Mr.','test','m','User65','testuser65@gmail.com','9016486397');
Insert into users values  ('testuser66','Mr.','test','m','User66','testuser66@gmail.com','9016486421');
Insert into users values  ('testuser67','Mr.','test','m','User67','testuser67@gmail.com','9016486315');
Insert into users values  ('testuser68','Mr.','test','m','User68','testuser68@gmail.com','9016486449');
Insert into users values  ('testuser69','Mr.','test','m','User69','testuser69@gmail.com','9016486370');
Insert into users values  ('testuser70','Mr.','test','m','User70','testuser70@gmail.com','9016486269');
Insert into users values  ('testuser71','Mr.','test','m','User71','testuser71@gmail.com','9016486353');
Insert into users values  ('testuser72','Mr.','test','m','User72','testuser72@gmail.com','9016486352');
Insert into users values  ('testuser73','Mr.','test','m','User73','testuser73@gmail.com','9016486266');
Insert into users values  ('testuser74','Mr.','test','m','User74','testuser74@gmail.com','9016486359');
Insert into users values  ('testuser75','Mr.','test','m','User75','testuser75@gmail.com','9016486327');
Insert into users values  ('testuser76','Mr.','test','m','User76','testuser76@gmail.com','9016486275');
Insert into users values  ('testuser77','Mr.','test','m','User77','testuser77@gmail.com','9016486357');
Insert into users values  ('testuser78','Mr.','test','m','User78','testuser78@gmail.com','9016486276');
Insert into users values  ('testuser79','Mr.','test','m','User79','testuser79@gmail.com','9016486290');
Insert into users values  ('testuser80','Mr.','test','m','User80','testuser80@gmail.com','9016486266');
Insert into users values  ('testuser81','Mr.','test','m','User81','testuser81@gmail.com','9016486390');
Insert into users values  ('testuser82','Mr.','test','m','User82','testuser82@gmail.com','9016486333');
Insert into users values  ('testuser83','Mr.','test','m','User83','testuser83@gmail.com','9016486317');
Insert into users values  ('testuser84','Mr.','test','m','User84','testuser84@gmail.com','9016486397');
Insert into users values  ('testuser85','Mr.','test','m','User85','testuser85@gmail.com','9016486303');
Insert into users values  ('testuser86','Mr.','test','m','User86','testuser86@gmail.com','9016486251');
Insert into users values  ('testuser87','Mr.','test','m','User87','testuser87@gmail.com','9016486290');
Insert into users values  ('testuser88','Mr.','test','m','User88','testuser88@gmail.com','9016486277');
Insert into users values  ('testuser89','Mr.','test','m','User89','testuser89@gmail.com','9016486273');
Insert into users values  ('testuser90','Mr.','test','m','User90','testuser90@gmail.com','9016486320');
Insert into users values  ('testuser91','Mr.','test','m','User91','testuser91@gmail.com','9016486445');
Insert into users values  ('testuser92','Mr.','test','m','User92','testuser92@gmail.com','9016486406');
Insert into users values  ('testuser93','Mr.','test','m','User93','testuser93@gmail.com','9016486411');
Insert into users values  ('testuser94','Mr.','test','m','User94','testuser94@gmail.com','9016486363');
Insert into users values  ('testuser95','Mr.','test','m','User95','testuser95@gmail.com','9016486420');
Insert into users values  ('testuser96','Mr.','test','m','User96','testuser96@gmail.com','9016486449');
Insert into users values  ('testuser97','Mr.','test','m','User97','testuser97@gmail.com','9016486339');
Insert into users values  ('testuser98','Mr.','test','m','User98','testuser98@gmail.com','9016486425');
Insert into users values  ('testuser99','Mr.','test','m','User99','testuser99@gmail.com','9016486255');
Insert into users values  ('testuser100','Mr.','test','m','User100','testuser100@gmail.com','9016486383');


##LoginDetails Table data :
Insert into LoginDetails values ('c510c3a1-5750-4a38-9503-67ac2bf3d82d','testuser1','Password@246494','validator','testuser1@gmail.com','9016486376');
Insert into LoginDetails values ('04357d75-28c8-426a-9910-070158f22c2b','testuser2','Password@246494','validator','testuser2@gmail.com','9016486320');
Insert into LoginDetails values ('4f81559e-26b9-40b9-9b62-7d1adb52fded','testuser3','Password@246494','validator','testuser3@gmail.com','9016486261');
Insert into LoginDetails values ('dd3c1edc-a176-4464-a679-72af96d37842','testuser4','Password@246494','validator','testuser4@gmail.com','9016486347');
Insert into LoginDetails values ('a64893b4-e1c4-43dd-8111-f4613bc5932a','testuser5','Password@246494','validator','testuser5@gmail.com','9016486389');
Insert into LoginDetails values ('e4f63476-74c6-4b40-a0da-e389ec518be0','testuser6','Password@246494','validator','testuser6@gmail.com','9016486349');
Insert into LoginDetails values ('9151cc3d-ea3d-442a-b3db-6ec3dfcb5d69','testuser7','Password@246494','validator','testuser7@gmail.com','9016486333');
Insert into LoginDetails values ('414206c7-52e3-4d0a-a0b9-b22d4ca4fdca','testuser8','Password@246494','validator','testuser8@gmail.com','9016486447');
Insert into LoginDetails values ('96177120-7552-44f3-8fa0-008de8e055ed','testuser9','Password@246494','validator','testuser9@gmail.com','9016486375');
Insert into LoginDetails values ('6c540bfc-f90e-41ce-aefd-33de51343b3d','testuser10','Password@246494','validator','testuser10@gmail.com','9016486262');
Insert into LoginDetails values ('5bbac76b-8fdc-4096-9794-653cb24af868','testuser11','Password@246494','validator','testuser11@gmail.com','9016486408');
Insert into LoginDetails values ('293615a7-778c-4584-88f9-428a3f5c470a','testuser12','Password@246494','validator','testuser12@gmail.com','9016486404');
Insert into LoginDetails values ('abe9c938-0111-49e1-97c8-d93c9b9c55b4','testuser13','Password@246494','validator','testuser13@gmail.com','9016486267');
Insert into LoginDetails values ('98299077-4313-4b9c-99c4-965d1a49abfd','testuser14','Password@246494','validator','testuser14@gmail.com','9016486421');
Insert into LoginDetails values ('83e4bece-fa1d-4805-b811-9f62ab60be98','testuser15','Password@246494','validator','testuser15@gmail.com','9016486314');
Insert into LoginDetails values ('a5aa934c-a169-4f7a-848f-3d9d847e5120','testuser16','Password@246494','validator','testuser16@gmail.com','9016486332');
Insert into LoginDetails values ('7cceb4f6-c3ab-4006-967a-6e6353c95c1a','testuser17','Password@246494','validator','testuser17@gmail.com','9016486396');
Insert into LoginDetails values ('eddd6690-06b9-48f4-b81e-e6435ad524f7','testuser18','Password@246494','validator','testuser18@gmail.com','9016486414');
Insert into LoginDetails values ('9a87e5c1-1551-431d-991b-0b71db2c67f8','testuser19','Password@246494','validator','testuser19@gmail.com','9016486287');
Insert into LoginDetails values ('db3d0646-d50c-43da-b69e-f7aa956d78c4','testuser20','Password@246494','validator','testuser20@gmail.com','9016486426');
Insert into LoginDetails values ('2f383e65-3d49-4bd7-84bc-631594632e05','testuser21','Password@246494','validator','testuser21@gmail.com','9016486322');
Insert into LoginDetails values ('97934b53-3fa4-476a-92a8-4dc4182af281','testuser22','Password@246494','validator','testuser22@gmail.com','9016486377');
Insert into LoginDetails values ('0347c35b-0bc4-4dcb-960b-9d961d80f03f','testuser23','Password@246494','validator','testuser23@gmail.com','9016486300');
Insert into LoginDetails values ('52f0844c-22e7-4326-bd56-625890032b88','testuser24','Password@246494','validator','testuser24@gmail.com','9016486396');
Insert into LoginDetails values ('2d0d2ed9-cb79-4b4e-8319-095ea8683de0','testuser25','Password@246494','validator','testuser25@gmail.com','9016486301');
Insert into LoginDetails values ('be79d505-cff7-45b7-861d-d8d30d96e2c3','testuser26','Password@246494','validator','testuser26@gmail.com','9016486305');
Insert into LoginDetails values ('e1540a21-9b58-4ed9-825b-d95e761295a4','testuser27','Password@246494','validator','testuser27@gmail.com','9016486395');
Insert into LoginDetails values ('3ad046d4-4da4-4cd0-893c-edf4c08d2022','testuser28','Password@246494','validator','testuser28@gmail.com','9016486300');
Insert into LoginDetails values ('8ba9c93b-d99c-44e5-913f-49c0d66c6b82','testuser29','Password@246494','validator','testuser29@gmail.com','9016486448');
Insert into LoginDetails values ('2ec84b91-bfab-4319-a7da-b916e64b91ec','testuser30','Password@246494','validator','testuser30@gmail.com','9016486351');
Insert into LoginDetails values ('d6ab8940-dcc2-4cfb-aea6-c1dce7e5a3c6','testuser31','Password@246494','validator','testuser31@gmail.com','9016486296');
Insert into LoginDetails values ('9ea1334d-020b-4c8d-82ba-91e1d198cd02','testuser32','Password@246494','validator','testuser32@gmail.com','9016486308');
Insert into LoginDetails values ('73dfad25-c19b-41f5-880a-c8e480389a47','testuser33','Password@246494','validator','testuser33@gmail.com','9016486407');
Insert into LoginDetails values ('9b4da3f4-976e-4312-9844-5415069f75f5','testuser34','Password@246494','validator','testuser34@gmail.com','9016486423');
Insert into LoginDetails values ('e9becf98-8113-4404-83ae-beb29cf0394f','testuser35','Password@246494','validator','testuser35@gmail.com','9016486424');
Insert into LoginDetails values ('d9ec2c3c-dadb-4832-ae82-cdb50d7e6944','testuser36','Password@246494','validator','testuser36@gmail.com','9016486450');
Insert into LoginDetails values ('1fbb26de-9101-4faf-acf2-ceb0f8d0a00e','testuser37','Password@246494','validator','testuser37@gmail.com','9016486340');
Insert into LoginDetails values ('1a2989b1-046e-40f7-9941-e01f52d241f5','testuser38','Password@246494','validator','testuser38@gmail.com','9016486319');
Insert into LoginDetails values ('065b4b2b-d091-4504-ad66-667d0013c1bb','testuser39','Password@246494','validator','testuser39@gmail.com','9016486268');
Insert into LoginDetails values ('7b69d753-3682-4b6e-b9e2-94000a056448','testuser40','Password@246494','validator','testuser40@gmail.com','9016486396');
Insert into LoginDetails values ('3793f9ec-8ace-459e-83a4-bdf1596565d5','testuser41','Password@246494','validator','testuser41@gmail.com','9016486304');
Insert into LoginDetails values ('7b298185-7969-431d-b467-2dae49f28ae0','testuser42','Password@246494','validator','testuser42@gmail.com','9016486351');
Insert into LoginDetails values ('018fe603-8bcf-4267-98f1-167aa15f5a38','testuser43','Password@246494','validator','testuser43@gmail.com','9016486286');
Insert into LoginDetails values ('f8eaf48c-7c4d-4750-a93d-49dd506a6617','testuser44','Password@246494','validator','testuser44@gmail.com','9016486344');
Insert into LoginDetails values ('498e38ca-d859-4ba5-8e32-d4403edf0d58','testuser45','Password@246494','validator','testuser45@gmail.com','9016486444');
Insert into LoginDetails values ('263bec60-3bc7-4955-a8b7-a9bb8fa2a5a6','testuser46','Password@246494','validator','testuser46@gmail.com','9016486339');
Insert into LoginDetails values ('923c4d09-b21c-414b-a7b4-46e3399bb5e5','testuser47','Password@246494','validator','testuser47@gmail.com','9016486424');
Insert into LoginDetails values ('72a74823-4650-4dc0-8b1b-e26552a7e35a','testuser48','Password@246494','validator','testuser48@gmail.com','9016486337');
Insert into LoginDetails values ('99c689f2-2f21-4d52-b0d2-dc5a9e5c9158','testuser49','Password@246494','validator','testuser49@gmail.com','9016486431');
Insert into LoginDetails values ('1939b93d-e03d-4d7b-b44f-ef6a998f0cf0','testuser50','Password@246494','validator','testuser50@gmail.com','9016486387');
Insert into LoginDetails values ('8a0cbc30-c4f5-41ae-8ab4-06c18e5cf21f','testuser51','Password@246494','validator','testuser51@gmail.com','9016486338');
Insert into LoginDetails values ('75b5a776-29bf-4bef-88cb-fcec561e46eb','testuser52','Password@246494','validator','testuser52@gmail.com','9016486380');
Insert into LoginDetails values ('f3d1e103-994c-4480-892f-0456673ec2e4','testuser53','Password@246494','validator','testuser53@gmail.com','9016486327');
Insert into LoginDetails values ('0dc6e5a4-1c86-4a73-9b05-2745160448c1','testuser54','Password@246494','validator','testuser54@gmail.com','9016486286');
Insert into LoginDetails values ('84d69c39-9ead-4579-be3b-2f56c75214f9','testuser55','Password@246494','validator','testuser55@gmail.com','9016486397');
Insert into LoginDetails values ('39d9e365-34b4-4644-9a62-428726e52082','testuser56','Password@246494','validator','testuser56@gmail.com','9016486391');
Insert into LoginDetails values ('b10791fc-77a3-4b68-aef8-fc8433d107aa','testuser57','Password@246494','validator','testuser57@gmail.com','9016486335');
Insert into LoginDetails values ('12a5282f-288e-45a7-a4d8-441737630e89','testuser58','Password@246494','validator','testuser58@gmail.com','9016486406');
Insert into LoginDetails values ('e24b4bab-3ea9-463e-b100-62c485ebbf55','testuser59','Password@246494','validator','testuser59@gmail.com','9016486327');
Insert into LoginDetails values ('f0616d76-97a4-44db-be2a-33bea9d97f5d','testuser60','Password@246494','validator','testuser60@gmail.com','9016486269');
Insert into LoginDetails values ('9b70aa4b-8a67-4eda-9e4a-3c21e9351c0c','testuser61','Password@246494','validator','testuser61@gmail.com','9016486443');
Insert into LoginDetails values ('34b8273f-21ce-4d90-9418-a1b80457449b','testuser62','Password@246494','validator','testuser62@gmail.com','9016486258');
Insert into LoginDetails values ('ac62d45b-1e67-4519-af41-5c6e12664830','testuser63','Password@246494','validator','testuser63@gmail.com','9016486332');
Insert into LoginDetails values ('5a79f5b5-2c24-4755-ae8b-459a6043cf9e','testuser64','Password@246494','validator','testuser64@gmail.com','9016486256');
Insert into LoginDetails values ('de778882-6b88-4991-833a-ccfec5829b66','testuser65','Password@246494','validator','testuser65@gmail.com','9016486397');
Insert into LoginDetails values ('a8f5084e-2b7c-4f03-b2b4-578ebeb3d735','testuser66','Password@246494','validator','testuser66@gmail.com','9016486421');
Insert into LoginDetails values ('063acd1e-cfa5-4657-8835-97a2e4abecef','testuser67','Password@246494','validator','testuser67@gmail.com','9016486315');
Insert into LoginDetails values ('4fc9cce1-b930-4b4f-b427-4678ae09a862','testuser68','Password@246494','validator','testuser68@gmail.com','9016486449');
Insert into LoginDetails values ('4081eca8-4a8b-47bb-9ef3-fb5dc341027a','testuser69','Password@246494','validator','testuser69@gmail.com','9016486370');
Insert into LoginDetails values ('da4cd589-cec6-4bbe-98d2-369263baff86','testuser70','Password@246494','validator','testuser70@gmail.com','9016486269');
Insert into LoginDetails values ('343a335b-efd8-47da-b4fb-b93323f8ec0e','testuser71','Password@246494','validator','testuser71@gmail.com','9016486353');
Insert into LoginDetails values ('20e1d78a-b1ca-48bc-a9c7-57f0267d0398','testuser72','Password@246494','validator','testuser72@gmail.com','9016486352');
Insert into LoginDetails values ('95556b7a-c8e4-407f-9e27-3fc7859ccf78','testuser73','Password@246494','validator','testuser73@gmail.com','9016486266');
Insert into LoginDetails values ('847314b1-1ca5-4583-ab2d-e40c79a53d94','testuser74','Password@246494','validator','testuser74@gmail.com','9016486359');
Insert into LoginDetails values ('c26fe3d9-211d-4609-80ae-c1139bc43b07','testuser75','Password@246494','validator','testuser75@gmail.com','9016486327');
Insert into LoginDetails values ('3ae5196a-3ee2-44ad-8c76-7c8cf4b3ccd9','testuser76','Password@246494','validator','testuser76@gmail.com','9016486275');
Insert into LoginDetails values ('39626d8c-715b-49dc-b9b0-de085e7e0bb1','testuser77','Password@246494','validator','testuser77@gmail.com','9016486357');
Insert into LoginDetails values ('f47493ff-fc3b-46e1-8d4f-63d5fa590f45','testuser78','Password@246494','validator','testuser78@gmail.com','9016486276');
Insert into LoginDetails values ('f55f8ad2-928e-4612-b6c8-3c8a5ad38379','testuser79','Password@246494','validator','testuser79@gmail.com','9016486290');
Insert into LoginDetails values ('78709131-261a-432a-824d-add341ac1a1e','testuser80','Password@246494','validator','testuser80@gmail.com','9016486266');
Insert into LoginDetails values ('660ac614-08a6-4424-84ea-9169eb5fe2ff','testuser81','Password@246494','validator','testuser81@gmail.com','9016486390');
Insert into LoginDetails values ('b3c42176-da9e-40ac-8bca-b84696405303','testuser82','Password@246494','validator','testuser82@gmail.com','9016486333');
Insert into LoginDetails values ('0a0392dd-31d6-471d-99b3-2c636a49ec50','testuser83','Password@246494','validator','testuser83@gmail.com','9016486317');
Insert into LoginDetails values ('32faf144-adb4-4c02-b64a-ff4bb7073ee6','testuser84','Password@246494','validator','testuser84@gmail.com','9016486397');
Insert into LoginDetails values ('cac29fe8-e960-474a-82e2-4eb71b7c0e38','testuser85','Password@246494','validator','testuser85@gmail.com','9016486303');
Insert into LoginDetails values ('72ee736e-a90b-48d1-9353-2699c498b82d','testuser86','Password@246494','validator','testuser86@gmail.com','9016486251');
Insert into LoginDetails values ('0eb791d3-efaa-4ab2-a5dc-eb637f7b514c','testuser87','Password@246494','validator','testuser87@gmail.com','9016486290');
Insert into LoginDetails values ('fe3b377a-d4d2-462e-8fe3-458dd5c60d1e','testuser88','Password@246494','validator','testuser88@gmail.com','9016486277');
Insert into LoginDetails values ('700a77ba-d1dd-489d-bf1a-9fd92adade7d','testuser89','Password@246494','validator','testuser89@gmail.com','9016486273');
Insert into LoginDetails values ('50769fb2-0f93-4bfc-af4f-d80df40a9583','testuser90','Password@246494','validator','testuser90@gmail.com','9016486320');
Insert into LoginDetails values ('e255ffd4-b8ea-4cce-87e2-e433a0b364d1','testuser91','Password@246494','validator','testuser91@gmail.com','9016486445');
Insert into LoginDetails values ('12560b78-2324-498f-b4e3-ca8c7924c09a','testuser92','Password@246494','validator','testuser92@gmail.com','9016486406');
Insert into LoginDetails values ('34a4d81d-e6a0-479c-805d-2d4f185361c1','testuser93','Password@246494','validator','testuser93@gmail.com','9016486411');
Insert into LoginDetails values ('e8a37c3c-20bf-457c-80ae-5a4c8b2e710a','testuser94','Password@246494','validator','testuser94@gmail.com','9016486363');
Insert into LoginDetails values ('b7a46430-b678-40c3-84ae-f8ed7f8a568a','testuser95','Password@246494','validator','testuser95@gmail.com','9016486420');
Insert into LoginDetails values ('d6f61fe3-1242-4b6a-b32d-801db2389c88','testuser96','Password@246494','validator','testuser96@gmail.com','9016486449');
Insert into LoginDetails values ('342e3cb0-1692-4279-848f-e66061774c9f','testuser97','Password@246494','validator','testuser97@gmail.com','9016486339');
Insert into LoginDetails values ('1445225e-a57c-4bdc-b914-b9dd03a3b7d6','testuser98','Password@246494','validator','testuser98@gmail.com','9016486425');
Insert into LoginDetails values ('7301ac09-f67b-4b46-8745-c11166dceaa4','testuser99','Password@246494','validator','testuser99@gmail.com','9016486255');
Insert into LoginDetails values ('c3e969d8-e843-49a5-9865-2f9a045b02bc','testuser100','Password@246494','validator','testuser100@gmail.com','9016486383');



##Tweets Table data :

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('aacbd101-e955-4edc-b06f-198d7aee0a30','Greetings from testuser1','testuser1','2022-07-24 05:30:35.992504',23,9,14);
INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('61cc22f1-1ce8-4fe5-ac80-51c6f4e82039','Greetings from testuser2','testuser2','2022-07-24 05:30:35.992505',24,19,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('5b79d663-35f1-46f8-9850-f635ff57d04d','Greetings from testuser3','testuser3','2022-07-24 05:30:35.992506',21,2,9);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('a7e5dfeb-82d5-4db0-9ec9-66c6bcafc5d4','Greetings from testuser4','testuser4','2022-07-24 05:30:35.992507',23,9,1);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('07d6d044-28a3-4745-9271-9b88d3402e65','Greetings from testuser5','testuser5','2022-07-24 05:30:35.992508',12,21,9);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('cc7e3260-e1ea-4475-afd0-4fa1f9d5260b','Greetings from testuser6','testuser6','2022-07-24 05:30:35.992509',25,14,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('d96b7db9-fa3f-41bd-b1ab-432b6ad0e631','Greetings from testuser7','testuser7','2022-07-24 05:30:35.992510',12,1,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('f458c112-f273-4909-91aa-b5b425918c06','Greetings from testuser8','testuser8','2022-07-24 05:30:35.992511',17,14,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('5b608313-f4fb-4584-bde8-0e614b928803','Greetings from testuser9','testuser9','2022-07-24 05:30:35.992512',18,20,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('8c7b3058-11fc-4caa-a64a-b1fbf7e36cf9','Greetings from testuser10','testuser10','2022-07-24 05:30:35.992513',1,23,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('12520c8e-2d9e-4638-9356-b2d758d3101a','Greetings from testuser11','testuser11','2022-07-24 05:30:35.992514',10,16,9);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('7a229771-03b6-4765-a77f-769ad3d957c8','Greetings from testuser12','testuser12','2022-07-24 05:30:35.992515',24,12,8);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('f6c23104-e020-46fe-94b8-3243af74e1d5','Greetings from testuser13','testuser13','2022-07-24 05:30:35.992516',2,3,13);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('9cc048e3-7df2-4c12-aef8-a8a515ccbe25','Greetings from testuser14','testuser14','2022-07-24 05:30:35.992517',25,6,7);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('a499e3f9-3d80-4322-afad-57c272f68ea8','Greetings from testuser15','testuser15','2022-07-24 05:30:35.992518',25,6,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('bbbc54ad-21c5-4759-92a7-a27cefd49ea3','Greetings from testuser16','testuser16','2022-07-24 05:30:35.992519',11,3,0);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('3c59189a-9d18-4bc8-bb15-afdf7801bd43','Greetings from testuser17','testuser17','2022-07-24 05:30:35.992520',9,14,0);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('e127b577-4c9f-45d7-9f0d-6df1dd937a2d','Greetings from testuser18','testuser18','2022-07-24 05:30:35.992521',4,10,10);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('d61353e4-4f23-4cd6-8dfd-52ed9655cc5d','Greetings from testuser19','testuser19','2022-07-24 05:30:35.992522',14,21,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('59145ab9-5637-474c-b15e-b23261787ec3','Greetings from testuser20','testuser20','2022-07-24 05:30:35.992523',28,5,0);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('aa190ae0-249e-445e-a4b3-008eea5a31f0','Greetings from testuser21','testuser21','2022-07-24 05:30:35.992524',13,13,8);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('e8fcdc43-a834-4991-8c51-6ff79b20080e','Greetings from testuser22','testuser22','2022-07-24 05:30:35.992525',25,20,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('e069cfc4-1ec2-455e-9589-c2da631ed2bf','Greetings from testuser23','testuser23','2022-07-24 05:30:35.992526',27,24,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('5cb75a75-70c1-4205-8880-b6fb81d0fb21','Greetings from testuser24','testuser24','2022-07-24 05:30:35.992527',18,1,1);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('ebd4358f-2296-4993-8bf5-266d6d7ace03','Greetings from testuser25','testuser25','2022-07-24 05:30:35.992528',28,15,11);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('25e4ef52-c3f3-4e01-bef3-c600502b241a','Greetings from testuser26','testuser26','2022-07-24 05:30:35.992529',13,11,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('132c8f74-f8e8-42d8-a16a-0a129e6420f8','Greetings from testuser27','testuser27','2022-07-24 05:30:35.992530',6,3,7);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('42e6af33-8f32-4ac6-b2d8-3bc12a53eab5','Greetings from testuser28','testuser28','2022-07-24 05:30:35.992531',7,4,13);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('dd396f76-4327-40e0-b400-a6ab4f3912bc','Greetings from testuser29','testuser29','2022-07-24 05:30:35.992532',5,24,6);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('1cc3fd09-a12c-4968-a384-7697526398ad','Greetings from testuser30','testuser30','2022-07-24 05:30:35.992533',11,0,2);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('ff9247f3-3d33-45f3-a32e-69a731f4e69f','Greetings from testuser31','testuser31','2022-07-24 05:30:35.992534',11,6,7);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('d0d34a86-4bba-4c47-8a71-17af9fff348d','Greetings from testuser32','testuser32','2022-07-24 05:30:35.992535',21,14,8);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('f6332cb6-ded2-4565-a56a-0431452eadd7','Greetings from testuser33','testuser33','2022-07-24 05:30:35.992536',10,2,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('9aa9ef6f-be4f-4592-91da-f5e61f33b396','Greetings from testuser34','testuser34','2022-07-24 05:30:35.992537',0,18,14);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('c5fe36a4-3102-455d-a132-5b05ea51d118','Greetings from testuser35','testuser35','2022-07-24 05:30:35.992538',15,23,1);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('ab97bb08-7563-4eab-aa31-76780692dfd5','Greetings from testuser36','testuser36','2022-07-24 05:30:35.992539',22,8,8);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('7379f09f-8ad4-4da3-b632-b35b0fdab8f9','Greetings from testuser37','testuser37','2022-07-24 05:30:35.992540',24,7,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('dda85e73-bbc7-4b77-8153-fda35cd8bf81','Greetings from testuser38','testuser38','2022-07-24 05:30:35.992541',28,4,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('daa24819-702f-4a35-b572-80f573bec1fa','Greetings from testuser39','testuser39','2022-07-24 05:30:35.992542',11,19,0);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('57a1d79a-d1a8-47ad-a467-a98ae85663d0','Greetings from testuser40','testuser40','2022-07-24 05:30:35.992543',2,10,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('dbb8eb2d-07b0-4881-9aa3-a259e16696c5','Greetings from testuser41','testuser41','2022-07-24 05:30:35.992544',15,11,6);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('5c9c4831-dcb4-4e84-b294-50d6613de8a8','Greetings from testuser42','testuser42','2022-07-24 05:30:35.992545',8,1,2);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('fadb5849-5f72-47dd-828b-ea9e747f354e','Greetings from testuser43','testuser43','2022-07-24 05:30:35.992546',13,20,13);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('e886258d-dc6d-4af7-99e0-19935885e9c2','Greetings from testuser44','testuser44','2022-07-24 05:30:35.992547',14,11,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('1ce63ab8-927a-47b5-ad7f-c1a1cf0ffc0e','Greetings from testuser45','testuser45','2022-07-24 05:30:35.992548',10,9,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('0ebb2376-2d94-4807-89e8-ca66916062e4','Greetings from testuser46','testuser46','2022-07-24 05:30:35.992549',11,15,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('db9d88ee-92db-49d6-888b-2e932bf2acae','Greetings from testuser47','testuser47','2022-07-24 05:30:35.992550',21,0,2);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('50f342e3-f390-4d59-90ae-ffe4ff2df5b7','Greetings from testuser48','testuser48','2022-07-24 05:30:35.992551',2,15,2);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('a58b87f8-2e5a-4cf5-a052-08c68e97eb67','Greetings from testuser49','testuser49','2022-07-24 05:30:35.992552',1,18,9);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('8e1c1604-e092-4cf6-8312-04e28046db08','Greetings from testuser50','testuser50','2022-07-24 05:30:35.992553',3,10,6);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('d2603f20-44b1-4922-bf7e-8fe1cd0f09ad','Greetings from testuser51','testuser51','2022-07-24 05:30:35.992554',11,9,8);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('c8dadec6-0c41-41e2-9bb7-f78593415c1b','Greetings from testuser52','testuser52','2022-07-24 05:30:35.992555',4,2,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('866ec98e-4509-4476-a0d5-f77fe94ec9d7','Greetings from testuser53','testuser53','2022-07-24 05:30:35.992556',16,23,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('a38348dc-d24a-4a16-833b-1f8408eccd47','Greetings from testuser54','testuser54','2022-07-24 05:30:35.992557',3,0,7);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('12246498-13f1-4f01-84a8-00f9b45c64e6','Greetings from testuser55','testuser55','2022-07-24 05:30:35.992558',22,6,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('41e23832-9ebf-4373-8073-542bba6eb972','Greetings from testuser56','testuser56','2022-07-24 05:30:35.992559',1,17,9);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('b0be6ac5-eaeb-4b91-b8e7-d8654ba01503','Greetings from testuser57','testuser57','2022-07-24 05:30:35.992560',12,5,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('0e52be2f-a507-42d5-9123-0070b1ea4fd7','Greetings from testuser58','testuser58','2022-07-24 05:30:35.992561',26,9,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('573d5c87-2fc3-4231-83ac-bf6741afc116','Greetings from testuser59','testuser59','2022-07-24 05:30:35.992562',21,13,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('e00a8f8a-75c9-49b3-bd77-cbf55a24adf8','Greetings from testuser60','testuser60','2022-07-24 05:30:35.992563',18,7,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('ac2c1e70-110f-4e99-b662-278b43e119ac','Greetings from testuser61','testuser61','2022-07-24 05:30:35.992564',25,22,1);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('9cd326a3-bae6-4129-95e3-81b8b1d60d94','Greetings from testuser62','testuser62','2022-07-24 05:30:35.992565',5,15,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('cd6d8e4e-2d3a-4f41-a75b-d68146aa558f','Greetings from testuser63','testuser63','2022-07-24 05:30:35.992566',12,20,9);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('c82dca7a-2a81-4669-bec4-0c56c7fed834','Greetings from testuser64','testuser64','2022-07-24 05:30:35.992567',7,16,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('9d40dd91-b30f-4d99-b346-bba4b8fda061','Greetings from testuser65','testuser65','2022-07-24 05:30:35.992568',21,18,14);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('0e5b2e43-52a3-4d21-ab95-bd3f894d35c4','Greetings from testuser66','testuser66','2022-07-24 05:30:35.992569',10,15,6);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('f31dbead-0ba7-449d-ab35-f5221273e904','Greetings from testuser67','testuser67','2022-07-24 05:30:35.992570',28,17,14);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('50c675b6-6947-46b5-8b54-a7b1f33910f6','Greetings from testuser68','testuser68','2022-07-24 05:30:35.992571',5,20,10);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('07764c50-b7a2-4419-ba31-6164a91941d8','Greetings from testuser69','testuser69','2022-07-24 05:30:35.992572',0,13,13);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('208d73f4-2c96-438a-b75c-1beba604bcb0','Greetings from testuser70','testuser70','2022-07-24 05:30:35.992573',8,7,1);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('be060bdb-2156-44da-9dad-f6888deeaf80','Greetings from testuser71','testuser71','2022-07-24 05:30:35.992574',14,3,10);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('77a9f6e5-b63a-4142-9cf7-b57ee1145488','Greetings from testuser72','testuser72','2022-07-24 05:30:35.992575',7,19,6);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('4dc34c68-9f3d-4094-9da9-b1a1613888cb','Greetings from testuser73','testuser73','2022-07-24 05:30:35.992576',28,7,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('c4995b61-bad0-4fc0-84e1-8fd27c023319','Greetings from testuser74','testuser74','2022-07-24 05:30:35.992577',22,15,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('6c224bfb-9170-48c3-9bcf-2373ece979f4','Greetings from testuser75','testuser75','2022-07-24 05:30:35.992578',7,18,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('3d932a10-0684-46fd-9d12-9eb7c33a10e7','Greetings from testuser76','testuser76','2022-07-24 05:30:35.992579',16,19,7);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('e006818d-9b31-4574-bf5e-eeb6ea631330','Greetings from testuser77','testuser77','2022-07-24 05:30:35.992580',12,4,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('8e7a5ce8-fa00-4ca5-af31-537e7e7b295e','Greetings from testuser78','testuser78','2022-07-24 05:30:35.992581',12,17,9);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('811aeb13-1288-4467-985b-1c67b1205b8e','Greetings from testuser79','testuser79','2022-07-24 05:30:35.992582',13,6,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('4f9adda6-fa09-481f-bd1b-e7ef48d6ebc7','Greetings from testuser80','testuser80','2022-07-24 05:30:35.992583',1,15,7);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('48b108be-6d1b-4bb3-808e-85656953e690','Greetings from testuser81','testuser81','2022-07-24 05:30:35.992584',24,4,2);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('3c9729e4-50f3-4094-be1f-8657d3bab5d9','Greetings from testuser82','testuser82','2022-07-24 05:30:35.992585',1,15,10);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('fe6ec26d-af24-4b1d-a0e5-b9f5080a9fb4','Greetings from testuser83','testuser83','2022-07-24 05:30:35.992586',11,9,2);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('cf77d996-c02a-44d5-9d95-1e9be5815439','Greetings from testuser84','testuser84','2022-07-24 05:30:35.992587',16,13,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('7ed3b926-e807-43d5-9aae-f6602276b15b','Greetings from testuser85','testuser85','2022-07-24 05:30:35.992588',11,14,12);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('9a42c6a4-9760-480e-9ed4-7e6dc3dc6dab','Greetings from testuser86','testuser86','2022-07-24 05:30:35.992589',16,17,9);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('dac63605-7555-4f72-be8f-a0c4f17de623','Greetings from testuser87','testuser87','2022-07-24 05:30:35.992590',22,16,3);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('abf5a070-2d1f-470b-ac03-26ae34012605','Greetings from testuser88','testuser88','2022-07-24 05:30:35.992591',19,24,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('cc7d0396-b47b-47cb-8404-a93ec8da2fa3','Greetings from testuser89','testuser89','2022-07-24 05:30:35.992592',13,5,10);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('aa5adc5a-8b21-4238-bf99-aff10c9f6782','Greetings from testuser90','testuser90','2022-07-24 05:30:35.992593',16,22,4);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('158d18af-44a8-4ce7-96e8-8cab2cdbedbf','Greetings from testuser91','testuser91','2022-07-24 05:30:35.992594',0,6,13);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('c5f7d50c-e151-4496-8797-65eb760288fe','Greetings from testuser92','testuser92','2022-07-24 05:30:35.992595',22,0,10);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('c6974df5-981a-404d-a9e9-7aadd2b4d980','Greetings from testuser93','testuser93','2022-07-24 05:30:35.992596',8,21,5);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('fe085416-d23b-414a-bcbd-baab87d0bdab','Greetings from testuser94','testuser94','2022-07-24 05:30:35.992597',2,10,7);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('acae9dc8-af7d-4af4-8b29-525fd675c7d1','Greetings from testuser95','testuser95','2022-07-24 05:30:35.992598',11,13,10);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('dbba542f-fbd8-426d-91ee-fb3035e527bd','Greetings from testuser96','testuser96','2022-07-24 05:30:35.992599',7,21,8);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('62d73ed4-1a18-4000-b5bc-d6881c858d32','Greetings from testuser97','testuser97','2022-07-24 05:30:35.992600',7,5,6);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('4f03e8ca-a604-43af-8435-ddd4ded42513','Greetings from testuser98','testuser98','2022-07-24 05:30:35.992601',28,21,8);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('a8686036-1c70-436c-9115-a5d08f0c633d','Greetings from testuser99','testuser99','2022-07-24 05:30:35.992602',16,5,2);

INSERT INTO  Tweets
(`post_id`,
`text_cont`,`posted_by`,
`posted_on`,
`likes_count`,
`retweets_count`,
`comments_count`)  values ('23dd18de-5742-4c1c-a2c6-d8ce7f7ce1a3','Greetings from testuser100','testuser100','2022-07-24 05:30:35.992603',11,6,2);

INSERT INTO Tweets
(`post_id`,`text_cont`,`posted_by`,`posted_on`,`likes_count`,`retweets_count`,`comments_count`, `retweeted_from`)  
values 
('118f16dd-5cd5-40ef-afcb-5e3392afbcdc','Another Greetings from testuser90','testuser91','2022-07-22 07:54:27.992497',6,1,2, 'testuser90');

INSERT INTO Tweets
(`post_id`,`text_cont`,`posted_by`,`posted_on`,`likes_count`,`retweets_count`,`comments_count`, `retweeted_from`)  
values 
('117f16dd-6ce5-40ef-afcb-5e3382afbcdc','Another Greetings from testuser50','testuser71','2022-07-22 07:54:27.992497',5,0,4, 'testuser50');

INSERT INTO Tweets
(`post_id`,`text_cont`,`posted_by`,`posted_on`,`likes_count`,`retweets_count`,`comments_count`, `retweeted_from`)  
values 
('129f16dd-3dd5-30ef-bfdb-9e2292acbcdc','Another Greetings from testuser20','testuser31','2022-07-22 07:54:27.992497',3,2,0, 'testuser20');



##Network Table :

Insert into network values('74304e89-988a-4666-a308-99c1279f089c','testuser1','testuser75','2022-07-31 22:25:52');
Insert into network values('bd96e9bd-1c15-46bb-b2ec-eb6f249dc95a','testuser2','testuser92','2022-07-31 22:25:52');
Insert into network values('2c36e70e-108c-4d0b-a887-4106be07f1fb','testuser3','testuser57','2022-07-31 22:25:52');
Insert into network values('7f4a9992-7e08-4a5e-af48-72bc0557bed9','testuser4','testuser14','2022-07-31 22:25:52');
Insert into network values('4b1dbe75-7fd1-4818-b601-c32dcfd1dcdb','testuser5','testuser70','2022-07-31 22:25:52');
Insert into network values('614e264e-4944-467e-b665-7dfb35e73305','testuser6','testuser64','2022-07-31 22:25:52');
Insert into network values('d3a8f720-7af3-4df5-8637-452833bd14bd','testuser7','testuser32','2022-07-31 22:25:52');
Insert into network values('2b7adb86-76fc-4612-be53-cd37643fe32e','testuser8','testuser33','2022-07-31 22:25:52');
Insert into network values('7578541c-1d98-4afa-9f27-ec4eeee61868','testuser9','testuser88','2022-07-31 22:25:52');
Insert into network values('fa65295c-bbcb-45b6-8b20-ad80113cb38a','testuser10','testuser33','2022-07-31 22:25:52');
Insert into network values('360348ba-e45e-4352-8998-e5f1dffe3362','testuser11','testuser65','2022-07-31 22:25:52');
Insert into network values('14d1f583-44a1-45fb-bc6b-ee4de4561a62','testuser12','testuser56','2022-07-31 22:25:52');
Insert into network values('6ed31750-37d7-4b83-9b5f-7aaa5bb25fe3','testuser13','testuser31','2022-07-31 22:25:52');
Insert into network values('8d187918-8588-4cfb-bfd7-e7f38444d5ff','testuser14','testuser40','2022-07-31 22:25:52');
Insert into network values('8f00c116-b764-4206-8afc-96a54260363d','testuser15','testuser59','2022-07-31 22:25:52');
Insert into network values('76157452-52ea-4ff2-84ec-b4eb7016666b','testuser16','testuser39','2022-07-31 22:25:52');
Insert into network values('ba8e4efb-432b-4b94-a24d-51fc53ba6fee','testuser17','testuser8','2022-07-31 22:25:52');
Insert into network values('acf13df4-af96-4b51-a387-d8b02cd472cb','testuser18','testuser79','2022-07-31 22:25:52');
Insert into network values('d174072b-8793-4a20-8d5d-26ce74c98be7','testuser19','testuser50','2022-07-31 22:25:52');
Insert into network values('dac088a0-6884-4bc5-bc90-0a99550e0125','testuser20','testuser91','2022-07-31 22:25:52');
Insert into network values('ff7cfe13-4b24-41cf-a5c5-750cddd966d9','testuser21','testuser22','2022-07-31 22:25:52');
Insert into network values('154715ac-f858-4dcb-929a-e2d4f99d2fed','testuser22','testuser75','2022-07-31 22:25:52');
Insert into network values('c447a0ec-7fce-4461-8600-10c0c5b85491','testuser23','testuser36','2022-07-31 22:25:52');
Insert into network values('3322a43e-3b86-48d1-94e3-e15876c0de70','testuser24','testuser70','2022-07-31 22:25:52');
Insert into network values('34394a07-2adb-437d-b4c9-b73472eb8712','testuser25','testuser82','2022-07-31 22:25:52');
Insert into network values('353f356f-c2f0-4a16-b8c4-8442887cd8bb','testuser26','testuser5','2022-07-31 22:25:52');
Insert into network values('7b20190a-ca3d-4c36-bcad-8f537854ecc6','testuser27','testuser49','2022-07-31 22:25:52');
Insert into network values('6643e9de-94ac-421c-bee3-d4baf3f6ca55','testuser28','testuser38','2022-07-31 22:25:52');
Insert into network values('a77d038a-6f9c-400b-b459-64558d55aa6a','testuser29','testuser30','2022-07-31 22:25:52');
Insert into network values('259d8f8b-2a89-4526-859d-ca6cfe04fd7e','testuser30','testuser53','2022-07-31 22:25:52');
Insert into network values('46d69003-65b9-4e16-8325-042eefc96880','testuser31','testuser42','2022-07-31 22:25:52');
Insert into network values('0ad0670e-65a1-4532-9992-487be98ed453','testuser32','testuser68','2022-07-31 22:25:52');
Insert into network values('93042599-8d12-4a6b-a6c2-f7117f4e9b2c','testuser33','testuser4','2022-07-31 22:25:52');
Insert into network values('b8e10c57-2058-4256-b203-e0709436dc93','testuser34','testuser44','2022-07-31 22:25:52');
Insert into network values('14a7a348-8cd9-42b8-ab96-4e800a05369b','testuser35','testuser13','2022-07-31 22:25:52');
Insert into network values('09d98e9b-59f5-4f38-8f1f-eeb6e2409a45','testuser36','testuser18','2022-07-31 22:25:52');
Insert into network values('a79ce4a8-3016-4f67-b8a4-4c8750b8a145','testuser37','testuser77','2022-07-31 22:25:52');
Insert into network values('631b52b0-b950-41ef-9ffb-dd02d7eb28a2','testuser38','testuser5','2022-07-31 22:25:52');
Insert into network values('cd4aa65f-d384-4af8-9f6b-1f844f783411','testuser39','testuser82','2022-07-31 22:25:52');
Insert into network values('ef44273b-eacb-43e4-9411-52527de2d761','testuser40','testuser51','2022-07-31 22:25:52');
Insert into network values('713a97aa-3d76-4763-a78b-c0b517e5f1a8','testuser41','testuser32','2022-07-31 22:25:52');
Insert into network values('cdec28bf-ae63-40fc-9228-3d2845b9c828','testuser42','testuser85','2022-07-31 22:25:52');
Insert into network values('dfe7d375-38a3-4565-b925-da8b9787f82e','testuser43','testuser82','2022-07-31 22:25:52');
Insert into network values('dd4820d4-9e74-4058-a595-e64e9aa4f219','testuser44','testuser88','2022-07-31 22:25:52');
Insert into network values('27c6c454-7915-4d24-8f87-61c9f3f08c0e','testuser45','testuser84','2022-07-31 22:25:52');
Insert into network values('2627a65e-eaac-4680-8036-f96f2bedff74','testuser46','testuser73','2022-07-31 22:25:52');
Insert into network values('191aa65e-7a1e-4703-86ed-27fc577c3a61','testuser47','testuser98','2022-07-31 22:25:52');
Insert into network values('9087b13b-38d8-41eb-ac80-9a3aff780cf0','testuser48','testuser82','2022-07-31 22:25:52');
Insert into network values('812f6649-29de-411e-9bb4-6b75ddd8c674','testuser49','testuser93','2022-07-31 22:25:52');
Insert into network values('857335bc-b469-46af-a071-3396e8f02726','testuser50','testuser32','2022-07-31 22:25:52');
Insert into network values('3560ed47-5cdf-4b5a-abd2-fea8789562b9','testuser51','testuser20','2022-07-31 22:25:52');
Insert into network values('301025b3-1583-45e7-b990-e45088484f80','testuser52','testuser7','2022-07-31 22:25:52');
Insert into network values('6211623f-aa68-49e8-a7a6-2adc881a576f','testuser53','testuser16','2022-07-31 22:25:52');
Insert into network values('a2034833-8f98-4421-8c81-b15903e27bd4','testuser54','testuser51','2022-07-31 22:25:52');
Insert into network values('21f4aa73-6c34-410e-85ac-dddd021e56b1','testuser55','testuser76','2022-07-31 22:25:52');
Insert into network values('9307bc48-f199-4d0f-9df5-368d3c27f1f3','testuser56','testuser98','2022-07-31 22:25:52');
Insert into network values('b2531bb7-184d-4347-9afc-2d949fdffc50','testuser57','testuser73','2022-07-31 22:25:52');
Insert into network values('3d30f7bf-d7ee-4ee9-8d6d-7260833fdbf9','testuser58','testuser9','2022-07-31 22:25:52');
Insert into network values('6daa8a71-34b3-4ac4-b756-91799f34fb01','testuser59','testuser97','2022-07-31 22:25:52');
Insert into network values('8a9e9ec2-38a0-457c-a2ce-42795e3eb02d','testuser60','testuser64','2022-07-31 22:25:52');
Insert into network values('2c2c90e8-9f5a-455b-a946-2becd2c01d2c','testuser61','testuser64','2022-07-31 22:25:52');
Insert into network values('f4d11696-db50-4029-8210-72e76cf8f1b6','testuser62','testuser74','2022-07-31 22:25:52');
Insert into network values('f02a8593-7974-4131-b79f-b0504d322aa9','testuser63','testuser11','2022-07-31 22:25:52');
Insert into network values('ad172bb0-2c0f-4e37-9626-f50cde45a921','testuser64','testuser9','2022-07-31 22:25:52');
Insert into network values('246f02a1-69f3-4727-b477-027b557bec70','testuser65','testuser95','2022-07-31 22:25:52');
Insert into network values('575d763c-6a10-4837-9476-3d9c672ce8f8','testuser66','testuser6','2022-07-31 22:25:52');
Insert into network values('9607d7b8-0a8f-4f36-9744-d56d44da4d9d','testuser67','testuser83','2022-07-31 22:25:52');
Insert into network values('5e5e0c89-4ff6-4bd0-ad40-cbd9ad06df30','testuser68','testuser44','2022-07-31 22:25:52');
Insert into network values('d3dd76f0-d2e1-4c23-9d81-109b73d6a545','testuser69','testuser25','2022-07-31 22:25:52');
Insert into network values('6b0e3f48-e0f7-46be-9b36-25edca37e7c3','testuser70','testuser74','2022-07-31 22:25:52');
Insert into network values('2df58a59-5236-4b6a-a5fc-04f48d73dace','testuser71','testuser76','2022-07-31 22:25:52');
Insert into network values('01c5e906-1999-4482-8ea6-b055bbff72c6','testuser72','testuser54','2022-07-31 22:25:52');
Insert into network values('620f392f-536c-4ddf-a693-211a62aeea2e','testuser73','testuser63','2022-07-31 22:25:52');
Insert into network values('822caae2-69f2-4f4e-8d71-b8e518d0ec58','testuser74','testuser41','2022-07-31 22:25:52');
Insert into network values('0f507c92-9760-4899-a674-769dfbd13eaf','testuser75','testuser20','2022-07-31 22:25:52');
Insert into network values('9de4af20-4b3f-4928-b508-fd7030bbe3e3','testuser76','testuser24','2022-07-31 22:25:52');
Insert into network values('c57f45d9-9e8a-4b70-b49c-ccc1afcf30f0','testuser77','testuser8','2022-07-31 22:25:52');
Insert into network values('0432abdd-6173-4b3d-a95d-4fa7ce93ce8f','testuser78','testuser66','2022-07-31 22:25:52');
Insert into network values('559387c2-e7c6-4660-ba2f-33422eaf591e','testuser79','testuser60','2022-07-31 22:25:52');
Insert into network values('8485e180-c8de-41e0-b7c4-1749b2de53d1','testuser80','testuser29','2022-07-31 22:25:52');
Insert into network values('00f3467f-be15-41f6-8973-fb45d6f3997a','testuser81','testuser63','2022-07-31 22:25:52');
Insert into network values('f68e4a2b-ee7f-45e3-a67f-e5a0affd718c','testuser82','testuser16','2022-07-31 22:25:52');
Insert into network values('a61f4925-b89c-4524-b2c6-13f466867f22','testuser83','testuser83','2022-07-31 22:25:52');
Insert into network values('ffdaf10c-ab98-4e77-b232-e42073a52129','testuser84','testuser97','2022-07-31 22:25:52');
Insert into network values('ba3b34b9-6f17-4e95-8041-7e416f8768db','testuser85','testuser40','2022-07-31 22:25:52');
Insert into network values('edb90810-7db2-48e3-a534-0c57e7dfb56c','testuser86','testuser82','2022-07-31 22:25:52');
Insert into network values('9a487e8a-7fa9-4246-91ca-b74ddf5537ce','testuser87','testuser68','2022-07-31 22:25:52');
Insert into network values('55947490-e15d-455b-9142-5175578acf14','testuser88','testuser24','2022-07-31 22:25:52');
Insert into network values('8612ef4c-9df3-4f1f-a8fe-177a2a8683c6','testuser89','testuser40','2022-07-31 22:25:52');
Insert into network values('51293e27-27ca-4e5a-be59-64094866e675','testuser90','testuser49','2022-07-31 22:25:52');
Insert into network values('3e199c72-99c6-4c8d-bc7d-e693c84afdc0','testuser91','testuser63','2022-07-31 22:25:52');
Insert into network values('77b6ed01-2a93-4aab-b7e4-ff56e1fb6249','testuser92','testuser58','2022-07-31 22:25:52');
Insert into network values('747fc17e-732c-4f06-a82d-83207438c8aa','testuser93','testuser28','2022-07-31 22:25:52');
Insert into network values('7b121053-aeb9-43be-8a14-81d1d6031a08','testuser94','testuser23','2022-07-31 22:25:52');
Insert into network values('c7451d2d-2406-4eb2-bc69-4c26b595ef1c','testuser95','testuser76','2022-07-31 22:25:52');
Insert into network values('2503949a-e809-4467-972f-e7a9bff14956','testuser96','testuser84','2022-07-31 22:25:52');
Insert into network values('1f06e03f-34f5-4fa8-a2fb-68400342fc8e','testuser97','testuser59','2022-07-31 22:25:52');
Insert into network values('dc9eb5f0-750b-43c3-854a-61f3744bbd30','testuser98','testuser99','2022-07-31 22:25:52');
Insert into network values('8bf6d719-c988-498b-a4d8-d364ee104b71','testuser99','testuser38','2022-07-31 22:25:52');
Insert into network values('35a42d2a-488d-4649-a631-5c17ddcd61e1','testuser100','testuser17','2022-07-31 22:25:52');
Insert into network values('26a7c5e8-0113-443e-bd8e-1ec94398d969','testuser62','testuser1','2022-07-31 22:25:52');
Insert into network values('7bffaa80-dbd3-4c01-afa0-0f49df8f76eb','testuser93','testuser2','2022-07-31 22:25:52');
Insert into network values('af355834-370c-49dc-a9cb-aa02a7d95b05','testuser7','testuser3','2022-07-31 22:25:52');
Insert into network values('7b30ce77-c0d5-4f01-abdd-0b67454e13d1','testuser85','testuser4','2022-07-31 22:25:52');
Insert into network values('6b210420-3170-4ee4-8700-f8fca16a1c80','testuser52','testuser5','2022-07-31 22:25:52');
Insert into network values('b15edebb-ef1f-49c8-bddb-c24fcd53ceab','testuser78','testuser6','2022-07-31 22:25:52');
Insert into network values('b1ad23b8-f663-4b02-a699-bc5cd1b1d8bd','testuser43','testuser7','2022-07-31 22:25:52');
Insert into network values('86bd40da-9d2d-4f87-bd09-57bcd86b8c21','testuser78','testuser8','2022-07-31 22:25:52');
Insert into network values('7793761e-87dd-4c51-8697-478395647169','testuser71','testuser9','2022-07-31 22:25:52');
Insert into network values('a527db00-e0fe-4834-9668-4435b321183e','testuser2','testuser10','2022-07-31 22:25:52');
Insert into network values('689962f1-26c5-48c6-bff6-f2dc4391339c','testuser18','testuser11','2022-07-31 22:25:52');
Insert into network values('e11e6b04-2bad-4055-8271-1e1db5aeed43','testuser37','testuser12','2022-07-31 22:25:52');
Insert into network values('d631382e-c7f5-4102-bb55-cd9482d4a0c8','testuser95','testuser13','2022-07-31 22:25:52');
Insert into network values('ce70ef41-9dd7-4d3d-9838-96e88bc23148','testuser88','testuser14','2022-07-31 22:25:52');
Insert into network values('5cb1302d-033a-407e-b344-266bf24b2e9a','testuser35','testuser15','2022-07-31 22:25:52');
Insert into network values('0dc70d18-d091-40a3-b061-705ce0c5e54c','testuser44','testuser16','2022-07-31 22:25:52');
Insert into network values('b9207e89-a23e-4e8d-ab7a-575728866f0a','testuser37','testuser17','2022-07-31 22:25:52');
Insert into network values('9d59b032-648b-4f4b-84d5-9459dbaabe5d','testuser3','testuser18','2022-07-31 22:25:52');
Insert into network values('d697bf54-3c95-4a69-9523-a36f23968869','testuser8','testuser19','2022-07-31 22:25:52');
Insert into network values('2ef24346-9143-4e35-91e1-8f43e9324638','testuser10','testuser20','2022-07-31 22:25:52');
Insert into network values('3c6d77e3-12a8-4b5c-b9fe-74316679295d','testuser14','testuser21','2022-07-31 22:25:52');
Insert into network values('ab22f506-6c20-4fbd-b01f-8a21139a820c','testuser92','testuser22','2022-07-31 22:25:52');
Insert into network values('f79cd8c1-425b-4f72-a40f-e05b3e6aaa67','testuser62','testuser23','2022-07-31 22:25:52');
Insert into network values('e4174c5c-5944-481e-9578-3e5f38396876','testuser27','testuser24','2022-07-31 22:25:52');
Insert into network values('80d982e2-695f-4b09-9792-c15c1a4ebbb0','testuser59','testuser25','2022-07-31 22:25:52');
Insert into network values('2f0e5be7-8238-4b95-be1c-e0a2d5254ce3','testuser90','testuser26','2022-07-31 22:25:52');
Insert into network values('c9005ae7-82cd-425a-a8bc-90f5ac19118c','testuser88','testuser27','2022-07-31 22:25:52');
Insert into network values('3d781941-7687-428e-b37f-4dfb60a88a85','testuser93','testuser28','2022-07-31 22:25:52');
Insert into network values('2ec5819a-73bf-4d08-85c5-54cfb3c739ad','testuser35','testuser29','2022-07-31 22:25:52');
Insert into network values('6ceac72f-4366-4192-9092-dcd00e47005a','testuser98','testuser30','2022-07-31 22:25:52');
Insert into network values('8987f710-9bb3-4843-8174-da810607af31','testuser43','testuser31','2022-07-31 22:25:52');
Insert into network values('7a7ca1eb-be18-4b51-813a-64efb91e19c5','testuser15','testuser32','2022-07-31 22:25:52');
Insert into network values('59ccd01d-a6d2-4cfb-9961-cc6adf1517a6','testuser91','testuser33','2022-07-31 22:25:52');
Insert into network values('9aebb438-ee6a-4529-bc69-4b5f2d13a454','testuser45','testuser34','2022-07-31 22:25:52');
Insert into network values('ad613f66-ada4-4cb2-8c7f-0fe2bd2aa52a','testuser6','testuser35','2022-07-31 22:25:52');
Insert into network values('5b77ac2d-535e-47e6-8d92-9386699125f8','testuser5','testuser36','2022-07-31 22:25:52');
Insert into network values('2a190cd8-d2a4-4e35-ab17-55085e33af97','testuser2','testuser37','2022-07-31 22:25:52');
Insert into network values('9f1ab2ab-8d07-4f40-8180-77a2cc86dbac','testuser41','testuser38','2022-07-31 22:25:52');
Insert into network values('f93f9d8a-eba1-4893-b615-78c6cb5c057b','testuser59','testuser39','2022-07-31 22:25:52');
Insert into network values('51365af3-456c-46ba-b563-bd7ebf5d681f','testuser14','testuser40','2022-07-31 22:25:52');
Insert into network values('a6c0f095-c88d-4c4a-b559-e79921968175','testuser60','testuser41','2022-07-31 22:25:52');
Insert into network values('cf2dd14f-9b15-450e-82e5-829afd2f983c','testuser96','testuser42','2022-07-31 22:25:52');
Insert into network values('2af9688e-8011-44e8-a414-c119c68bda24','testuser31','testuser43','2022-07-31 22:25:52');
Insert into network values('4ed41d33-790f-4369-900a-809d548599b2','testuser10','testuser44','2022-07-31 22:25:52');
Insert into network values('15524b19-ce6c-4192-9ad2-b3c9db0b8bff','testuser77','testuser45','2022-07-31 22:25:52');
Insert into network values('348da6dd-3bf2-4fc8-becd-1a04e16ba12a','testuser85','testuser46','2022-07-31 22:25:52');
Insert into network values('8e597ca4-5eef-42b7-9969-ffda3827d48b','testuser97','testuser47','2022-07-31 22:25:52');
Insert into network values('277ae651-436a-48f6-9d3c-6d82442987b2','testuser47','testuser48','2022-07-31 22:25:52');
Insert into network values('a84e3267-da07-4926-8d06-4a1b0387f48a','testuser84','testuser49','2022-07-31 22:25:52');
Insert into network values('6f915937-48f5-48f0-94f3-32683253ed4e','testuser46','testuser50','2022-07-31 22:25:52');
Insert into network values('1a88d8e6-9cb3-4faf-84cf-f71faf3c17d1','testuser57','testuser51','2022-07-31 22:25:52');
Insert into network values('03230c02-2b6d-48c6-8706-e7c74c5e5ec6','testuser10','testuser52','2022-07-31 22:25:52');
Insert into network values('be63f0b4-1145-436a-82d8-4a6a894f662a','testuser61','testuser53','2022-07-31 22:25:52');
Insert into network values('dd9e97d4-f8c4-4587-8252-45fd4f5ccef8','testuser56','testuser54','2022-07-31 22:25:52');
Insert into network values('cc1ff740-6eea-4dd2-8fde-54c7c7a77d6b','testuser52','testuser55','2022-07-31 22:25:52');
Insert into network values('13660d01-cbf1-490a-9d6d-e4ed4f32fe1c','testuser98','testuser56','2022-07-31 22:25:52');
Insert into network values('5f17c76f-7a06-4958-9891-436089975c0c','testuser23','testuser57','2022-07-31 22:25:52');
Insert into network values('3b4ba6db-256b-43a9-8cd2-8c2c7dcff6c7','testuser41','testuser58','2022-07-31 22:25:52');
Insert into network values('966a6798-a07f-450e-aee9-fb3fd625e512','testuser98','testuser59','2022-07-31 22:25:52');
Insert into network values('5ab3d1e9-8751-475a-8713-d1dd8276e522','testuser95','testuser60','2022-07-31 22:25:52');
Insert into network values('93a9deb9-5316-43df-b3b7-826048fc2755','testuser50','testuser61','2022-07-31 22:25:52');
Insert into network values('4aa8d6d5-1de7-49c0-a791-66e1ce418712','testuser10','testuser62','2022-07-31 22:25:52');
Insert into network values('0bd810dc-5450-48b5-9b57-a1ffdd7ace5d','testuser31','testuser63','2022-07-31 22:25:52');
Insert into network values('96f25641-1fcd-4caf-a700-59c4daa7eb06','testuser23','testuser64','2022-07-31 22:25:52');
Insert into network values('0aba9634-0a8c-46ce-ac42-577aa740baf1','testuser90','testuser65','2022-07-31 22:25:52');
Insert into network values('f92649bb-3911-4fad-be87-b3e81f40415b','testuser88','testuser66','2022-07-31 22:25:52');
Insert into network values('1b153394-e986-497a-9764-8771bb50e71c','testuser65','testuser67','2022-07-31 22:25:52');
Insert into network values('9e58e797-c87b-4110-8bf0-2aec7916d666','testuser97','testuser68','2022-07-31 22:25:52');
Insert into network values('a01925eb-ed90-47e4-9052-6722b41bdad2','testuser23','testuser69','2022-07-31 22:25:52');
Insert into network values('5a306261-0f87-481e-9f74-27f62ee73c94','testuser95','testuser70','2022-07-31 22:25:52');
Insert into network values('edf93947-e5f9-42f4-9f7b-c3343550d621','testuser23','testuser71','2022-07-31 22:25:52');
Insert into network values('32e01e96-f1ce-47f5-ac0d-b9826c8fc5b3','testuser42','testuser72','2022-07-31 22:25:52');
Insert into network values('831a5ac1-b832-41f6-8885-bdfc967e7823','testuser94','testuser73','2022-07-31 22:25:52');
Insert into network values('832151b4-b41a-47f7-a80c-521d2289f215','testuser68','testuser74','2022-07-31 22:25:52');
Insert into network values('d2afd779-542c-4582-95ab-a85f1337d1ec','testuser37','testuser75','2022-07-31 22:25:52');
Insert into network values('52a514b7-e582-47f2-8db9-93185debb859','testuser48','testuser76','2022-07-31 22:25:52');
Insert into network values('b20fadbc-fbda-4652-8965-f2d6926cd056','testuser1','testuser77','2022-07-31 22:25:52');
Insert into network values('39aafece-ffb7-4b97-912a-2a1b29d46dd9','testuser32','testuser78','2022-07-31 22:25:52');
Insert into network values('d1170ca6-b594-4396-be59-a29ad9e55f37','testuser46','testuser79','2022-07-31 22:25:52');
Insert into network values('3ce0e96b-c07c-4efb-8474-d1b983c14e6e','testuser77','testuser80','2022-07-31 22:25:52');
Insert into network values('aa5b4fad-b583-42f0-8fee-6535cdaf14b1','testuser16','testuser81','2022-07-31 22:25:52');
Insert into network values('dd552da5-ae67-4810-911a-288efefd34da','testuser61','testuser82','2022-07-31 22:25:52');
Insert into network values('ce1935c8-b4e5-49aa-9a89-f4474fd8ec97','testuser67','testuser83','2022-07-31 22:25:52');
Insert into network values('080b328b-aceb-4465-8bd1-389100e47d58','testuser35','testuser84','2022-07-31 22:25:52');
Insert into network values('e4ad6a2e-a018-4767-9f31-b1ac4bd3d2e3','testuser98','testuser85','2022-07-31 22:25:52');
Insert into network values('8a05e5c2-f0e4-46b3-a7d6-87a6ea43894d','testuser13','testuser86','2022-07-31 22:25:52');
Insert into network values('43e03d02-679d-43e7-b3c3-9a3822ff3a40','testuser72','testuser87','2022-07-31 22:25:52');
Insert into network values('81032cfb-e095-4655-a266-ef98db868252','testuser19','testuser88','2022-07-31 22:25:52');
Insert into network values('d533c6c4-1d9f-4e6c-af62-c4e952f8beba','testuser48','testuser89','2022-07-31 22:25:52');
Insert into network values('b0153585-c1a4-4be0-84cd-47ff3e28ea98','testuser92','testuser90','2022-07-31 22:25:52');
Insert into network values('1674a798-334f-46bf-9394-891f235dda12','testuser26','testuser91','2022-07-31 22:25:52');
Insert into network values('8e7b2ec1-8582-4361-8974-9f97d34e74e2','testuser3','testuser92','2022-07-31 22:25:52');
Insert into network values('31a824bd-cab0-4a3d-be54-e6e92f425c9f','testuser80','testuser93','2022-07-31 22:25:52');
Insert into network values('0f8c9241-1b54-4014-89d3-9e0cdcfe30ca','testuser96','testuser94','2022-07-31 22:25:52');
Insert into network values('f1873847-b65c-462c-a46f-3d47f8615bd3','testuser33','testuser95','2022-07-31 22:25:52');
Insert into network values('0613cc4f-ab3e-4994-b468-0deba6ffd439','testuser21','testuser96','2022-07-31 22:25:52');
Insert into network values('3ceb9403-bff6-4e3e-bdbd-743af6ea2002','testuser13','testuser97','2022-07-31 22:25:52');
Insert into network values('bc49cf8b-c680-48ab-898e-847f91636414','testuser78','testuser98','2022-07-31 22:25:52');
Insert into network values('a3e88146-43ee-4aa1-b930-afdc504f6358','testuser62','testuser99','2022-07-31 22:25:52');
Insert into network values('a28b50b3-2b77-4732-b13a-917fb7270552','testuser26','testuser100','2022-07-31 22:25:52');




##Comment Table :

Insert into comments values('0d87e0a2-b074-4a80-b2c8-aaf61088c5fc','aacbd101-e955-4edc-b06f-198d7aee0a30','Greetings from testuser100','testuser100','2022-07-31 22:25:52',23);
Insert into comments values('7bad5845-428d-41fb-9dd9-742dbc9acb8e','61cc22f1-1ce8-4fe5-ac80-51c6f4e82039','Greetings from testuser99','testuser99','2022-07-31 22:25:52',1);
Insert into comments values('8c0f0939-0a7a-4ba8-9045-a0f91714594f','5b79d663-35f1-46f8-9850-f635ff57d04d','Greetings from testuser98','testuser98','2022-07-31 22:25:52',0);
Insert into comments values('a546ce3f-1490-4545-bc81-792943b0d6e1','a7e5dfeb-82d5-4db0-9ec9-66c6bcafc5d4','Greetings from testuser97','testuser97','2022-07-31 22:25:52',11);
Insert into comments values('70a65de9-8955-459b-8197-8d01d5d9058e','07d6d044-28a3-4745-9271-9b88d3402e65','Greetings from testuser96','testuser96','2022-07-31 22:25:52',10);
Insert into comments values('71282c8e-d5d4-4e94-b136-445d2ca7dce5','cc7e3260-e1ea-4475-afd0-4fa1f9d5260b','Greetings from testuser95','testuser95','2022-07-31 22:25:52',23);
Insert into comments values('557c0a9a-a6e5-409a-85e5-8085ffd42ad6','d96b7db9-fa3f-41bd-b1ab-432b6ad0e631','Greetings from testuser94','testuser94','2022-07-31 22:25:52',17);
Insert into comments values('fc13070f-9d84-4254-9295-87474dafa688','f458c112-f273-4909-91aa-b5b425918c06','Greetings from testuser93','testuser93','2022-07-31 22:25:52',37);
Insert into comments values('f413ee42-f3a2-4dd1-9f14-05e241d1f8c9','5b608313-f4fb-4584-bde8-0e614b928803','Greetings from testuser92','testuser92','2022-07-31 22:25:52',39);
Insert into comments values('d298eab8-b220-4ace-9fe3-a9ecd825501e','8c7b3058-11fc-4caa-a64a-b1fbf7e36cf9','Greetings from testuser91','testuser91','2022-07-31 22:25:52',30);
Insert into comments values('eb8164d8-b793-40db-ace4-3a6125bdcadc','12520c8e-2d9e-4638-9356-b2d758d3101a','Greetings from testuser90','testuser90','2022-07-31 22:25:52',31);
Insert into comments values('ed444ebc-ea80-4f7f-87af-c5eff66329f8','7a229771-03b6-4765-a77f-769ad3d957c8','Greetings from testuser89','testuser89','2022-07-31 22:25:52',35);
Insert into comments values('ed651de0-9599-48e3-9f82-b423b2f29a4c','f6c23104-e020-46fe-94b8-3243af74e1d5','Greetings from testuser88','testuser88','2022-07-31 22:25:52',27);
Insert into comments values('97a93c30-fd3c-437e-9aa2-059788dcb809','9cc048e3-7df2-4c12-aef8-a8a515ccbe25','Greetings from testuser87','testuser87','2022-07-31 22:25:52',14);
Insert into comments values('54376c48-c503-41b9-acbc-18f81077ff23','a499e3f9-3d80-4322-afad-57c272f68ea8','Greetings from testuser86','testuser86','2022-07-31 22:25:52',22);
Insert into comments values('5de01c54-fcca-4ddb-b921-38cc6d08b93a','bbbc54ad-21c5-4759-92a7-a27cefd49ea3','Greetings from testuser85','testuser85','2022-07-31 22:25:52',39);
Insert into comments values('8056d079-a2f4-453e-97a0-29aed03a692a','3c59189a-9d18-4bc8-bb15-afdf7801bd43','Greetings from testuser84','testuser84','2022-07-31 22:25:52',14);
Insert into comments values('52c30a76-8d21-4ae7-9319-faed4a897f43','e127b577-4c9f-45d7-9f0d-6df1dd937a2d','Greetings from testuser83','testuser83','2022-07-31 22:25:52',19);
Insert into comments values('f5679a28-75d4-47aa-a4d5-935f89c56214','d61353e4-4f23-4cd6-8dfd-52ed9655cc5d','Greetings from testuser82','testuser82','2022-07-31 22:25:52',37);
Insert into comments values('b886a51c-5df2-49cf-90d4-211cf5738a9d','59145ab9-5637-474c-b15e-b23261787ec3','Greetings from testuser81','testuser81','2022-07-31 22:25:52',24);
Insert into comments values('5dfdc8b7-7713-43b4-8883-6fd0b1e334c8','aa190ae0-249e-445e-a4b3-008eea5a31f0','Greetings from testuser80','testuser80','2022-07-31 22:25:52',21);
Insert into comments values('ab2ccf7d-4ec7-4719-bb9d-cde80615ff9c','e8fcdc43-a834-4991-8c51-6ff79b20080e','Greetings from testuser79','testuser79','2022-07-31 22:25:52',7);
Insert into comments values('50e2377a-accf-41ba-8b10-b6e947fd60bf','e069cfc4-1ec2-455e-9589-c2da631ed2bf','Greetings from testuser78','testuser78','2022-07-31 22:25:52',5);
Insert into comments values('7609238d-4cdc-4a86-88d4-7c0618ad4a82','5cb75a75-70c1-4205-8880-b6fb81d0fb21','Greetings from testuser77','testuser77','2022-07-31 22:25:52',28);
Insert into comments values('a19e2814-1c60-4611-8572-a2dbbfd8274e','ebd4358f-2296-4993-8bf5-266d6d7ace03','Greetings from testuser76','testuser76','2022-07-31 22:25:52',11);
Insert into comments values('daae7c4b-5a84-4f60-914a-ffb0519513d1','25e4ef52-c3f3-4e01-bef3-c600502b241a','Greetings from testuser75','testuser75','2022-07-31 22:25:52',36);
Insert into comments values('a820a51b-24f3-4a5d-aeef-a2925e6add06','132c8f74-f8e8-42d8-a16a-0a129e6420f8','Greetings from testuser74','testuser74','2022-07-31 22:25:52',38);
Insert into comments values('bc96022f-966f-4e54-b992-317bc395e7b2','42e6af33-8f32-4ac6-b2d8-3bc12a53eab5','Greetings from testuser73','testuser73','2022-07-31 22:25:52',11);
Insert into comments values('3071638f-9c34-40ad-946d-3a77d9738d1e','dd396f76-4327-40e0-b400-a6ab4f3912bc','Greetings from testuser72','testuser72','2022-07-31 22:25:52',17);
Insert into comments values('b3e20722-102e-402a-a58a-2c9f3b055022','1cc3fd09-a12c-4968-a384-7697526398ad','Greetings from testuser71','testuser71','2022-07-31 22:25:52',14);
Insert into comments values('93b865c3-0543-4fb2-b8a5-40e721ad118b','ff9247f3-3d33-45f3-a32e-69a731f4e69f','Greetings from testuser70','testuser70','2022-07-31 22:25:52',21);
Insert into comments values('91696717-c4d5-46f9-aa70-f1ef98fbf219','d0d34a86-4bba-4c47-8a71-17af9fff348d','Greetings from testuser69','testuser69','2022-07-31 22:25:52',18);
Insert into comments values('a1e0d842-bd23-4d4e-a29a-ec440768e1a3','f6332cb6-ded2-4565-a56a-0431452eadd7','Greetings from testuser68','testuser68','2022-07-31 22:25:52',2);
Insert into comments values('994f851b-cf97-40b0-9976-69c230756f4e','9aa9ef6f-be4f-4592-91da-f5e61f33b396','Greetings from testuser67','testuser67','2022-07-31 22:25:52',18);
Insert into comments values('6e339c8d-ae98-409f-ae65-5ff96cc56b80','c5fe36a4-3102-455d-a132-5b05ea51d118','Greetings from testuser66','testuser66','2022-07-31 22:25:52',38);
Insert into comments values('f4144e6b-c35f-4bf9-ac36-b8e5b1034d85','ab97bb08-7563-4eab-aa31-76780692dfd5','Greetings from testuser65','testuser65','2022-07-31 22:25:52',24);
Insert into comments values('b5c7c929-8662-477f-877b-b112b222c41c','7379f09f-8ad4-4da3-b632-b35b0fdab8f9','Greetings from testuser64','testuser64','2022-07-31 22:25:52',37);
Insert into comments values('1d4c0fb2-9a98-4814-8a51-694696c831e5','dda85e73-bbc7-4b77-8153-fda35cd8bf81','Greetings from testuser63','testuser63','2022-07-31 22:25:52',30);
Insert into comments values('b9c2ea15-36a5-41cc-9fcf-00a37bfc189b','daa24819-702f-4a35-b572-80f573bec1fa','Greetings from testuser62','testuser62','2022-07-31 22:25:52',14);
Insert into comments values('0b7c310d-8ea5-46a7-bb5b-2bc4528795a6','57a1d79a-d1a8-47ad-a467-a98ae85663d0','Greetings from testuser61','testuser61','2022-07-31 22:25:52',27);
Insert into comments values('0327b328-849b-448e-b2f1-7e4212986ada','dbb8eb2d-07b0-4881-9aa3-a259e16696c5','Greetings from testuser60','testuser60','2022-07-31 22:25:52',21);
Insert into comments values('f5a78c90-6c1e-4ed4-ada2-137252b4a021','5c9c4831-dcb4-4e84-b294-50d6613de8a8','Greetings from testuser59','testuser59','2022-07-31 22:25:52',8);
Insert into comments values('05c96058-49c0-40e7-a6b1-99925ea2116e','fadb5849-5f72-47dd-828b-ea9e747f354e','Greetings from testuser58','testuser58','2022-07-31 22:25:52',28);
Insert into comments values('bf54f967-5e04-4b86-900d-d903cb024d65','e886258d-dc6d-4af7-99e0-19935885e9c2','Greetings from testuser57','testuser57','2022-07-31 22:25:52',20);
Insert into comments values('0c71d212-28fa-455c-8b6a-a23b948ff822','1ce63ab8-927a-47b5-ad7f-c1a1cf0ffc0e','Greetings from testuser56','testuser56','2022-07-31 22:25:52',5);
Insert into comments values('256e7798-47e3-44ef-857b-ee9eedc3cc84','0ebb2376-2d94-4807-89e8-ca66916062e4','Greetings from testuser55','testuser55','2022-07-31 22:25:52',38);
Insert into comments values('419d0e10-a798-4b11-968d-824847e0f626','db9d88ee-92db-49d6-888b-2e932bf2acae','Greetings from testuser54','testuser54','2022-07-31 22:25:52',11);
Insert into comments values('b2d4915a-1097-4b60-b16e-133a944137d9','50f342e3-f390-4d59-90ae-ffe4ff2df5b7','Greetings from testuser53','testuser53','2022-07-31 22:25:52',29);
Insert into comments values('92cf62ec-80b2-4606-b541-23ba94fd9a92','a58b87f8-2e5a-4cf5-a052-08c68e97eb67','Greetings from testuser52','testuser52','2022-07-31 22:25:52',29);
Insert into comments values('ed4788e9-ac8f-4337-8baf-f74c82903643','8e1c1604-e092-4cf6-8312-04e28046db08','Greetings from testuser51','testuser51','2022-07-31 22:25:52',24);
Insert into comments values('b021b69c-6886-45d8-a3eb-739a9019b74a','d2603f20-44b1-4922-bf7e-8fe1cd0f09ad','Greetings from testuser50','testuser50','2022-07-31 22:25:52',6);
Insert into comments values('fed28f15-0346-4035-8ff6-90557276d719','c8dadec6-0c41-41e2-9bb7-f78593415c1b','Greetings from testuser49','testuser49','2022-07-31 22:25:52',31);
Insert into comments values('0804d837-8961-498e-ada0-86d81218b7f8','866ec98e-4509-4476-a0d5-f77fe94ec9d7','Greetings from testuser48','testuser48','2022-07-31 22:25:52',32);
Insert into comments values('00bf3703-72b4-4835-9dd2-5556094ddd53','a38348dc-d24a-4a16-833b-1f8408eccd47','Greetings from testuser47','testuser47','2022-07-31 22:25:52',26);
Insert into comments values('900fbcc7-f1cf-40a4-9e00-af264c563805','12246498-13f1-4f01-84a8-00f9b45c64e6','Greetings from testuser46','testuser46','2022-07-31 22:25:52',8);
Insert into comments values('b3d94b9e-c064-42b6-9df7-5ae9d1da6a14','41e23832-9ebf-4373-8073-542bba6eb972','Greetings from testuser45','testuser45','2022-07-31 22:25:52',25);
Insert into comments values('3a1c799f-1442-4b22-ac04-9ee42a6a2f72','b0be6ac5-eaeb-4b91-b8e7-d8654ba01503','Greetings from testuser44','testuser44','2022-07-31 22:25:52',38);
Insert into comments values('ab68489d-6f3e-4bfc-8170-4eee39726717','0e52be2f-a507-42d5-9123-0070b1ea4fd7','Greetings from testuser43','testuser43','2022-07-31 22:25:52',17);
Insert into comments values('9a84d249-b14b-4ac6-a8b2-c961cd8e2b70','573d5c87-2fc3-4231-83ac-bf6741afc116','Greetings from testuser42','testuser42','2022-07-31 22:25:52',2);
Insert into comments values('644e2348-155b-4e66-978a-830f2b688cdc','e00a8f8a-75c9-49b3-bd77-cbf55a24adf8','Greetings from testuser41','testuser41','2022-07-31 22:25:52',36);
Insert into comments values('a3fcc1f0-4108-40d1-b6d8-886501ea182b','ac2c1e70-110f-4e99-b662-278b43e119ac','Greetings from testuser40','testuser40','2022-07-31 22:25:52',34);
Insert into comments values('c1902275-2724-437f-9872-0ad4defec0d2','9cd326a3-bae6-4129-95e3-81b8b1d60d94','Greetings from testuser39','testuser39','2022-07-31 22:25:52',29);
Insert into comments values('8fed0f0c-3da0-4b62-bd17-334c796c5c6a','cd6d8e4e-2d3a-4f41-a75b-d68146aa558f','Greetings from testuser38','testuser38','2022-07-31 22:25:52',28);
Insert into comments values('315dbbb4-9185-4dbf-9b32-2524f93f44c6','c82dca7a-2a81-4669-bec4-0c56c7fed834','Greetings from testuser37','testuser37','2022-07-31 22:25:52',8);
Insert into comments values('5f88a2a0-a081-4c02-afbe-b0f3d9e44581','9d40dd91-b30f-4d99-b346-bba4b8fda061','Greetings from testuser36','testuser36','2022-07-31 22:25:52',39);
Insert into comments values('e037c93d-d5ee-4be8-9eae-1fc2df126d51','0e5b2e43-52a3-4d21-ab95-bd3f894d35c4','Greetings from testuser35','testuser35','2022-07-31 22:25:52',26);
Insert into comments values('7c852f0a-bb0b-4fd5-9173-059188f1a494','f31dbead-0ba7-449d-ab35-f5221273e904','Greetings from testuser34','testuser34','2022-07-31 22:25:52',37);
Insert into comments values('a06d4db6-65a0-4a49-99ee-57abd757b3ab','50c675b6-6947-46b5-8b54-a7b1f33910f6','Greetings from testuser33','testuser33','2022-07-31 22:25:52',9);
Insert into comments values('bff4eda7-abb6-4791-b5b6-8166ba71b914','07764c50-b7a2-4419-ba31-6164a91941d8','Greetings from testuser32','testuser32','2022-07-31 22:25:52',27);
Insert into comments values('165d06ba-1a2c-457b-b9aa-8eb5d1590640','208d73f4-2c96-438a-b75c-1beba604bcb0','Greetings from testuser31','testuser31','2022-07-31 22:25:52',0);
Insert into comments values('3fdb489a-fa04-452b-af13-2c6278849f72','be060bdb-2156-44da-9dad-f6888deeaf80','Greetings from testuser30','testuser30','2022-07-31 22:25:52',25);
Insert into comments values('e245f410-a4b5-49de-8850-b07d5235140b','77a9f6e5-b63a-4142-9cf7-b57ee1145488','Greetings from testuser29','testuser29','2022-07-31 22:25:52',29);
Insert into comments values('2939399d-b10f-46ef-8a9c-4e491b884375','4dc34c68-9f3d-4094-9da9-b1a1613888cb','Greetings from testuser28','testuser28','2022-07-31 22:25:52',31);
Insert into comments values('b0d80613-8a17-4449-b189-5a4702181f63','c4995b61-bad0-4fc0-84e1-8fd27c023319','Greetings from testuser27','testuser27','2022-07-31 22:25:52',38);
Insert into comments values('3c97c2e2-270f-4f75-8815-9a96116dc04a','6c224bfb-9170-48c3-9bcf-2373ece979f4','Greetings from testuser26','testuser26','2022-07-31 22:25:52',29);
Insert into comments values('347e4e20-142a-4b8c-9fac-a3823fedaefb','3d932a10-0684-46fd-9d12-9eb7c33a10e7','Greetings from testuser25','testuser25','2022-07-31 22:25:52',5);
Insert into comments values('0aa5fff3-32d4-4908-a40f-fe72481b23a6','e006818d-9b31-4574-bf5e-eeb6ea631330','Greetings from testuser24','testuser24','2022-07-31 22:25:52',33);
Insert into comments values('029fcad0-83e7-47be-93fb-b56659f96a4d','8e7a5ce8-fa00-4ca5-af31-537e7e7b295e','Greetings from testuser23','testuser23','2022-07-31 22:25:52',33);
Insert into comments values('e889a65e-3317-46af-8b19-7137d50e7469','811aeb13-1288-4467-985b-1c67b1205b8e','Greetings from testuser22','testuser22','2022-07-31 22:25:52',16);
Insert into comments values('660f091f-9fc9-4967-bafa-5307c70cdd36','4f9adda6-fa09-481f-bd1b-e7ef48d6ebc7','Greetings from testuser21','testuser21','2022-07-31 22:25:52',23);
Insert into comments values('d2848487-b1b8-4b1e-a00a-cc7e609d9e45','48b108be-6d1b-4bb3-808e-85656953e690','Greetings from testuser20','testuser20','2022-07-31 22:25:52',27);
Insert into comments values('294cb995-24c5-4e3c-8365-e6d1e1ca3941','3c9729e4-50f3-4094-be1f-8657d3bab5d9','Greetings from testuser19','testuser19','2022-07-31 22:25:52',21);
Insert into comments values('78b13165-8a44-4701-87b7-aa89d4c00c93','fe6ec26d-af24-4b1d-a0e5-b9f5080a9fb4','Greetings from testuser18','testuser18','2022-07-31 22:25:52',3);
Insert into comments values('b99d1677-7804-4d61-b37d-37c7a0214b02','cf77d996-c02a-44d5-9d95-1e9be5815439','Greetings from testuser17','testuser17','2022-07-31 22:25:52',30);
Insert into comments values('cac315d5-6828-4155-9951-979d170e2449','7ed3b926-e807-43d5-9aae-f6602276b15b','Greetings from testuser16','testuser16','2022-07-31 22:25:52',31);
Insert into comments values('91160d6e-7505-43b6-acc0-fc2046499de6','9a42c6a4-9760-480e-9ed4-7e6dc3dc6dab','Greetings from testuser15','testuser15','2022-07-31 22:25:52',19);
Insert into comments values('d9f0e6d9-1b40-4f8c-96ea-817bb56d1264','dac63605-7555-4f72-be8f-a0c4f17de623','Greetings from testuser14','testuser14','2022-07-31 22:25:52',31);
Insert into comments values('dd01f554-f9d2-4238-8ac3-d15c12f40d14','abf5a070-2d1f-470b-ac03-26ae34012605','Greetings from testuser13','testuser13','2022-07-31 22:25:52',30);
Insert into comments values('07cb303a-bb2b-4cc5-b0fb-2c84fdcd6d80','cc7d0396-b47b-47cb-8404-a93ec8da2fa3','Greetings from testuser12','testuser12','2022-07-31 22:25:52',10);
Insert into comments values('9d436760-71d1-4a82-bb9f-efa844a7a24f','aa5adc5a-8b21-4238-bf99-aff10c9f6782','Greetings from testuser11','testuser11','2022-07-31 22:25:52',35);
Insert into comments values('c65a336f-8f72-41b5-9a6d-1f78778ddeef','158d18af-44a8-4ce7-96e8-8cab2cdbedbf','Greetings from testuser10','testuser10','2022-07-31 22:25:52',19);
Insert into comments values('55159175-acf6-44c2-90aa-75121fcac4b6','c5f7d50c-e151-4496-8797-65eb760288fe','Greetings from testuser9','testuser9','2022-07-31 22:25:52',39);
Insert into comments values('ffad3622-8027-46bc-b658-a0bb1da448f7','c6974df5-981a-404d-a9e9-7aadd2b4d980','Greetings from testuser8','testuser8','2022-07-31 22:25:52',17);
Insert into comments values('ced90347-2f63-47e0-95c8-04f0e644bc2f','fe085416-d23b-414a-bcbd-baab87d0bdab','Greetings from testuser7','testuser7','2022-07-31 22:25:52',7);
Insert into comments values('eb9d8d8e-fa27-4711-9ad8-2a622ce41bbe','acae9dc8-af7d-4af4-8b29-525fd675c7d1','Greetings from testuser6','testuser6','2022-07-31 22:25:52',31);
Insert into comments values('808d955e-886d-4d99-8ce4-4c81b955e554','dbba542f-fbd8-426d-91ee-fb3035e527bd','Greetings from testuser5','testuser5','2022-07-31 22:25:52',3);
Insert into comments values('36454273-cfc8-492b-97dc-6233bc72e9dd','62d73ed4-1a18-4000-b5bc-d6881c858d32','Greetings from testuser4','testuser4','2022-07-31 22:25:52',9);
Insert into comments values('a885694a-63d4-49f6-982c-a52a1ed1d284','4f03e8ca-a604-43af-8435-ddd4ded42513','Greetings from testuser3','testuser3','2022-07-31 22:25:52',38);
Insert into comments values('0157b3a0-ee60-4fa2-bd50-3e4230853f5f','a8686036-1c70-436c-9115-a5d08f0c633d','Greetings from testuser2','testuser2','2022-07-31 22:25:52',36);
Insert into comments values('37c2b2f7-12c3-4802-9c89-ea05a6cc8aa5','23dd18de-5742-4c1c-a2c6-d8ce7f7ce1a3','Greetings from testuser1','testuser1','2022-07-31 22:25:52',36);






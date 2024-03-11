Create database VAG

create table Artist(
ArtistID int identity(1,1) primary key Not Null,
Name varchar(20),
Biography text,
BirthDate date,
Nationality varchar(20),
Website varchar(50),
Contact_Information varchar(50))

Insert into Artist(Name,Biography,Birthdate,Nationality,Website,Contact_Information)
values ('Anush','Hello, my name is Georgie Green and Im a digital artist based in Chicago.','1995-04-02','Indian','www.artist1.com','1234567890')

select*from Artist

create table Artwork(
ArtworkID int identity(1,1) primary key Not Null,
Title varchar(50),
Description varchar(200),
CreationDate date,
Medium varchar(50),
ImageURL varchar(100),
ArtistID int,
Foreign key (ArtistID) references Artist(ArtistID))

Insert into Artwork(Title,Description,CreationDate,Medium,ImageURL,ArtistID)
values ('The Ballet Class ','White paper disgusts me','2024-01-01','chalk','https://abc',1)
select * from Artwork


create table Users(
UserID int identity(100,1) primary key Not Null,
Username varchar(30),
Password varchar(20),
Email varchar(50),
First_Name varchar(30),
Last_Name varchar(30),
Date_of_birth date,
Profile_picture varchar(30),
)

Insert INTO Users (Username, Password, Email, First_name, Last_name, Date_of_birth, Profile_picture)
values ('user1', 'password1', 'user1@email.com', 'John', 'Doe', '1990-01-01', 'profile_picture_url1')

Insert INTO Users (Username, Password, Email, First_name, Last_name, Date_of_birth, Profile_picture)
values ('user2', 'password2', 'user2@email.com', 'Jane', 'Smith', '1995-05-15', 'profile_picture_url2')

Insert INTO Users (Username, Password, Email, First_name, Last_name, Date_of_birth, Profile_picture)
values ('user3', 'password3', 'user3@email.com', 'Michael', 'Johnson', '1988-11-30', 'profile_picture_url3')

Insert INTO Users (Username, Password, Email, First_name, Last_name, Date_of_birth, Profile_picture)
values ('user4', 'password4', 'user4@email.com', 'Emily', 'Brown', '1987-07-20', 'profile_picture_url4')

select*from Users


create table Gallery(
GalleryID int identity(1,1) primary key Not Null,
Name varchar(30),
Description text,
Location varchar(50),
Curator varchar(30),
Opening_hours varchar(30),
ArtistID int,
Foreign key (ArtistId) references Artist(ArtistID))

insert into gallery (name, description, location, curator, opening_hours, artistid)
values ('Gallery A', 'Contemporary art gallery', 'New York', 'John Smith', '10:00 AM - 6:00 PM', 1)

insert into gallery (name, description, location, curator, opening_hours, artistid)
values ('Gallery B', 'Modern art museum', 'London', 'Emily Johnson', '9:00 AM - 5:00 PM', 2)

insert into gallery (name, description, location, curator, opening_hours, artistid)
values ('Gallery C', 'Classic art exhibition', 'Paris', 'Michael Brown', '11:00 AM - 7:00 PM', 3)

insert into gallery (name, description, location, curator, opening_hours, artistid)
values ('Gallery D', 'Photography gallery', 'Tokyo', 'Sarah Lee', '12:00 PM - 8:00 PM', 4)

select*from Gallery


create table User_Favourite_Artwork(
UserID int,
ArtworkID int,
Primary key(UserID,ArtworkID),
Foreign key (UserID) references Users(UserID),
Foreign key (ArtworkID) references Artwork(ArtworkID))

insert into User_favourite_artwork (userid, artworkid) values (100, 1);
insert into User_favourite_artwork (userid, artworkid) values (101, 2);
insert into User_favourite_artwork (userid, artworkid) values (102, 3);
insert into User_favourite_artwork (userid, artworkid) values (103, 4);

select* from User_Favourite_Artwork


create table Artwork_Gallery(
ArtworkID int,
GalleryID int,
Primary key(ArtworkID,GalleryID),
Foreign key (ArtworkID) references Artwork(ArtworkID),
Foreign key (GalleryID) references Gallery(GalleryID))

insert into artwork_gallery (artworkid, galleryid) values (1, 1);
insert into artwork_gallery (artworkid, galleryid) values (2, 2);
insert into artwork_gallery (artworkid, galleryid) values (3, 3);
insert into artwork_gallery (artworkid, galleryid) values (4, 4);

select * from Artwork_Gallery



--@block 
CREATE TABLE USERS(
    userid INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(45),
    email VARCHAR(45),
    pass VARCHAR(200),
    nam VARCHAR(45),
    coverPic VARCHAR(100),
    pfp VARCHAR(100),
    city VARCHAR(45),
    website VARCHAR(45)
);

--@block
CREATE TABLE posts(
    id INT,
    descR VARCHAR(255),
    img VARCHAR(100),
    userId INT,
    PRIMARY KEY(id),
    FOREIGN KEY (userId) REFERENCES users(id)
);

--@block
ALTER TABLE posts
ADD CONSTRAINT
FOREIGN KEY(userId) REFERENCES users(id)
ON DELETE CASCADE;

--@block
CREATE TABLE comments(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    descr VARCHAR(200) NOT NULL,
    createdAt DATETIME,
    postid int,
    userid int,
    FOREIGN KEY(userid) REFERENCES users(id),
    FOREIGN KEY(postid) REFERENCES posts(id),
    PRIMARY KEY(id)
);
-- create table

CREATE TABLE users(
 u_id		INTEGER NOT NULL PRIMARY KEY,
 u_username	VARCHAR(30) NOT NULL,
 u_email	VARCHAR(200) NOT NULL,
 u_pass		VARCHAR(50),
 u_name		VARCHAR(100),
 u_role		VARCHAR(10) NOT NULL,
 created_at 	TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
 updated_at 	TIMESTAMP NULL DEFAULT NULL
);

CREATE TABLE posts (
 p_id		INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 p_userid	INTEGER DEFAULT NULL,
 p_judul	VARCHAR(255) NOT NULL,
 slug		VARCHAR(255) NOT NULL UNIQUE,
 p_views 	INTEGER NOT NULL DEFAULT '0',
 p_image	VARCHAR(255) NOT NULL,
 p_body		TEXT NOT NULL,
 -- published	tinyint(1) NOT NULL,
 created_at	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 updated_at	TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  FOREIGN KEY (p_userid) REFERENCES users (u_id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- input data

INSERT INTO users VALUES (1, 'rosierose', 'rosiee4@gmail.com', 'imbringinsb55', 'Rose', 'User', NOW(), NOW());
INSERT INTO users VALUES (2, 'chipsndip', 'dipsdips@gmail.com', 'chips994', 'Heine', 'User', NOW(), NOW());
INSERT INTO users VALUES (3, 'ayakamae', 'ayaya@gmail.com', 'raven55m', 'Aya', 'User', NOW(), NOW());
INSERT INTO users VALUES (4, 'invisiblemod', 'ireneya@gmail.com', 'modpower7721', 'Irene', 'Admin', NOW(), NOW());
INSERT INTO users VALUES (5, 'liisushiba', 'lisamirihs@gmail.com', 'shirishiri33', 'Lisa', 'User', NOW(), NOW());

INSERT INTO posts VALUES (1, 3, 'The Most Important Skill Nobody Taught You', 'the-most-important-skill-nobody-73846', 3, 'people.jpg', 'The more the world advances, the more stimulation it will provide as an incentive for us to get outside of our own mind to engage with it.\n Everything that has done so much to connect us has simultaneously isolated us. We are so busy being distracted that we are forgetting to tend to ourselves, which is consequently making us feel more and more alone. The oldest philosophical wisdom in the world has one piece of advice for us: know yourself.', NOW(), NOW());
INSERT INTO posts VALUES (2, 2, 'Something is Wrong on the Internet', 'tsomething-is-wrong-on-the-internet-92347', 9, 'internet.jpg', 'Someone or something or some combination of people and things is using YouTube to systematically frighten, traumatise, and abuse children, automatically and at scale, and it forces me to question my own beliefs about the internet, at every level. Much of what I am going to describe next has been covered elsewhere, although none of the mainstream coverage I’ve seen has really grasped the implications of what seems to be occurring.', NOW(), NOW());
INSERT INTO posts VALUES (3, 5, 'Laziness does not Exist', 'laziness-does-not-exist-83546', 2, 'sleep.jpg', 'People do not choose to fail or disappoint. No one wants to feel incapable, apathetic, or ineffective. If you look at a person’s action (or inaction) and see only laziness, you are missing key details. There is always an explanation. There are always barriers. Just because you can’t see them, or don’t view them as legitimate, doesn’t mean they’re not there. Look harder.', NOW(), NOW());

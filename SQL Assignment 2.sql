DROP TABLE IF EXISTS reviewers;
DROP TABLE IF EXISTS videos;

CREATE TABLE videos 
(
video_id INT PRIMARY KEY,
 Video_title VARCHAR(100),
 length TIME,
 url VARCHAR(100)
);

INSERT INTO videos
  (video_id, video_title, length, url)
  VALUES (1, 'Get web page data into Excel using VBA', '00:15:00',
 'http://www.youtube.com/watch?v=cSoRVZKRkvY');

INSERT INTO videos
  (video_id, video_title, length, url)
  VALUES (2, 'Web data tutorial: Retrieving and displaying XML', '00:13:00',
 'http://www.youtube.com/watch?v=ppzYGd0wi_c');

INSERT INTO videos
  (video_id, video_title, length, url)
  VALUES (3, 'PHP Tutorials: jQuery: Get Data from MySQL Database', '00:17:00',
 'http://www.youtube.com/watch?v=Yb3c-HljFro');


INSERT INTO videos
  (video_id, video_title, length, url)
  VALUES (4, 'Importing Data from Files Programmatically - MATLAB', '00:04:00',
 'http://www.mathworks.com/videos/importing-data-from-files-programmatically-71077.html');
INSERT INTO videos
  (video_id, video_title, length, url)
  VALUES (5, 'Scraping Web Page Data Automatically with Excel VBA', '00:24:00',
 'http://www.youtube.com/watch?v=uWoxx235fkc');



SELECT * FROM videos;




CREATE TABLE reviewers
 (
review_id INT PRIMARY KEY,
 user_name VARCHAR(100),
 rating INT,
 review VARCHAR(100),
 video_id INT NOT NULL REFERENCES videos(video_id)
);

INSERT INTO reviewers
  (review_id, user_name, rating, review, video_id)
 VALUES (1, 'Mike', 5, 'very helpful',1);

INSERT INTO reviewers
  (review_id, user_name, rating, review, video_id)
 VALUES (2, 'Lisa', 4, 'It worked',2);

INSERT INTO reviewers
  (review_id, user_name, rating, review, video_id)
 VALUES(3, 'Alan', 4, 'Accomplished my task', 3);

INSERT INTO reviewers
  (review_id, user_name, rating, review, video_id)
  VALUES(4, 'Jane', 3, 'Not intuitive', 4);

INSERT INTO reviewers
  (review_id, user_name, rating, review, video_id)
  VALUES(5, 'Bill', 4, 'Excellent', 5);



SELECT * FROM reviewers;




SELECT video_title, length, url,
 user_name, rating, review FROM videos v
LEFT JOIN reviewers r
ON v.video_id = r.video_id
 ORDER BY video_title;
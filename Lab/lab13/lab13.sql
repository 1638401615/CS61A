.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color = "blue" and pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color = "blue" and pet = "dog";


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color from students as a, students as b where a.pet = b.pet and a.song = b.song and a.time < b.time;


CREATE TABLE sevens AS
  SELECT seven from students as a, numbers as b where a.number = 7 and a.time = b.time and b.'7' = "True";


CREATE TABLE favpets AS
  SELECT pet, count(pet) from students group by pet order by count(pet) desc limit 10;


CREATE TABLE dog AS
  SELECT pet, count(pet) from students where pet = "dog";


CREATE TABLE bluedog_agg AS
  SELECT song, count(song) from bluedog_songs group by song order by count(song) desc;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, count(*) from students  where seven = '7' group by instructor;


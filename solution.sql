 SELECT * 
  FROM crime_scene_report
  where type = 'murder'
and city = 'SQL City'

-- """
-- |20180115|murder|Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".|SQL City|
-- """

 SELECT * 
  FROM person
where address_street_name = 'Northwestern Dr' or address_street_name = 'Franklin Ave'

SELECT * 
  FROM person
where address_street_name = 'Northwestern Dr'
order by address_number;

-- """
-- |14887|Morty Schapiro|118009|4919|Northwestern Dr|111564949|
-- """

SELECT * 
  FROM person
where address_street_name = 'Franklin Ave'

-- """
-- |16371|Annabel Miller|490173|103|Franklin Ave|318771143|
-- """

 SELECT * 
  FROM person
 where name = 'Morty Schapiro' or name = 'Annabel Miller'

-- """
-- |14887|Morty Schapiro|118009|4919|Northwestern Dr|111564949|
-- |16371|Annabel Miller|490173|103|Franklin Ave|318771143|
-- """

SELECT * 
  FROM interview
 where person_id = 14887 or person_id = 16371

-- """
-- |14887|I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".|
-- |16371|I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.|
-- """

SELECT * 
  FROM get_fit_now_member
  where membership_status = 'gold'

-- """
-- |48Z7A|28819|Joe Germuska|20160305|gold|
-- """

 SELECT * 
  FROM get_fit_now_check_in
  where membership_id = '48Z7A'

-- """
-- |48Z7A|20180109|1600|1730|
-- """
-- ***wrong answer***

SELECT * 
  FROM get_fit_now_member
 where id like '48Z%'

-- """
-- |48Z38|49550|Tomas Baisley|20170203|silver|
-- |48Z7A|28819|Joe Germuska|20160305|gold|
-- |48Z55|67318|Jeremy Bowers|20160101|gold|
-- """

INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;
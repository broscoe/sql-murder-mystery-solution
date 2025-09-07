select * from crime_scene where location="Coral Bay Marina";

--43	19860814	Coral Bay Marina	The body of an unidentified 
--man was found near the docks. Two people were seen nearby: 
--one who lives on 300ish "Ocean Drive" and another whose first
--name ends with "ul" and his last name ends with "ez"

select * from person where address like "3__ Ocean Drive%";
-- 101	Carlos Mendez	Los Ojos	Fisherman	369 Ocean Drive

select * from person where name like "%ul %ez";
-- 102	Raul Gutierrez	The Cobra	Nightclub Owner	45 Sunset Ave

select * from interviews where person_id = 101 or  person_id = 102;
-- 101	101	I saw someone check into a hotel on August 13. The guy looked nervous.
-- 103	102	I heard someone checked into a hotel with "Sunset" in the name.

select * from hotel_checkins join surveillance_records on hotel_checkins.person_id = surveillance_records.person_id
  join confessions on hotel_checkins.person_id = confessions.person_id
  join person on hotel_checkins.person_id = person.id
  where hotel_checkins.hotel_name like "%Sunset%"
  and hotel_checkins.check_in_date = "19860813"
  and surveillance_records.suspicious_activity is not null;

-- 55	8	Sunset Palm Resort	19860813	8	8	2	Left suddenly at 3 AM	73	8	Alright! I did it. I was paid to make sure he never left the marina alive.	8	Thomas Brown	The Fox	Dock Worker	234 Port Street
